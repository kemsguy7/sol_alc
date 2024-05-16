// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    enum Choices {
        Yes,
        No
    }

    // TODO: create a vote struct and a public state variable
    struct Vote {
        Choices choice;
        address voter;
    }

    // TODO: create a public state variable: an array of votes
    Vote[] public votes;

    Vote public vote;

    function createVote(Choices choice) external view returns (Vote memory) {
        //Create an external, view function called createVote which takes Choices value as a parameter and returns an instance of type Vote.
        //
        return Vote(choice, msg.sender); //use the Choices value and the msg.sender as the values to create the vote.

        // TODO: add a new vote to the array of votes state variable

        votes.push(Vote(choice, msg.sender));
    }
}
