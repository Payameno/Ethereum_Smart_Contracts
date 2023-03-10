// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
	bool public var1 = true;
  bool public var2 = false;
  uint8 public uinteger1 = 23; //uint number between 0 & 255 - representing 256 possibilities
  uint16 public uinteger2 = 65401; // 0 to 65535
  uint public sum = uinteger1 + uinteger2; // Uint=Uint256 Integer overflow/ underflow should be considered or transasction will fail
  int8 public a = -11;
  int8 public b = 126; // a signed integer
  int16 public difference = 137; //represents absolute difference
  bytes32 public msg1 = "Hello World!"; //String literal example
  bytes public msg2 = "This string should be more than 32bytes";

  //enums
  enum Foods { Apple, Pizza, Bagel, Banana }

	Foods public food1 = Foods.Apple;
	Foods public food2 = Foods.Pizza;
	Foods public food3 = Foods.Bagel;
	Foods public food4 = Foods.Banana;
}