// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Contract {
   uint public number;
   function changeNumber(uint _num) external {
    number = _num;
   } 
}
