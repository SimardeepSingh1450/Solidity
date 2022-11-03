// SPDX-License-Identifier: MIT
//Ether - pay smart contracts
//Modifiers
//Visibility
//Events
//Enums

pragma solidity ^0.6.0;

contract HotelRoom{

    //Room is vacant or occupied
    enum Statuses {
        Vacant,
        Occupied
        }

    Statuses currentStatus;

    //EVENTS -> An event is an inheritable member of the contract, which stores the arguments passed in the transaction logs when emitted
// The blockchain stores transactions in the unit of blocks. Transactions are defined differently per blockchain system; it commonly represents a single transfer of cryptocurrency values.
event Occupy(address _occupant,uint _value);

    address payable public owner;

    constructor() public{
        owner=msg.sender;
        currentStatus=Statuses.Vacant;
    }

    modifier onlyWhileVacant{
        require(currentStatus==Statuses.Vacant,"Currently Occupied"); 
        _;//We need to end modifiers with _; 
    }

    modifier costs (uint _amount){
        require(msg.value>=_amount,"Not enough ether provided"); 
        _;
    }
    
    // function Book() public payable onlyWhileVacant costs(2 ether){
        receive() external payable onlyWhileVacant costs(2 ether){ //recieve() and external keywords are used to accept ethereum 

        //Using the require keyword to stop the execution of code if conditions of require are not met :
        //check price:
        // require(msg.value>=2 ether,"Not enough ether provided"); //We used modifier(costs) as middlewares to satisfy the condition and then run this ...

        //check status of room:
        // require(currentStatus==Statuses.Vacant,"Currently Occupied"); //We used modifier(onlyWhileVacant) as middlewares to satisfy the condition and then run this ...

        currentStatus=Statuses.Occupied;
        owner.transfer(msg.value);

        emit Occupy(msg.sender,msg.value);

    }
}