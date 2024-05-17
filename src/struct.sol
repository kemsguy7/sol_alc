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
    Vote none = Vote(Choices(0), address(0));

    // TODO: create a public state variable: an array of votes
    Vote[] public votes;

    function createVote(Choices choice) external view returns (Vote memory) {
        //Create an external, view function called createVote which takes Choices value as a parameter and returns an instance of type Vote.
        //
        return Vote(choice, msg.sender); //use the Choices value and the msg.sender as the values to create the vote.

        require(!hasVoted(msg.sender)); //one person can only vote once (the hasvoted function has to be changed to public for this to work, it was external before )

        // TODO: add a new vote to the array of votes state variable
        votes.push(Vote(choice, msg.sender));
    }

    function findVote(address voter) internal view returns (Vote storage) {
        for (uint i = 0; i < votes.length; i++) {
            //if the address of the voter in the array is same with that in this function
            if (votes[i].voter == voter) {
                return votes[i];
            }
        }
        return none;
    }

    function hasVoted(address voter) public view returns (bool) {
        return findVote(voter).voter == voter; //
    }

    function findChoice(address voter) external view returns (Choices) {
        return findVote(voter).choice;
    }
}
