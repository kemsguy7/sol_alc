// SPDX-License-Identifier : MIT

pragma solidity ^0.8.19;

contract A {
    uint sum;

    // function storeSum(address b) external {
    //     sum = B(b).add(5, 10); //casting the address to B and telling it to behave like contract B
    // }

    //same function as above but can be written in another way the correct syntax
    function storeSum(B b) external {
        sum = b.add(5, 10); //casting the address to B and telling it to behave like contract B
    }
}

contract B {
    function add(uint x, uint y) external returns (uint) {
        return x + y;
    }
}
