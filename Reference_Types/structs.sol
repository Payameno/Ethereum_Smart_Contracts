// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Contract {
	enum Choices { Yes, No }
	
	struct Vote {
		Choices choice;
		address voter;
	}

  Vote none = Vote(Choices(0), address(0));
	
	Vote[] public votes;

  function createVote(Choices choice) external {
    require(!hasVoted(msg.sender));
		votes.push(Vote(choice, msg.sender));
	}

    function changeVote(Choices _choice) external {
    Vote storage vote = findVote(msg.sender);
    //check if voter has indeed voted
    require(vote.voter != none.voter);
    vote.choice = _choice;
    }

  function findVote(address _address) internal view returns(Vote storage){
    for (uint i = 0; i < votes.length; i++) {
      if (votes[i].voter == _address) {
        return votes[i];
      }
    }
      return none;
  }

  function hasVoted(address _address) public view returns(bool){
    return findVote(_address).voter == _address;
  }

  function findChoice(address _address) external view returns(Choices){
    return findVote(_address).choice;
  }

}