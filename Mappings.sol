// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Mappings{
    //Mappings:
    mapping(uint=>string) public names;
    mapping(uint=>Book) public books;

    struct Book{
        string title;
        string author;
    }

    constructor() public{
        names[1]="Hello";
        names[2]="World";
    }

    function addBook(uint _id,string memory _title,string memory _author) public{
        books[_id]=Book(_title,_author);
    }
}