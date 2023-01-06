// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Contract {
	enum Choices { Yes, No }

	struct Vote {
    Choices choice;
    address voter;
  }

	function createVote(Choices choice) external returns(Vote memory){
		return Vote(choice, msg.sender);
	}
}