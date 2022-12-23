// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
  //State parameter
  uint public x;

  constructor(uint _x) {
    x = _x;
  }
//Access external, incrememnt by one
  function increment() external {
    x += 1;
  }
//external access, read only, returns sum of function argument with a state variable
  function add(uint _y) external view returns(uint) {
    return _y + x;
  }
//external, neither read or write to the state variables, returns double of an argument
  function double(uint _z) external pure returns(uint _double) {
    _double = _z*2;
  } 
//public, no read/write, double return
  function double(uint _a, uint _b) public pure returns (uint, uint) {
    return (_a*2, _b*2);
  }
}