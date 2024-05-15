// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    function sum(uint[5] calldata x) external pure returns (uint total) {
        //this function takes an array of 5 elements and returns the sum of the elements
        for (uint i = 0; i < 5; i++) {
            total += x[i]; // add in sum of array
        }
    }

    //this function sums a dynamic array
    function dynamicSum(uint[] calldata x) external pure returns (uint total) {
        for (uint i = 0; i < x.length; i++) {
            total += x[i];
        }
    }
}
