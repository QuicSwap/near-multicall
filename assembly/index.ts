import { context, ContractPromiseBatch, ContractPromise, storage, PersistentUnorderedMap, u128 } from 'near-sdk-as';
import { JSON } from 'assemblyscript-json';
import { Buffer } from 'assemblyscript-json/util';
import { ContractCall, Job } from './model';
import { StorageCostUtils, ContractCallUtils } from './utils';

const admins = new PersistentUnorderedMap<string, boolean>('a');
const tokens = new PersistentUnorderedMap<string, boolean>('b');
const jobs = new PersistentUnorderedMap<i32, Job>('c');
const INIT_KEY: string = "init";
const JOB_BOND_KEY: string = "job_bond";
const JOB_ID_KEY: string = "next_job_id";
const storageCosts = new StorageCostUtils();
const contractCallsUtils = new ContractCallUtils();

export function multicall(schedules: ContractCall[][]): void {
  _is_whitelisted(context.predecessor);
  _internal_multicall(schedules);
}

function _internal_multicall(schedules: ContractCall[][]): void {
  assert(schedules.length != 0, "schedules cannot be empty");

  // group 1-element schedules with same target address into batch calls for gas efficiency
  const batches = new Map<string, ContractCall[]>();

  // check for sufficient funds (Sum of all first sequential calls <= account balance minus funds reserved for storage)
  let totalDeposits = u128.Zero;
  for (let i = schedules.length - 1; i >= 0; i--) {
    // cannot have empty schedule
    assert(schedules[i].length != 0, `schedules[${i}] cannot be empty`);
    totalDeposits = u128.add(totalDeposits, schedules[i][0].depo);

    if (schedules[i].length == 1) {
      const curr_call: ContractCall = schedules[i][0];
      if (batches.has(curr_call.addr)) {
        const curr_batch: ContractCall[] = batches.get(curr_call.addr);
        curr_batch.push(curr_call);
        batches.set(curr_call.addr, curr_batch);
      } else {
        batches.set(curr_call.addr, [curr_call])
      }
      // do not execute batches with regular schedules
      schedules.splice(i, 1);
    }
  }

  assert(u128.le(totalDeposits, u128.sub(context.accountBalance, get_min_storage_balance())), "insufficient funds");

  const batchGroups: ContractCall[][] = batches.values();

  // execute batches
  for (let i = 0; i < batches.size; i++) {

    if (batchGroups[i].length <= 1) {
      schedules.push(batchGroups[i]);
      continue;
    }

    // initial promise
    const last: i32 = batchGroups[i].length - 1;
    let promise: ContractPromiseBatch = ContractPromiseBatch.create(batchGroups[i][last].addr).function_call(
      batchGroups[i][last].func,
      Buffer.fromString(batchGroups[i][last].args),
      batchGroups[i][last].depo,
      batchGroups[i][last].gas
    );

    // iterativly add function calls to the batch
    for (let j = last - 1; j >= 0; j--) {
      promise = promise.function_call(
        batchGroups[i][j].func,
        Buffer.fromString(batchGroups[i][j].args.replaceAll("\\\"", "\"").replaceAll("\\\\","\\")),
        batchGroups[i][j].depo,
        batchGroups[i][j].gas
      );
    }
  }

  // outer loop is parallel
  for (let i = 0; i < schedules.length; i++) {

    // inner loop is sequential
    _sequential(schedules[i]);

  }

}

/**
 * turn an array of contract calls into a promise chain 
 */
function _sequential(schedule: ContractCall[]): void {

  // initial promise
  let promise: ContractPromise = ContractPromise.create(

    schedule[0].addr,
    schedule[0].func,
    Buffer.fromString(schedule[0].args),
    schedule[0].gas,
    schedule[0].depo

  );

  // iterativly add then clause
  for (let i = 1; i < schedule.length; i++) {

    promise = promise.then(

      schedule[i].addr,
      schedule[i].func,
      Buffer.fromString(schedule[i].args.replaceAll("\\\"", "\"").replaceAll("\\\\","\\")),
      schedule[i].gas,
      schedule[i].depo

    );
  }
}

