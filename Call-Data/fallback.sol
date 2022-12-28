//Trigerring fallback function

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Sidekick {
    function makeContact(address hero) external {
        (bool success, ) = hero.call(abi.encodeWithSignature("alert(uint,bool)", 10, true));
        require(success);
    }
}

//the reason fallback function is triggered is that
//uint is not accepted as an argument for alert (it should be written as uint256)