// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./Contract.sol";

contract InitialContract {
  constructor(address _target) {
    Contract(_target).attempt();
  }
}