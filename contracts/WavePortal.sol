// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] lastWavers;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        lastWavers.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        
        for (uint i=0; i<lastWavers.length; i++) {
            console.log("Last waver: %s", lastWavers[i]);
        }

        return totalWaves;
    }
}