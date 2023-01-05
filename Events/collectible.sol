// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Collectible {
  address owner;

  event Deployed(address);

  constructor() {
    owner = msg.sender;
    emit Deployed(msg.sender);
  }

  event Transfer(address,address);
  function transfer(address _receipient) external {
    require(msg.sender == owner);
    owner = _receipient;
    emit Transfer(msg.sender, _receipient);
  }

  event ForSale(uint, uint);
  function markPrice(uint _price) external {
    require(msg.sender == owner);
    emit ForSale(_price, block.timestamp);
  }

}