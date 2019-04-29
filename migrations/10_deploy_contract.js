const CleaningDuty = artifacts.require("CleaningDuty");
const num_of_cleaners = 2;

module.exports = function(deployer) {
  deployer.deploy(CleaningDuty, num_of_cleaners);
}
