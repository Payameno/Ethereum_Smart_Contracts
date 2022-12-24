//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Faucet {

  constructor{
    bytes addresses = [];
  }

  function withdraw(uint _amount) public {
    // users can only withdraw .1 ETH at a time!
    require(_amount <= 100000000000000000);
    payable(msg.sender).transfer(_amount);
    //push the current sender's address to the array
    addresses.push(msg.sender);

  }

  // fallback function
  receive() external payable {}
}