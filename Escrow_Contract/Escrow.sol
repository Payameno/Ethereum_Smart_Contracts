// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;
    bool public isApproved;

    constructor(address _arbiter, address _beneficiary) payable {
      depositor = msg.sender;
      arbiter = _arbiter;
      beneficiary = _beneficiary;
    }

    event Approved(uint);
    function approve() external {
      //only arbiter is allowed to call this function
      require(msg.sender == arbiter);

      uint balance = address(this).balance;

      //transfer contract funds to the beneficiary
      (bool success, ) = beneficiary.call{value: address(this).balance}("");
      require(success, "Failed to transfer funds after approval");

      emit Approved(balance);
      isApproved = true;
    }
}