// SPDX-License-Identifier: MIT
//Topics - Variables , Data Types and Custom Structs
pragma solidity ^0.6.0;

contract MyContract{
    //state variables:
    string public myString="Hello Simar";

    bytes32 public myBytes32="Hello aka Bytes";

    int public myInt=1;
    uint public MyCount=1;
    uint8 public mycount8=2;
    uint256 public mycount256=69;

    //Every user and smart contract connected to blockchain has an address :
    address public myAddress=0xb794F5eA0ba39494cE839613fffBA74279579268;

    struct Person{
        uint id;
        string name;
    }

    Person public myMan=Person(23,"SimarPerson");

    //local variables:
    function getValue() public pure returns(uint){
        uint value=1;
        return value;
    }
    
}