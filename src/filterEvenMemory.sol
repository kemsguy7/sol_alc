// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title
 * @author
 * @notice This contract filters even numbers from an array using a dynamic memory array to store the even numbers
 */

contract Contract {
    function filterEven(
        uint[] calldata x
    ) external pure returns (uint[] memory) {
        // determine the number of even numbers
        uint n; //storage variable for the number of even numbers
        for (uint i = 0; i < x.length; i++) {
            if (x[i] % 2 == 0) n++;
        }

        // create an array to fit the even numbers inside
        uint[] memory filtered = new uint[](n);

        // fill the array and return it
        uint filled = 0;
        for (uint i = 0; i < x.length; i++) {
            if (x[i] % 2 == 0) {
                filtered[filled] = x[i];
                filled++;
            }
        }
        return filtered;
    }
}
