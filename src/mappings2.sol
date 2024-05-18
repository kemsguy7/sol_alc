// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    struct User {
        uint balance;
        bool isActive;
    }

    mapping(address => User) public users; // This is a mapping of addresses to User structs

    function createUser() external {
        // function should create a new user and associate it to the msg.sender address in the users mapping
        require(!users[msg.sender].isActive); // function is called with an address that is not associated with an active user. Otherwise, revert the call.

        users[msg.sender] = User(100, true); // The balance of the new user should be set to 100 and the isActive boolean should be set to true
    }

    function transfer(address to, uint amount) external {
        // Ensure that both addresses used in the transfer function have active users.
        require(users[msg.sender].isActive);
        require(users[to].isActive);

        // Ensure that the msg.sender has enough in their balance to make the transfer without going into a negative balance.
        require(users[msg.sender].balance >= amount);

        users[msg.sender].balance -= amount;
        users[to].balance += amount;
    }
}
