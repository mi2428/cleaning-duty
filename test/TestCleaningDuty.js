const CleaningDuty = artifacts.require("CleaningDuty");
const num_of_cleaners = 2;

contract("CleaningDuty", accounts => {
  it(`${num_of_cleaners} students should be assigned to the cleaner every week.`, () => {
    CleaningDuty.deployed()
      .then(instance => instance.getBalance.call(accounts[0]))
      .then(balance => {
        assert.equal(balance.valueOf(), num_of_cleaners,
          `First account should have ${num_of_cleaners} DUTYs.`);
      });
  });
});
