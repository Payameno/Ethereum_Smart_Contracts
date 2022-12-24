const ethers = require('ethers');
require('dotenv').config();

async function main() {
  const url = process.env.Goerli_url;

  let artifacts = await hre.artifacts.readArtifact("ModifyVariable");

  const provider = new ethers.providers.JsonRpcProvider(url);

  let privateKey = process.env.Private_Key;

  let wallet = new ethers.Wallet(privateKey, provider);

  let Factory = new ethers.ContractFactory(artifacts.abi, artifacts.bytecode, wallet);
  const modifyVariable = await Factory.deploy(20);

  await modifyVariable.deployed();

  console.log(
    `Deployed to ${modifyVariable.address}`
  );

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
