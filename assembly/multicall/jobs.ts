import { context, storage, PersistentUnorderedMap, logging, u128, base64, ContractPromise, ContractPromiseBatch } from "near-sdk-as";
import { JobSchema, BatchCall, JobActivateArgs } from "./model";
import { _internal_multicall } from "./internal";
import { Croncat } from "./utils";


@nearBindgen
export class Jobs {
  // Job functions
  // 1 - a job is created, anyone can do this
  // 2 - admin activates the job
  // 3 - jobs can be triggered only by CronCat

  // storage key to save job bond
  KEY_BOND: string;
  // storage key to save total historic number of jobs
  // used to generate unique job ID for new jobs
  KEY_JOB_COUNT: string; 

  CALLBACK_POST_JOB_ACTIVATE: string;
  CALLBACK_POST_JOB_DELETE: string;

  croncat: Croncat;
  jobMap: PersistentUnorderedMap<u32, JobSchema>;

  GAS_ACTIVATE: u64 = 40_000_000_000_000;
  GAS_EDIT: u64 = 20_000_000_000_000;
  GAS_DELETE: u64 = 35_000_000_000_000;
  GAS_CREATE_TASK_CALLBACK: u64 = 15_000_000_000_000;
  GAS_EXIT_TASK_CALLBACK: u64 = 15_000_000_000_000;

  // constructor for initializing the Croncat manager address
  constructor(
    keyCroncatManagerAddress: string,
    keyJobBond: string,
    keyJobMap: string,
    keyJobCount: string,
    callbackForJobActivate: string,
    callbackForJobDelete: string
  ) {
    this.croncat = new Croncat(keyCroncatManagerAddress);
    this.KEY_BOND = keyJobBond;
    this.jobMap = new PersistentUnorderedMap<u32, JobSchema>(keyJobMap);
    this.KEY_JOB_COUNT = keyJobCount;
    this.CALLBACK_POST_JOB_ACTIVATE = callbackForJobActivate;
    this.CALLBACK_POST_JOB_DELETE = callbackForJobDelete;
  }

  /**
   * set smart contract address of croncat manager
   * croncat manager has privilege to trigger active jobs
   * 
   * @param address 
   */
  set_croncat_manager (address: string): void {
    this.croncat.set_manager_address(address);
  }

  get_croncat_manager (): string {
    return this.croncat.get_manager_address();
  }

  /**
   * admins can set NEAR amount required to register a job
   * since anyone is able to submit jobs, bond is necessary to protecc from spam
   * 
   * @param amount
   */
  set_bond (amount: u128): void {
    storage.set<u128>(this.KEY_BOND, amount);  
  }

  get_bond (): u128 {
    return storage.getSome<u128>(this.KEY_BOND);
  }

  /**
   * list registered jobs
   * 
   * @param start 
   * @param end 
   */
  get_jobs(start: i32 = 0, end: i32 = this.jobMap.length): JobSchema[] {
    return this.jobMap.values(start, end);
  }

  /**
   * register a new job.
   * Must be activated later to start running
   * 
   * @param job_calls 
   * @param job_cadence 
   * @param job_trigger_gas 
   * @param job_trigger_deposit 
   * @param job_total_budget 
   * @param job_runs_max 
   * @param job_start_at 
   * @returns 
   */
  add (
    job_calls: BatchCall[][],
    job_cadence: string,
    job_trigger_gas: u64,
    job_trigger_deposit: u128,
    job_total_budget: u128,
    job_runs_max: u64,
    job_start_at: u64
  ): u32 
  {
    // anyone can add jobs if they pay required bond
    const bondAmount: u128 = this.get_bond();

    assert(
      u128.ge(context.attachedDeposit, bondAmount),
      "attached deposit must be greater or equal than the required bond"
    );
    let currentJobId: u32 =  storage.getPrimitive<u32>(this.KEY_JOB_COUNT, 0);
    let newJob: JobSchema = {
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
      calls: job_calls
    };
    storage.set<u32>(this.KEY_JOB_COUNT, newJob.id + 1);
    this.jobMap.set(newJob.id, newJob);

    return newJob.id;
  }

