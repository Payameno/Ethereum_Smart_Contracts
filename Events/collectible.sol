// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Collectible {
  address owner;
  uint price;

  event Deployed(address indexed);

  constructor() {
    owner = msg.sender;
    emit Deployed(msg.sender);
  }

  event Transfer(address indexed,address indexed);
  function transfer(address _receipient) external {
    require(msg.sender == owner);
    owner = _receipient;
    emit Transfer(msg.sender, _receipient);
  }

  event ForSale(uint, uint);
  function markPrice(uint _price) external {
    require(msg.sender == owner);
    price = _price;
    emit ForSale(price, block.timestamp);
  }

//uint= pruchase amount/ address= buyer
  event Purchase(uint, address indexed);
  function purchase() payable external {

    //make sure the value is equal to asked price
    require(msg.value == price, "1");

    //make sure collectible is for sale, uint uninitialized is 0
    require(price > 0, "2");

    //before transfer, remove collectible from sale
    price = 0;

    //send the purchase price to current owner of collectible
    (bool success, ) = owner.call{value: msg.value}("");
    require(success);

    //change owner to purchaser
    owner = msg.sender;
    
    emit Purchase(msg.value, msg.sender);
  }
}