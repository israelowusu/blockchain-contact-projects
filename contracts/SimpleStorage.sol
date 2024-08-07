// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18; // this is the solidity version

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    uint256 myFavoriteNumber; // favoriteNumber gets initialized to 0 if no value is given

    // uint256[] listofFavoriteNumbers;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listofPeople; //[]

    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listofPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}