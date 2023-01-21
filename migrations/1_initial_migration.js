const AirDropToken = artifacts.require("AirDropToken");

async function deployTestnet(deployer) {
  const AirDropTokenDeploy = await deployer.deploy(AirDropToken)
  console.log(`Deploy: Airdrops Address = ${AirDropTokenDeploy.address}`)
}

module.exports = function(deployer) {
deployer.then(async() => {
  console.log(deployer.network);
  switch (deployer.network) {
    case 'bsctestnet':
      await deployTestnet(deployer);
      break;
    default:
      throw("Unsupported network");
  }
})
};