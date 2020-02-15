const RR = artifacts.require('RobotRequest.sol');



function deployContracts(deployer, network) {

    deployer.then(async () => {
      
     
    await deployer.deploy(RR)

     
      
    })
  }
  module.exports = deployContracts;