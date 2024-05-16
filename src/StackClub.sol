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

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {
    address[] members;

    constructor() {
        members.push(msg.sender); //the deployer is the first member of the array ,this constructor does that
    }

    function isMember(address member) public view returns (bool) {
        for (uint i = 0; i < members.length; i++) {
            if (members[i] == member) {
                return true;
            }
        }
        return false;
    }

    function removeLastMember() external {
        require(isMember(msg.sender)); // check that the sender is a member
        members.pop();
    }

    function addMember(address member) external {
        require(isMember(msg.sender)); // check that the sender is a member
        members.push(member);
    }
}
