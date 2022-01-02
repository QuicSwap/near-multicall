import { Workspace } from 'near-workspaces-ava';

const ONE_TGAS: bigint = BigInt("1000000000000");
const ONE_YOCTO: bigint = BigInt("1");
const ONE_NEAR: bigint = BigInt("1000000000000000000000000");
const CRONCAT_MANAGER_ADDRESS = "placeholder";


/**
 * Initialize a new workspace. In local sandbox mode, this will:
 */
const workspace = Workspace.init(async ({root}) => {
  const alice = await root.createAccount('alice');
  const bob = await root.createAccount('bob');

  // deploy multicall instance with alice admin
  const contract = await root.createAndDeploy(
    'multicall',
    'build/release/contract.wasm',
    {
      method: 'init',
      args: {
        admin_accounts: [alice.accountId],
        croncat_manager: CRONCAT_MANAGER_ADDRESS,
        job_bond: ONE_NEAR.toString()
      },
      gas: (BigInt(10) * ONE_TGAS).toString()
    }
  );

  // Return accounts to be available in tests
  return {alice, bob, contract};
});

/**
 * transfer NEAR
 */
workspace.test('transfer near by non-admin', async (test, {alice, bob, contract, root}) => {
  const oldBalance = await contract.balance();
  test.log(`initial balance: ${oldBalance.total.toHuman()}`);
  // bob isn't admin so he can't transfer near from multicall
  try {
    // try catch bacause contract should panick
    await bob.call(
      contract.accountId,
      'near_transfer',
      {
        account_id: bob.accountId,
        amount: ONE_NEAR.toString()
      }
    );
  } catch (error) {}
  const balance  = await contract.balance();
  test.true(
    // balance won't decrease. Only increase by 30% of gas fees
    // make sure balance did not decreased
    ( BigInt(oldBalance.total.toString()) - BigInt(balance.total.toString()) )
    <=
    BigInt("0")
  );
  test.log(`balance: ${balance.total.toHuman()}`);
});
workspace.test('transfer near by admin', async (test, {alice, bob, contract, root}) => {
  const oldBalance = await contract.balance();
  test.log(`initial balance: ${oldBalance.total.toHuman()}`);
  // alice is admin so she can transfer near from multicall
  await alice.call(
    contract.accountId,
    'near_transfer',
    {
      account_id: alice.accountId,
      amount: ONE_NEAR.toString()
    }
  );
  const balance  = await contract.balance();
  test.true(
    // balance will decrease by ~1N (and increase by 30% of gas fees)
    // make sure balance decreased by at least 0.9 $NEAR
    ( BigInt(oldBalance.total.toString()) - BigInt(balance.total.toString()) )
    >=
    ( (BigInt("9") * ONE_NEAR) / BigInt("10") ) // this is 0.9 $NEAR
  );
  test.log(`balance: ${balance.total.toHuman()}`);
});
workspace.test('transfer all available near by admin', async (test, {alice, bob, contract, root}) => {
  const oldBalance = await contract.balance();
  test.log(`initial balance: ${oldBalance.total.toHuman()}`);
  // test if alice can transfer all available balance
  await alice.call(
    contract.accountId,
    'near_transfer',
    {
      account_id: alice.accountId
    }
  );
  const balance  = await contract.balance();
  test.true(
    // only $NEAR reserved for state will remain (and 30% from gas fee)
    // total balance is only slightly more than state staked balance
    ( BigInt(balance.total.toString()) - BigInt(balance.stateStaked.toString()) )
    <=
    ( ONE_NEAR / BigInt("10") ) // = 0.1 $NEAR
  );
  test.log(`balance: ${balance.total.toHuman()}`);
});
