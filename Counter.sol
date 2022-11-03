// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Counter{

    // uint count;

    // constructor() public{
    //     count=0;
    // }

    // function getCount() public view returns(uint){
    //     return count;
    // }


    //Using public with variable to access anywhere:
    uint public count=1;

    // function incrementCount() public{
    //     count=count+1;
    // }

    //Using increment operator
    function incrementCount() public{
        count++;
    }

}