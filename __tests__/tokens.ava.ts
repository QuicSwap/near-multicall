import { Workspace } from 'near-workspaces-ava';

const ONE_TGAS: bigint = BigInt("1000000000000");
const ONE_YOCTO: bigint = BigInt("1");
const ONE_NEAR: bigint = BigInt("1000000000000000000000000");
const CRONCAT_MANAGER_ADDRESS = "placeholder";
const nusdc_address: string = "nusdc.ft-fin.testnet";
const ndai_address: string = "ndai.ft-fin.testnet";
const nusdt_address: string = "nusdt.ft-fin.testnet";


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

  // add nDAI to token whitelist
  await contract.call(
    contract.accountId,
    "tokens_add",
    {
      addresses: [ndai_address]
    }
  );

  // Return accounts to be available in tests
  return {alice, bob, contract};
});

/**
 * add tokens to whitelist
 */
workspace.test('add tokens to whitelist', async (test, {alice, bob, contract, root}) => {
  // bob isn't admin so he can't modify tokens whitelist
  try {
    // try catch bacause contract should panick
    await bob.call(
      contract.accountId,
      'tokens_add',
      {
        addresses: [nusdc_address]
      }
    );
  } catch (error) {}
  let tokens: string[] = await contract.view('get_tokens', {})
  test.true(
    tokens.includes(ndai_address) && !tokens.includes(nusdc_address)
  );
  test.log(`tokens: [${tokens}]`);

  // alice is admin so she can modify tokens whitelist
  await alice.call(
    contract.accountId,
    'tokens_add',
    {
      addresses: [nusdc_address]
    }
  );
  tokens = await contract.view('get_tokens', {})
  test.true(
    tokens.includes(ndai_address) && tokens.includes(nusdc_address)
  );
  test.log(`tokens: [${tokens}]`);
});

/**
 * remove tokens from whitelist
 */
workspace.test('remove tokens from whitelist', async (test, {alice, bob, contract, root}) => {
  // bob isn't admin so he can't modify tokens whitelist
  try {
    // try catch bacause contract should panick
    await bob.call(
      contract.accountId,
      'tokens_remove',
      {
        addresses: [ndai_address]
      }
    );
  } catch (error) {}
  let tokens: string[] = await contract.view('get_tokens', {})
  test.true(
    tokens.includes(ndai_address)
  );
  test.log(`tokens: [${tokens}]`);

  // alice is admin so she can modify tokens whitelist
  await alice.call(
    contract.accountId,
    'tokens_remove',
    {
      addresses: [ndai_address]
    }
  );
  tokens = await contract.view('get_tokens', {})
  test.true(
    !tokens.includes(ndai_address)
  );
  test.log(`tokens: [${tokens}]`);
});
