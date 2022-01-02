import { Workspace, NEAR } from 'near-workspaces-ava';


/**
 * function to run all tests
 */
export function tests(workspace: Workspace) {

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
          amount: NEAR.parse("1").toString() // 1 NEAR
        }
      );
    } catch (error) {}
    const balance  = await contract.balance();
    test.true(
      // balance won't decrease. Only increase by 30% of gas fees
      // make sure balance did not decreased
      ( oldBalance.total.sub( balance.total ) ).lte( NEAR.from("0") )
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
        amount: NEAR.parse("1").toString() // 1 NEAR
      }
    );
    const balance  = await contract.balance();
    test.true(
      // balance will decrease by ~1N (and increase by 30% of gas fees)
      // make sure balance decreased by at least 0.9 $NEAR
      ( oldBalance.total.sub( balance.total ) ).gte( NEAR.parse("900 mN") )
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
      // total balance is only slightly more than state staked balance (0.1 NEAR tolerance)
      ( balance.total.sub( balance.stateStaked ) ).lte( NEAR.parse("100 mN") )
    );
    test.log(`balance: ${balance.total.toHuman()}`);
  });

}
