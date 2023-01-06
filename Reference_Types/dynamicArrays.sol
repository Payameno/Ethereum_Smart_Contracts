// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Contract {
    function sum(uint[] calldata x) pure external returns(uint sum) {
      for (uint i = 0; i < x.length; i++) {
        sum += x[i];
      }
    }
}