// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    mapping(address => bool) public members;

    function addMember(address member) external {
        members[member] = true;
    }

    function isMember(address member) external view returns (bool) {
        return members[member];
    }

    function removeMember(address member) external {
        members[member] = false;
    }
}
