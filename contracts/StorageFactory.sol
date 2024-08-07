// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        // How does the storage factory know the simple storage?
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}