  /**
   * create a croncat task for a job and set it to active
   * 
   * @param job_id 
   */
  activate (job_id: u32): void {
    let aJob: JobSchema = this.jobMap.getSome(job_id);
    // is job already active?
    if (aJob.is_active == true) {
      logging.log(`job ${aJob.id} already active`);
      return;
    }
    // does job have a croncat task?
    if (aJob.croncat_hash != '') {
      logging.log(`job ${aJob.id} already has croncat task ${aJob.croncat_hash}`);
    } else {
      let croncatTaskArgs: JobActivateArgs = {job_id: aJob.id};

      // create a croncat task
      let promise = this.croncat.create_task(
        {
          contract_id: context.contractName,
          function_id: "job_trigger",
          cadence: aJob.cadence,
          recurring: aJob.runs_max > 1 ? true : false,
          deposit: aJob.trigger_deposit,
          gas: aJob.trigger_gas,
          arguments: base64.encode(croncatTaskArgs.encode())
        },
        context.prepaidGas - this.GAS_ACTIVATE,
        aJob.croncat_budget,
      ).then<JobActivateArgs>(
        context.contractName,
        this.CALLBACK_POST_JOB_ACTIVATE,
        croncatTaskArgs,
        this.GAS_CREATE_TASK_CALLBACK,
        u128.Zero
      );

      // return promise as result
      promise.returnAsResult();

    }
    // reimburse bond on first time activation
    if (u128.gt(aJob.bond, u128.Zero)) {
      const toReimburse: u128 = aJob.bond;
      // setting bond to 0 indicates it's reimbursed
      aJob.bond = u128.Zero;
      ContractPromiseBatch.create(aJob.creator).transfer(toReimburse);
      // persist bond change
      this.jobMap.set(aJob.id, aJob);
    }
  }

  activate_callback (job_id: u32): void {

    let aJob: JobSchema = this.jobMap.getSome(job_id);
    // get task hash from promise results
    let result = ContractPromise.getResults()[0];
    if (result.succeeded) {
      aJob.croncat_hash = result.decode<string>();

      // set job to active
      aJob.is_active = true;
      this.jobMap.set(aJob.id, aJob);
    }
  }

  /**
   * resume a job to be ready for execution
   * 
   * @param job_ids 
   */
  resume (job_ids: u32[]): void {

    for (let i = 0; i < job_ids.length; i++) {
      // we use get instead of getSome to not panick on job_id not found
      let aJobOrNull: JobSchema | null = this.jobMap.get(job_ids[i]);
      if (aJobOrNull != null) {
        let aJob: JobSchema = <JobSchema> aJobOrNull;
        // is job already active?
        if (aJob.is_active == true) {
          logging.log(`job ${aJob.id} already active`);
          continue;
        }
        aJob.is_active = true;
        this.jobMap.set(aJob.id, aJob);
      } else {
        logging.log(`job ${job_ids[i]} not found`);
      }
    }
  }

  /**
   * pause a job so it cannot be triggered
   * 
   * @param job_ids 
   */
  pause (job_ids: u32[]): void {

    for (let i = 0; i < job_ids.length; i++) {
      let aJobOrNull: JobSchema | null = this.jobMap.get(job_ids[i]);
      if (aJobOrNull != null) {
        let aJob: JobSchema = <JobSchema> aJobOrNull;
        // is job aleady inactive?
        if (aJob.is_active == false) {
          logging.log(`job ${aJob.id} already paused`);
          continue;
        }
        aJob.is_active = false;
        this.jobMap.set(aJob.id, aJob);
      } else {
        logging.log(`job ${job_ids[i]} not found`);
      }
    }
  }

