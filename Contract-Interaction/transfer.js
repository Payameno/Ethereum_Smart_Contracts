/**
 * Transfer funds on the contract from the current signer 
 * to the friends address
 *
 * @param {ethers.Contract} contract - ethers.js contract instance
 * @param {string} friend - a string containing a hexadecimal ethereum address
 * @return {promise} a promise of the transfer transaction
 */
function transfer(contract, friend) {
    contract.transfer(friend, 500);
}

//Contract Details:
// SPDX-License-Identifier: MIT
// pragma solidity 0.7.5;

// contract Token {
//     mapping(address => uint) public balances;

//     constructor() {
//         balances[msg.sender] = 1000;
//     }

//     function transfer(address beneficiary, uint amount) external {
//         require(balances[msg.sender] >= amount, "Balance too low!");
//         balances[beneficiary] += amount;
//         balances[msg.sender] -= amount;
//     }
// }
