// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
  uint public x;

  constructor(uint _x) {
    x = _x;
  }

  function increment() external {
    x += 1;
  }

  function add(uint _y) external view returns(uint) {
    return _y + x;
  }

  function double(uint _z) external pure returns(uint _double) {
    _double = _z*2;
  } 
}