const ethers = require('ethers');
require('dotenv').config();

async function main() {
  const contractABI = [
    {
      inputs: [
        {
          internalType: "uint256",
          name: "_x",
          type: "uint256"
        }
      ],
      stateMutability: "nonpayable",
      type: "constructor"
    },
    {
      inputs: [],
      name: "modifyToLeet",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function"
    },
    {
      inputs: [],
      name: "x",
      outputs: [
        {
          internalType: "uint256",
          name: "",
          type: "uint256"
        }
      ],
      stateMutability: "view",
      type: "function"
    },
    {
      inputs: [],
      name: "y",
      outputs: [
        {
          internalType: "string",
          name: "",
          type: "string"
        }
      ],
      stateMutability: "view",
      type: "function"
    }
  ];

  const contractAddr = "0x233e0B59B321236E15D3ABA7EabfFc8f4d30C234";
  
  const provider = new ethers.providers.AlchemyProvider(
    'goerli',
    process.env.Goerli_url
  );
  //every transacion needs a valid signer, therefore it should be provided
  const wallet = new ethers.Wallet(process.env.Private_Key, provider);
  
    const contract = new ethers.Contract( contractAddr , contractABI , wallet );
    //here I change the variable
    await contract.modifyToLeet();
    console.log("New parameter", await contract.x());
}

main();