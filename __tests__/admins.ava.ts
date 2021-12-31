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
 * add admins
 */
workspace.test('add admins', async (test, {alice, bob, contract, root}) => {
  // bob isn't admin so he can't add admins
  try {
    // try catch bacause contract should panick
    await bob.call(
      contract.accountId,
      'admins_add',
      {
        account_ids: [bob.accountId]
      }
    );
  } catch (error) {}
  let admins: string[] = await contract.view('get_admins', {})
  test.true(
    admins.includes(alice.accountId) && !admins.includes(bob.accountId)
  );
  test.log(`admins: [${admins}]`);

  // alice is admin so she can add bob
  await alice.call(
    contract.accountId,
    'admins_add',
    {
      account_ids: [bob.accountId]
    }
  );
  admins = await contract.view('get_admins', {})
  test.true(
    admins.includes(alice.accountId) && admins.includes(bob.accountId)
  );
  test.log(`admins: [${admins}]`);
});

/**
 * remove admins
 */
workspace.test('remove admins', async (test, {alice, bob, contract, root}) => {
  // bob isn't admin so he can't remove admins
  try {
    // try catch bacause contract should panick
    await bob.call(
      contract.accountId,
      'admins_remove',
      {
        account_ids: [alice.accountId]
      }
    );
  } catch (error) {}
  let admins: string[] = await contract.view('get_admins', {})
  test.true(
    admins.includes(alice.accountId)
  );
  test.log(`admins: [${admins}]`);

  // alice is admin so she can remove admins
  await alice.call(
    contract.accountId,
    'admins_remove',
    {
      account_ids: [alice.accountId]
    }
  );
  admins = await contract.view('get_admins', {})
  test.true(
    !admins.includes(alice.accountId)
  );
  test.log(`admins: [${admins}]`);
});
