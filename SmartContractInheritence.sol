// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Ownable{
    address owner;

    constructor() public{
        owner=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner,'You are not the owner');
        _;
    }
}

//USing the is keyword for inheritence:
contract MyContract is Ownable{
    string secret;
    constructor(string memory _secret) public{
        secret=_secret;
        super;//We use the super keyword inside the inherited contract constructor to get access to the parent contract constructor's properties
    }

    function getSecret() public view onlyOwner returns(string memory){
        return secret;
    }

}