
const hre = require("hardhat");

async function main() {
  const Contract = await hre.ethers.getContractFactory("InitialContract");
  const contract = await Contract.deploy("0xcF469d3BEB3Fc24cEe979eFf83BE33ed50988502");

  await contract.deployed();

  console.log(
    `Tx.origin changed, Winner! ${contract.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
