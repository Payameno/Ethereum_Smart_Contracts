// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
    address owner;

//when contract depoloyed owner is the address which perform it
    constructor() payable {
      owner = msg.sender;
      require(msg.value >= 1 ether, "Not enough ether sent");
    }
//msg.sender here is any address that calls the function
  function withdraw() public {
    require(owner == msg.sender);
    payable(msg.sender).transfer(address(this).balance);
  }
}