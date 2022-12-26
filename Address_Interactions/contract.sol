// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
    address public owner;
    constructor() {
      owner = msg.sender;
    }
    receive() external payable{}

    function tip() public payable {
      ( bool r, ) = owner.call{value: msg.value}("");
      require(r);
    }
}