// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8; // 7to use the exact version of the solitdity
// pragma solidity ^0.8.7 // to use version equals to or above 0.8.7  (at least 0.8.7)
//pragma solidity >=0.8.7 <0.9.0; // to use version between 0.8.7 and 0.0.9.0

    // Data types
        // boolean, uint, int, address, bytes, string
        // unit, int comes in with a lot of sizes default is uint256 
        // variables have scope variables have a scope between the {} they are defined 
        
    // Access modifiers in solidity
        // public, private, external, internal
        // external -> this function can only be called outside of the contract 
        // internal -> this fucntion can only be called this and children contracts

    // Gas
        // the more computationally complex a contract is the more gas will be used 
    
    // view, pure function
        // view or pure fucntions do not allow the change in the state
        // they dont spend gas unless you call them inside a fucntion that spends gas 

    // EVM -> Ethereum Virtual Machine: can access and store information and data in six places 
        // 1. stack 
        // 2. storage -> (default) use this if you need the variable outside the fucntion decalration also 
        // We use this for arrays, structs or mappings 
        // 3. memory -> stores the varibale temporarily, use this if you do not need the data outside the fucntion declaration.  
        // 4. calldata -> temporary variables that can not be modified, similar to memory but can not be modified
        // 5. code
        // 6. logs

    // memory keyword
        // 

contract SimpleStorage {
   
    // this gets initialized by 0 
    uint num; 

    // structs
    struct People {
        uint256 favNumber;
        string name;
    }

    // array of type People
    People[] public people;

    // Mapping
    mapping(string => uint256) public nameToFavouriteNum;

    function store(uint _favNumber) public {
        num = _favNumber;
    }

    function retrieve() public view returns(uint256) {
        return num;
    }

    function addPeople(string memory _name, uint256 _favNumber) public {
        people.push(People({favNumber: _favNumber, name: _name}));
        nameToFavouriteNum[_name] = _favNumber;
    }
}

