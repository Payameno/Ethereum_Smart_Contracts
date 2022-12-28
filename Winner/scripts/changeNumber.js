
const hre = require("hardhat");

const CONRACT_ADDR = "0xBeAf877415718630f6D1955ee1FbB5688000D850";

async function main() {
  const Contract = await hre.ethers.getContractAt("Contract", CONRACT_ADDR);

  const tx = await Contract.changeNumber(33);
  await tx.wait();
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
