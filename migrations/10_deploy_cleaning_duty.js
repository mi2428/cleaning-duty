const CleaningDuty = artifacts.require("CleaningDuty");
const num_of_cleaners = 2;

module.exports = function(deployer) {
  return deployer.then(() => {
    return deployer.deploy(CleaningDuty, num_of_cleaners);
  });
}
