import { context, ContractPromiseBatch, ContractPromise, storage, PersistentUnorderedMap, logging, u128, base64, util } from 'near-sdk-as';
import { JSON } from 'assemblyscript-json';
import { ContractCall, Job, ftOnTransferMulticallArgs } from './model';
import { StorageCostUtils, ContractCallUtils } from './utils';


const admins = new PersistentUnorderedMap<string, boolean>('a');
const tokens = new PersistentUnorderedMap<string, boolean>('b');
const jobs = new PersistentUnorderedMap<i32,Job>('c');
const KEY_INIT: string = "d";
const KEY_JOB_BOND: string = "e";
const KEY_JOB_COUNT: string = "f";
const KEY_CRONCAT_MANAGER_ADDRESS: string = "g";
const storageCosts = new StorageCostUtils();
const contractCallsUtils = new ContractCallUtils();
const ONE_TGAS: u64 = 1000000000000;


// contract initialization steps:
// call init() to add first admins
// admins add whitelisted tokens


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
      base64.decode(batchGroups[i][last].args),
      batchGroups[i][last].depo,
      batchGroups[i][last].gas
    );

    // iterativly add function calls to the batch
    for (let j = last - 1; j >= 0; j--) {
      promise = promise.function_call(
        batchGroups[i][j].func,
        base64.decode(batchGroups[i][j].args),
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
    base64.decode(schedule[0].args),
    schedule[0].gas,
    schedule[0].depo

  );

  // iterativly add then clause
  for (let i = 1; i < schedule.length; i++) {

    promise = promise.then(

      schedule[i].addr,
      schedule[i].func,
      base64.decode(schedule[i].args),
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
  assert(tokens.contains(context.predecessor), `${context.predecessor} not on token whitelist`);
  _is_admin(sender_id);

  // TODO: can we use util.parseFromString instead of assemblyscript-json ?
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
 * send $NEAR
 * If amount is 0 then empty all contract funds. 
 * 
 * @param account_id 
 * @param amount 
 */
export function near_transfer(account_id: string, amount: u128 = u128.Zero): void {
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

// TODO: only facory contract should have access to init
export function init(admin_accounts: string[], croncat_manager: string, job_bond: u128): void {
  assert(storage.get<string>(KEY_INIT) == null, "Already initialized");

  // add contract address as admin to allow nested calls
  admins.set(context.contractName, true);
  // add rest of admins
  for (let i = 0; i < admin_accounts.length; i++) {
    admins.set(admin_accounts[i], true);
  }
  // set croncat manager address
  storage.set<string>(KEY_CRONCAT_MANAGER_ADDRESS, croncat_manager);
  // set amount for job bond
  storage.set<string>(KEY_JOB_BOND, job_bond.toString()); 

  storage.set(KEY_INIT, "done");
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
            util.stringToBytes(`{"token_id":"${tokens[i]}","amount":"${amount}"}`),
            withdrawal_gas,
            u128.fromString('1')
          ).then(
            tokens[i],
            "ft_transfer",
            util.stringToBytes(`{"receiver_id": "${receiver_id}", "amount": "${amount}"}`),
            token_transfer_gas,
            u128.fromString('1')
          );
        }
      }
    }
  }

}


// Job functions
// 1 - a job is created, anyone can do this
// 2 - admin activates the job
// 3 - jobs can be triggered by CronCat


/**
 * set smart contract address of croncat manager
 * croncat manager has privilege to trigger active jobs
 * 
 * @param address 
 */
export function set_croncat_manager (address: string): void {
  _is_admin(context.predecessor);
  storage.set<string>(KEY_CRONCAT_MANAGER_ADDRESS, address);
}

export function get_croncat_manager (): string {
  return storage.getSome<string>(KEY_CRONCAT_MANAGER_ADDRESS);
}

/**
 * admins can set NEAR amount required to register a job
 * since anyone is able to submit jobs, bond is necessary to protecc from spam
 * 
 * @param amount
 */
export function job_set_bond (amount: u128): void {
  _is_admin(context.predecessor);
  storage.set<string>(KEY_JOB_BOND, amount.toString());  
}

