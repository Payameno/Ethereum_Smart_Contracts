// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Contract {
    event Winner(address);

    function attempt() external {
        require(msg.sender != tx.origin, "msg.sender is equal to tx.origin");
        emit Winner(msg.sender);
    }
}

//msg.sender != tx.origin means:
//Only a contract is allowed to emit this event not an EOA




// pragma solidity ^0.8.0;
// contract Contract {
//    uint public number;
//    function changeNumber(uint _num) external {
//     number = _num;
//    } 
// }