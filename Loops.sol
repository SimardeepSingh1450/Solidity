// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Loops{
    //Loops -> if ,else ,for 

    //NOTE->We can access account address using -> msg.sender

    uint[] public numbers=[1,2,3,4,5,6,7,8,9,10];

    function countEvenNumbers() public view returns(uint){
        uint count=0;

        for(uint i=0;i<numbers.length;i++){
            if(isEvenNumber(numbers[i])){
                count++;
            }
        }
        return count;

    }

    function isEvenNumber(uint _value) public pure returns(bool){
        if(_value%2==0){
            return true;
        }else{
            return false;
        }
    }
}