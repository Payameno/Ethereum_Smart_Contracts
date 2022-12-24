//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract ModifyVariable {
  uint public x;
  bytes32 public y;

  constructor(uint _x,bytes32 _y) {
    x = _x;
    y = _y;
  }

  function modifyToLeet() public {
    x = 1337;
    y = "Default String";
  }

}