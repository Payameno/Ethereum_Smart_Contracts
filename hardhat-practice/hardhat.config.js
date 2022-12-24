require('dotenv').config();
require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      ur: process.env.ALCHEMY_TESTNET_RPC_URL,
      accounts: process.env.TESTNET_PRIVATEKEY,
    },
  }
};
