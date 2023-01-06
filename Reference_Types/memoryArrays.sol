// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Contract {
    function filterEven(uint[] calldata x) pure external returns(uint[] memory){
      //memory arrays dont have a push member function
      //first the dynamic size should be given, second element linked to index

      //find even numbers
      uint elements;
      for (uint i=0; i < x.length; i++) {
        if(x[i] % 2 == 0) {
          elements++;
        }
      }

      //here we determine the size of the array in memory(elements)
      uint[] memory evenNumArray = new uint[](elements);

      uint index = 0;
      for (uint i=0; i < x.length; i++) {
        uint elements;
        if(x[i] % 2 == 0) {
          evenNumArray[index] = x[i];
          index++;
        }
      }
      return evenNumArray;
    }
}