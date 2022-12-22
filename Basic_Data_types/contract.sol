// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
	bool public var1 = true;
  bool public var2 = false;
  uint8 public a = 23; //uint number between 0 & 255 - representing 256 possibilities
  uint16 public b = 65401; // 0 to 65535
  uint public sum = a + b; // Uint=Uint256 Integer overflow/ underflow should be considered or transasction will fail
}