export function ft_on_transfer(sender_id: string, amount: u128, msg: string): u128 {
  assert(tokens.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");
  _is_whitelisted(sender_id);

  let jsonObj: JSON.Obj = <JSON.Obj>(JSON.parse(msg));
  let funcToCallOrNull: JSON.Str | null = jsonObj.getString("function");
  if (funcToCallOrNull != null) {
    let funcToCall: string = funcToCallOrNull.valueOf();
    // decode the respective function arguments
    if (funcToCall == "multicall") {
      let argsOrNull: JSON.Obj | null = jsonObj.getObj("args");
      assert(argsOrNull != null, "error parsing multicall arguments");
      // parse multicall args
      let multicallArgs: ContractCall[][] = [];
      let args: JSON.Obj = <JSON.Obj> argsOrNull;
      let schedulesArrOrNull: JSON.Arr | null = args.getArr("schedules");
      if (schedulesArrOrNull != null) {
        let schedulesArr: JSON.Value[] = schedulesArrOrNull.valueOf();
        for (let i = 0; i < schedulesArr.length; i++) {
          multicallArgs[i] = [];
          let currentSchedule: JSON.Value[] = (<JSON.Arr> schedulesArr[i]).valueOf();
          for (let j = 0; j < currentSchedule.length; j++) {
            const parsedCallOrNull: ContractCall | null = contractCallsUtils.fromJsonObj(<JSON.Obj> currentSchedule[j]);
            assert(parsedCallOrNull != null, `could not parse contract call ${j.toString()} of schedule ${i.toString()}`);
            const parsedCall = <ContractCall> parsedCallOrNull;
            multicallArgs[i].push(parsedCall);
          }
        }
      }
      // call multicall
      _internal_multicall(multicallArgs);
    }
  }
  
  return u128.Zero;
}

/**
 * recover near funds from the contract.
 * If amount is 0 then empty all contract funds. 
 */
export function recover_near(account_id: string, amount: u128 = u128.Zero): void {
  _is_whitelisted(context.predecessor);
  if (amount == u128.Zero) {
    // calculate amount reserved for storage
    const minStorageAmt: u128 = get_min_storage_balance();
    amount = u128.sub(context.accountBalance, minStorageAmt);
  }
  ContractPromiseBatch.create(account_id).transfer(amount);
}

export function get_min_storage_balance () : u128 {
  // calculate amount reserved for storage
  const storageLockedAmt: u128 = u128.mul(storageCosts.storage_byte_cost() , u128.fromU64(context.storageUsage));
  return storageLockedAmt;
}

export function admins_add(account_ids: string[]): void {
  _is_whitelisted(context.predecessor);
  for (let i = 0; i < account_ids.length; i++)
    admins.set(account_ids[i], true);
}

export function admins_remove(account_ids: string[]): void {
  _is_whitelisted(context.predecessor);
  for (let i = 0; i < account_ids.length; i++)
    admins.delete(account_ids[i]);
}

export function get_admins(start: i32 = 0, end: i32 = admins.length): string[] {
  return admins.keys(start, end);
}

export function tokens_add(addresses: string[]): void {
  _is_whitelisted(context.predecessor);
  for (let i = 0; i < addresses.length; i++)
    tokens.set(addresses[i], true);
}

export function tokens_remove(addresses: string[]): void {
  _is_whitelisted(context.predecessor);
  for (let i = 0; i < addresses.length; i++)
    tokens.delete(addresses[i]);
}

export function get_tokens(start: i32 = 0, end: i32 = tokens.length): string[] {
  return tokens.keys(start, end);
}

export function init(account_ids: string[]): void {
  assert(storage.get<string>(INIT_KEY) == null, "Already initialized");

  // whitelist contract address to allow nested calls
  admins.set(context.contractName, true);
  for (let i = 0; i < account_ids.length; i++) {
    admins.set(account_ids[i], true);
  }
  storage.set(INIT_KEY, "done");
}


/**
 * helper to withdraw from Ref-finance to a given account
 */
export function withdraw_from_ref(ref_address: string, tokens: string[], receiver_id: string, withdrawal_gas: u64, token_transfer_gas: u64): void {
  _is_whitelisted(context.predecessor);

  // Get all results
  let results = ContractPromise.getResults();
  let get_deposits_results = results[results.length - 1];
  // Verifying the remote contract call succeeded.
  if (get_deposits_results.succeeded) {
    // Decoding data from the bytes buffer into the local object.
    let data: JSON.Obj = <JSON.Obj>(JSON.parse(get_deposits_results.buffer));

    for (let i = 0; i < tokens.length; i++) {
      let amountOrNull: JSON.Str | null = data.getString(tokens[i]); // This will return a JSON.Str or null
      if (amountOrNull != null) {
        // use .valueOf() to turn the high level JSON.Str type into a string
        let amount: u128 =  u128.fromString(<string>amountOrNull.valueOf());

        if (u128.gt(amount, u128.Zero)) {
          ContractPromise.create(
            ref_address,
            "withdraw",
            Buffer.fromString(`{"token_id":"${tokens[i]}","amount":"${amount}"}`),
            withdrawal_gas,
            u128.fromString('1')
          ).then(
            tokens[i],
            "ft_transfer",
            Buffer.fromString(`{"receiver_id": "${receiver_id}", "amount": "${amount}"}`),
            token_transfer_gas,
            u128.fromString('1')
          );
        }
      }
    }
  }

}

function _is_whitelisted(account_id: string): void {
  assert(admins.contains(account_id), account_id + " needs to be whitelisted to call this function");
}


// Job functions

/**
 * admins can set NEAR amount required to register a job
 * since anyone is able to submit jobs, bond is necessary to protecc from spam
 * 
 * @param amount
 */
export function job_set_bond (amount: u128): void {
  _is_whitelisted(context.predecessor);
  storage.set<string>(JOB_BOND_KEY, amount.toString());  
}

export function job_get_bond (): u128 | null {
  let jobBondOrNull: string | null = storage.get<string>(JOB_BOND_KEY);
  return (jobBondOrNull == null) ? null : u128.fromString(<string> jobBondOrNull);
}

/**
 * change a job's running state.
 * true means active. False means inactive
 * 
 * @param job_id 
 * @param running_state 
 */

// TODO: pay back the bond if turned on the first time.
// after repaying set the job's bond to zero
export function job_set_running_state (job_id: i32, running_state: boolean): void {
  _is_whitelisted(context.predecessor);

  // check that u can pay
  // set bond to zero
  // send money
  let aJobOrNull: Job | null = jobs.get(job_id);
  if (aJobOrNull != null) {
    let aJob: Job = <Job> aJobOrNull;
    aJob.is_active = running_state;
  }
}

/**
 * register a new job.
 * First: a job is created, anyone can do this after paying a bond
 * Second: admin sets job state to enabled
 * third: a job can be triggered by anyone
 * 
 */
// TODO
export function job_add (
    job_schedules: ContractCall[][],
    job_interval: u64,
    job_runs_max: u64,
    job_start_at: u64 = context.blockTimestamp
  ): i32 
  {
  // anyone can call this
  let bondAmountOrNull: string | null = storage.get<string>(JOB_BOND_KEY);
  assert(bondAmountOrNull != null, "current job bond amount is null");
  let bondAmount: u128 = u128.fromString(<string> bondAmountOrNull);

  // TODO: calculate non-locked amount, use that instead of attached deposit
  assert(u128.ge(context.attachedDeposit, bondAmount), "attached deposit must be greater or equal than the required bond");
  let jobIdOrNull: string | null =  storage.get<string>(JOB_ID_KEY);
  let newJob: Job = {
    job_id: (jobIdOrNull == null) ? <i32> 0 : <i32> parseInt(<string> jobIdOrNull),
    creator: context.predecessor,
    bond: bondAmount,
    start_at: job_start_at,
    runs_interval: job_interval,
    runs_max: job_runs_max,
    runs_current: 0,
    is_active: false,
    schedules: job_schedules
  };
  storage.set<string>(JOB_ID_KEY, (newJob.job_id + 1).toString());

  return newJob.job_id;
}

/**
 * multicall jobs can take lots of memory, thus locking part of the
 * contract funds. Admins can free up space by deleting some jobs.
 * 
 * @param job_ids 
 */
export function job_remove (job_ids: i32[]): void {
  _is_whitelisted(context.predecessor);
  for (let i = 0; i < job_ids.length; i++)
    jobs.delete(job_ids[i]);
}

/**
 * list all registered jobs
 * 
 * @param start 
 * @param end 
 */
export function get_jobs(start: i32 = 0, end: i32 = jobs.length): Job[] {
  return jobs.values(start, end);
}

// TODO
export function job_trigger (job_id: i32): void {
  // anyone
}