  /**
   * edit job params controlled by multicall.
   * for params controlled by croncat, it's safer
   * to disable the job and create another one 
   * 
   * @param job_id 
   * @param job_calls 
   * @param job_total_budget 
   * @param job_runs_max 
   * @param job_start_at 
   * @param job_is_active 
   */
  edit (
    job_id: u32,
    job_calls: BatchCall[][],
    job_total_budget: u128,
    job_runs_max: u64,
    job_start_at: u64,
    job_is_active: boolean
  ): void
  {
    // panick on job_id not found
    const aJob: JobSchema = this.jobMap.getSome(job_id);
    aJob.calls = job_calls;
    aJob.runs_max = job_runs_max;
    aJob.start_at = job_start_at;
    aJob.is_active = job_is_active;

    // are we increasing job allowance on croncat ?
    if (aJob.croncat_budget < job_total_budget) {
      this.croncat.refill_balance(
        { task_hash:  aJob.croncat_hash},
        context.prepaidGas - this.GAS_EDIT,
        u128.sub(job_total_budget, aJob.croncat_budget)
      );
    }

    this.jobMap.set(aJob.id, aJob);
  }

  /**
   * multicall jobs can take lots of memory, thus locking part of the
   * contract funds. We can free up space by deleting jobs.
   * Also can delete the job's task on croncat
   * 
   * @param job_id 
   */
  delete (job_id: u32, delete_on_croncat: boolean): void {
    // panick on job_id not found
    const aJob: JobSchema = this.jobMap.getSome(job_id);

    // if we want to delete on croncat then call croncat first then
    // locally delete using callback to check if croncat call succeeded
    if (delete_on_croncat == true) {
      // remove the job's task on croncat
      let promise = this.croncat.remove_task(
        { task_hash:  aJob.croncat_hash},
        context.prepaidGas - this.GAS_DELETE,
        u128.Zero
      ).then<JobActivateArgs>(
        context.contractName,
        this.CALLBACK_POST_JOB_DELETE,
        { job_id: aJob.id },
        this.GAS_EXIT_TASK_CALLBACK,
        u128.Zero
      );
      // return the promise as result
      promise.returnAsResult();
    }
    else {
      this.jobMap.delete(aJob.id);
    }
  }

  /**
   * Check if croncat sucessfully deleted the task before deleting a job.
   * 
   * @param job_id 
   */
  delete_callback (job_id: u32): void {
    // panick on job_id not found
    const aJob: JobSchema = this.jobMap.getSome(job_id);

    // check if call to croncat succeeded
    let result = ContractPromise.getResults()[0];
    if (result.succeeded) {
      // delete the job
      this.jobMap.delete(aJob.id);
    }
  }

  /**
   * trigger execution of an active job
   * 
   * @param job_id 
   */
  trigger (job_id: u32): void {

    const aJob: JobSchema = this.jobMap.getSome(job_id);
    assert(aJob.is_active == true, `job ${job_id} must be active`);
    assert(context.blockTimestamp >= aJob.start_at, "please wait for job start time");

    if (aJob.runs_max <= aJob.runs_current) {
      logging.log(`retiring job ${job_id}, max runs reached`);

      // delete the job both on croncat and locally
      this.delete(aJob.id, true); // returns promise as result

      return;
    }

    // increment job's number of runs
    aJob.runs_current += 1;

    logging.log(`job ${aJob.id} runs max: ${aJob.runs_max} runs current: ${aJob.runs_current}`)

    // recurring job, persist current job state
    if (aJob.runs_max > 1) {
      this.jobMap.set(aJob.id, aJob);
    }
    // non-recurring job, will be automatically deleted on croncat, so we only delete locally
    else {
      this.delete(aJob.id, false);
    }

    // execute the job as a multicall
    const last_promise: ContractPromise = _internal_multicall(aJob.calls);
    last_promise.returnAsResult(); // return last promise as result
  }
}
