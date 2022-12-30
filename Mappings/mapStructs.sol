// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
	struct User {
		uint balance;
		bool isActive;
	}

  mapping(address => User) public users;

  function createUser() external {
    //ensuring user already doesn't exist
    require(!users[msg.sender].isActive);

    //create the new user struct
    users[msg.sender] = User(100, true);
  }
}