export function job_get_bond (): u128 | null {
  let jobBondOrNull: string | null = storage.get<string>(KEY_JOB_BOND);
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
  // is job already active?
  if (aJob.is_active == true) {
    logging.log(`job ${aJob.id} already active`);
    return;
  }
  // does job have a croncat task?
  if (aJob.croncat_hash != '') {
    logging.log(`job ${aJob.id} already has croncat task ${aJob.croncat_hash}`);
  } else {
    // TODO clean this
    const GAS_JOB_ACTIVATE: u64 = 40 * ONE_TGAS;
    const GAS_CREATE_TASK_CALLBACK: u64 = 15 * ONE_TGAS;
    let croncatTaskArgs: Uint8Array = util.stringToBytes(`{"job_id":${aJob.id}}`);

    // create a croncat task
    ContractPromise.create(
      storage.getSome<string>(KEY_CRONCAT_MANAGER_ADDRESS),
      'create_task',
      util.stringToBytes(
        '{' +
        `"contract_id":"${context.contractName}",` +
        `"function_id":"job_trigger",` +
        `"cadence":"${aJob.cadence}",` +
        `"recurring":${aJob.runs_max > 1 ? true : false},` +
        `"deposit":"${aJob.trigger_deposit}",` +
        `"gas":${aJob.trigger_gas},` +
        `"arguments":"${base64.encode(croncatTaskArgs)}"` +
        '}'
      ),
      context.prepaidGas - GAS_JOB_ACTIVATE,
      aJob.croncat_budget
    ).then(
      context.contractName,
      'create_task_callback',
      util.stringToBytes(`{"job_id":${aJob.id}}`),
      GAS_CREATE_TASK_CALLBACK,
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
    // persist bond change
    jobs.set(aJob.id, aJob);
  }

}

export function create_task_callback (job_id: i32): void {
  _is_private();

  let aJobOrNull:Job | null = jobs.get(job_id);
  assert(aJobOrNull != null, `job ${job_id} not found`);
  let aJob:Job = <Job> aJobOrNull;
  // get task hash from promise results
  let result = ContractPromise.getResults()[0];
  if (result.succeeded) {
    aJob.croncat_hash = result.decode<string>();

    // set job to active
    aJob.is_active = true;
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
 * 
 * @param job_schedules 
 * @param job_cadence 
 * @param job_trigger_gas 
 * @param job_trigger_deposit 
 * @param job_total_budget 
 * @param job_runs_max 
 * @param job_start_at 
 * @returns 
 */
export function job_add (
    job_schedules: ContractCall[][],
    job_cadence: string,
    job_trigger_gas: u64,
    job_trigger_deposit: u128,
    job_total_budget: u128,
    job_runs_max: u64,
    job_start_at: u64 = context.blockTimestamp
  ): i32 
  {
  // anyone can add jobs if they pay required bond
  let bondAmountOrNull: string | null = storage.get<string>(KEY_JOB_BOND);
  assert(bondAmountOrNull != null, "current job bond amount is null");
  let bondAmount: u128 = u128.fromString(<string> bondAmountOrNull);

  assert(u128.ge(context.attachedDeposit, bondAmount), "attached deposit must be greater or equal than the required bond");
  let currentJobId: i32 =  storage.getPrimitive<i32>(KEY_JOB_COUNT, 0);
  let newJob: Job = {
    id: currentJobId,
    croncat_hash: '', // added after croncat task creation (job activation)
    creator: context.predecessor,
    bond: bondAmount,
    cadence: job_cadence,
    trigger_gas: job_trigger_gas,
    trigger_deposit: job_trigger_deposit,
    croncat_budget: job_total_budget,
    start_at: job_start_at,
    runs_max: job_runs_max,
    runs_current: 0,
    is_active: false,
    schedules: job_schedules
  };
  storage.set<i32>(KEY_JOB_COUNT, newJob.id + 1);
  jobs.set(newJob.id, newJob);

  return newJob.id;
}

/**
 * edit job params controlled by multicall.
 * for params controlled by croncat, it's safer
 * to disable the job and create another one 
 * 
 * @param job_id 
 * @param job_schedules 
 * @param job_total_budget 
 * @param job_runs_max 
 * @param job_start_at 
 * @param job_is_active 
 */
export function job_edit (
  job_id: i32,
  job_schedules: ContractCall[][],
  job_total_budget: u128,
  job_runs_max: u64,
  job_start_at: u64,
  job_is_active: boolean
): void
{
  _is_admin(context.predecessor);

  let aJobOrNull: Job | null = jobs.get(job_id);
  assert(aJobOrNull != null, `job ${job_id} not found`);
  let aJob: Job = <Job> aJobOrNull;
  aJob.schedules = job_schedules;
  aJob.runs_max = job_runs_max;
  aJob.start_at = job_start_at;
  aJob.is_active = job_is_active;

  if (aJob.croncat_budget < job_total_budget) {
    // refill job allowance on croncat
    ContractPromise.create(
      storage.getSome<string>(KEY_CRONCAT_MANAGER_ADDRESS),
      'refill_balance',
      util.stringToBytes(`{"task_hash":"${aJob.croncat_hash}"}`),
      context.prepaidGas - (15 * ONE_TGAS),
      u128.sub(job_total_budget, aJob.croncat_budget)
    );
  }

  jobs.set(aJob.id, aJob);
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
  if (aJob.runs_max <= aJob.runs_current) {
    logging.log(`retiring job ${job_id}, max runs reached`);

    // remove this job's croncat task
    ContractPromise.create(
      storage.getSome<string>(KEY_CRONCAT_MANAGER_ADDRESS),
      'remove_task',
      util.stringToBytes(`{"task_hash":"${aJob.croncat_hash}"}`),
      context.prepaidGas - (15 * ONE_TGAS),
      u128.Zero
    );

    aJob.is_active = false
    jobs.set(aJob.id, aJob);

    return;
  }
  assert(aJob.is_active == true, `job ${job_id} must be activated`);
  assert(context.blockTimestamp >= aJob.start_at, "please wait for job start time");
  _internal_multicall(aJob.schedules);
  // increment runs after multicall, because it can revert
  aJob.runs_current += 1;
  logging.log(`job ${aJob.id} runs max: ${aJob.runs_max} runs current: ${aJob.runs_current}`)
  jobs.set(aJob.id, aJob);
}

// TODO: add Croncat class for contants and CRUD operations as functions



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
    storage.getSome<string>(KEY_CRONCAT_MANAGER_ADDRESS) == account_id,
    `${account_id} must be croncat manager to call this function`
  );
}

/**
 * panick if caller isn't this contract's address
 */
 function _is_private(): void {
  assert(
    context.contractName == context.predecessor,
    `Method is private`
  );
}
