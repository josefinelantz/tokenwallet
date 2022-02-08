const Condos = artifacts.require("Condos");
module.exports = function(deployer) {
  deployer.deploy(Condos);
};
