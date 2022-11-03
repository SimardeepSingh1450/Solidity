// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Arrays{
    //Array
    uint[] public uintArray=[1,2,3];
    string[] public stringArray=["Banana","Orange","Apple"];
    string[] public myArray;
    uint[][] public array2d=[[1,2,3],[4,5,6],[7,8,9]];

    function addValue(string memory _value) public{
        myArray.push(_value);
    }

    function valueCount() public view returns(uint){
        return myArray.length;
    }

}