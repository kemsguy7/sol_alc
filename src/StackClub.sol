// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {
    address[] members;

    // errorNorMember();

    function isMember(address member) external view returns (bool) {
        //function isMember that takes an address and returns a bool indicating whether the address is a member or not.
        for (uint i = 0; i < members.length; i++) {
            if (members[i] == member) {
                return true;
            }
        }
        return false;
    }

    function addMember(address member) external {
        //which has a single parameter: an address for a new member. Add this address to the members array.
        members.push(member);
    }
}
