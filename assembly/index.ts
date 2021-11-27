import { context, ContractPromiseBatch, ContractPromise, storage, PersistentUnorderedMap, logging, u128, ContractPromiseResult } from 'near-sdk-as';
import { JSON } from 'assemblyscript-json';
import { Buffer } from 'assemblyscript-json/util';
import { ContractCall, Job } from './model';
import { StorageCostUtils, ContractCallUtils } from './utils';
// TODO: have a look at helpful stuff from here
import {util, base64} from 'near-sdk-core';

const admins = new PersistentUnorderedMap<string, boolean>('a');
const tokens = new PersistentUnorderedMap<string, boolean>('b');
const jobs = new PersistentUnorderedMap<i32,Job>('c');
const INIT_KEY: string = "init";
const JOB_BOND_KEY: string = "job_bond";
const JOB_ID_KEY: string = "next_job_id";
const CRONCAT_MANAGER_ADDRESS = "croncat_manager_address";
const storageCosts = new StorageCostUtils();
const contractCallsUtils = new ContractCallUtils();
const ONE_TGAS: u64 = 1000000000000;

// contract initialization steps:
// call init() to add first admins
// admins add whitelisted tokens
// admins specify job_bond
// admins specify croncat manager contract

export function multicall(schedules: ContractCall[][]): void {
  _is_admin(context.predecessor);
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

  assert(u128.le(totalDeposits, u128.sub(context.accountBalance, storageCosts.get_min_storage_balance())), "funds insufficient for attached deposits");

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

/**
 * following functions can be used in callback:
 * 1- multicall()
 * 2- TODO: job_activate() 
 * 
 * @param sender_id 
 * @param amount 
 * @param msg 
 * @returns 
 */
export function ft_on_transfer(sender_id: string, amount: u128, msg: string): u128 {
  assert(tokens.contains(context.predecessor), `${context.predecessor} needs to be an admin`);
  _is_admin(sender_id);

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
  _is_admin(context.predecessor);
  if (amount == u128.Zero) {
    // calculate amount reserved for storage
    const minStorageAmt: u128 = storageCosts.get_min_storage_balance();
    amount = u128.sub(context.accountBalance, minStorageAmt);
  }
  ContractPromiseBatch.create(account_id).transfer(amount);
}

export function admins_add(account_ids: string[]): void {
  _is_admin(context.predecessor);
  for (let i = 0; i < account_ids.length; i++)
    admins.set(account_ids[i], true);
}

export function admins_remove(account_ids: string[]): void {
  _is_admin(context.predecessor);
  for (let i = 0; i < account_ids.length; i++)
    admins.delete(account_ids[i]);
}

export function get_admins(start: i32 = 0, end: i32 = admins.length): string[] {
  return admins.keys(start, end);
}

export function tokens_add(addresses: string[]): void {
  _is_admin(context.predecessor);
  for (let i = 0; i < addresses.length; i++)
    tokens.set(addresses[i], true);
}

export function tokens_remove(addresses: string[]): void {
  _is_admin(context.predecessor);
  for (let i = 0; i < addresses.length; i++)
    tokens.delete(addresses[i]);
}

export function get_tokens(start: i32 = 0, end: i32 = tokens.length): string[] {
  return tokens.keys(start, end);
}

export function init(account_ids: string[]): void {
  assert(storage.get<string>(INIT_KEY) == null, "Already initialized");

  // add contract address as admin to allow nested calls
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
  _is_admin(context.predecessor);

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


// Job functions

/**
 * admins can set NEAR amount required to register a job
 * since anyone is able to submit jobs, bond is necessary to protecc from spam
 * 
 * @param amount
 */
export function job_set_bond (amount: u128): void {
  _is_admin(context.predecessor);
  storage.set<string>(JOB_BOND_KEY, amount.toString());  
}

export function job_get_bond (): u128 | null {
  let jobBondOrNull: string | null = storage.get<string>(JOB_BOND_KEY);
  return (jobBondOrNull == null) ? null : u128.fromString(<string> jobBondOrNull);
}

/**
 * create a croncat task for a job and set it to active
 * 
 * @param job_id 
 */
export function job_activate (job_id: i32): void {
  _is_admin(context.predecessor);

  let aJobOrNull:Job | null = jobs.get(job_id);
  assert(aJobOrNull != null, `job ${job_id} not found`);
  let aJob:Job = <Job> aJobOrNull;
  // does job have a croncat task?
  if (aJob.croncat_hash != '') {
    logging.log(`job ${aJob.id} already has croncat task ${aJob.croncat_hash}`);
  } else {
    // TODO clean this
    let buffBuffer: Uint8Array = Buffer.fromString(`{"job_id":${aJob.id}}`);

    // create a croncat task
    ContractPromise.create(
      storage.getSome<string>(CRONCAT_MANAGER_ADDRESS),
      'create_task',
      Buffer.fromString(`{"contract_id":"${context.contractName}","function_id":"job_trigger","cadence":"* * * * * *","recurring":false,"deposit":"0","gas":${40 * ONE_TGAS},"arguments":"${base64.encode(buffBuffer)}"}`),
      30 * ONE_TGAS,
      u128.fromString("100000000000000000000000")// TOOD: add total_amount
    ).then(
      context.contractName,
      'create_task_callback',
      Buffer.fromString(`{"job_id":${aJob.id}}`),
      7 * ONE_TGAS,
      u128.Zero
    );

  }
  // reimburse bond on first time activation
  if (u128.gt(aJob.bond, u128.Zero)) {
    assert(u128.le(aJob.bond, u128.sub(context.accountBalance, storageCosts.get_min_storage_balance())), "funds insufficient to repay bond");
    const toReimburse: u128 = aJob.bond;
    // setting bond to 0 indicates it's reimbursed
    aJob.bond = u128.Zero;
    ContractPromiseBatch.create(aJob.creator).transfer(toReimburse);
  }
  // is job already active?
  if (aJob.is_active == true) {
    logging.log(`job ${aJob.id} already active`);
  } else {
    aJob.is_active = true;
    jobs.set(aJob.id, aJob);
  }
}

export function create_task_callback (job_id: i32): void {
  _is_private();

  let aJobOrNull:Job | null = jobs.get(job_id);
  assert(aJobOrNull != null, `job ${job_id} not found`);
  let aJob:Job = <Job> aJobOrNull;
  if (aJob.croncat_hash == '') {
    // get task hash from promise results
    let result = ContractPromise.getResults()[0];
    if (result.succeeded) {
      aJob.croncat_hash = result.decode<string>();
    } else {
      // deactivate job on errors
      aJob.is_active = false;
    }
    // persist changes
    jobs.set(aJob.id, aJob);
  }
}

/**
 * resume a job so it's ready for execution
 * first time a job is set to running, the bond is reimbursed
 * 
 * @param job_ids 
 * @param running_state 
 */
export function jobs_resume (job_ids: i32[]): void {
  _is_admin(context.predecessor);

  for (let i = 0; i < job_ids.length; i++) {
    let aJobOrNull: Job | null = jobs.get(job_ids[i]);
    if (aJobOrNull != null) {
      let aJob: Job = <Job> aJobOrNull;
      // is job already active?
      if (aJob.is_active == true) {
        logging.log(`job ${aJob.id} already active`);
        continue;
      }
      aJob.is_active = true;
      jobs.set(aJob.id, aJob);
    } else {
      logging.log(`job ${job_ids[i]} not found`);
    }
  }
}

/**
 * pause a job so it cannot be triggered
 * 
 * @param job_ids 
 * @param running_state 
 */
 export function jobs_pause (job_ids: i32[]): void {
  _is_admin(context.predecessor);

  for (let i = 0; i < job_ids.length; i++) {
    let aJobOrNull: Job | null = jobs.get(job_ids[i]);
    if (aJobOrNull != null) {
      let aJob: Job = <Job> aJobOrNull;
      // was the job aleady deactivated?
      if (aJob.is_active == false) {
        logging.log(`job ${aJob.id} already not active`);
        continue;
      }
      aJob.is_active = false;
      jobs.set(aJob.id, aJob);
    } else {
      logging.log(`job ${job_ids[i]} not found`);
    }
  }
}

/**
 * register a new job.
 * First: a job is created, anyone can do this
 * Second: admin activates the job
 * third: a job can be triggered by CronCat
 * 
 * @param job_schedules 
 * @param job_runs_max 
 * @param job_start_at 
 * @returns 
 */
export function job_add (
    job_schedules: ContractCall[][],
    job_runs_max: u64,
    job_start_at: u64 = context.blockTimestamp
  ): i32 
  {
  // anyone can add jobs if they pay required bond
  let bondAmountOrNull: string | null = storage.get<string>(JOB_BOND_KEY);
  assert(bondAmountOrNull != null, "current job bond amount is null");
  let bondAmount: u128 = u128.fromString(<string> bondAmountOrNull);

  assert(u128.ge(context.attachedDeposit, bondAmount), "attached deposit must be greater or equal than the required bond");
  let jobIdOrNull: string | null =  storage.get<string>(JOB_ID_KEY);
  let newJob: Job = {
    id: (jobIdOrNull == null) ? <i32> 0 : <i32> parseInt(<string> jobIdOrNull),
    creator: context.predecessor,
    bond: bondAmount,
    start_at: job_start_at,
    runs_max: job_runs_max,
    runs_current: 0,
    is_active: false,
    schedules: job_schedules
  };
  storage.set<string>(JOB_ID_KEY, (newJob.id + 1).toString());
  jobs.set(newJob.id, newJob);

  return newJob.id;
}

/**
 * multicall jobs can take lots of memory, thus locking part of the
 * contract funds. Admins can free up space by deleting some jobs.
 * 
 * @param job_ids 
 */
export function jobs_remove (job_ids: i32[]): void {
  _is_admin(context.predecessor);
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

/**
 * trigger execution of an activated job
 * 
 * @param job_id 
 */
export function job_trigger (job_id: i32): void {
  _is_croncat_manager(context.predecessor);

  let aJobOrNull: Job | null = jobs.get(job_id);
  assert(aJobOrNull != null, `job ${job_id} not found`);
  let aJob: Job = <Job> aJobOrNull;
  assert(aJob.runs_max > aJob.runs_current, `cannot run job ${job_id} more than ${aJob.runs_max} times`);
  assert(aJob.is_active == true, `job ${job_id} must be activated`);
  assert(context.blockTimestamp >= aJob.start_at, "pleae wait for job start time");
  _internal_multicall(aJob.schedules);
  // increment runs after multicall, since it might revert
  aJob.runs_current += 1;
  jobs.set(aJob.id, aJob);
}

export function set_croncat_manager (address: string): void {
  _is_admin(context.predecessor);
  storage.set(CRONCAT_MANAGER_ADDRESS, address);
}

// TODO: automatically register CronCat jobs
// integrate Croncat CRUD operations
// TODO: make a callback to make sure job was registered after first enable.
// TODO: add missing attributes to JOB class
// TODO: add Croncat class



// access modifiers

/**
 * panick if account_id is not admin
 * 
 * @param account_id 
 */
function _is_admin(account_id: string): void {
  assert(
    admins.contains(account_id),
    `${account_id} must be admin to call this function`
  );
}

/**
 * panick if account_id isn't the croncat manager contract
 * 
 * @param account_id 
 */
function _is_croncat_manager(account_id: string): void {
  assert(
    storage.getSome<string>(CRONCAT_MANAGER_ADDRESS) == account_id,
    `${account_id} must be croncat manager to call this function`
  );
}

/**
 * panick if caller isn't this contract's address
 * 
 * @param account_id 
 */
 function _is_private(): void {
  assert(
    context.contractName == context.predecessor,
    `Method is private`
  );
}
