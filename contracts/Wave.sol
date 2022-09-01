// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Wave {
  uint256 countWaves;
  mapping(address => uint) wavesMap;

  constructor() {
    console.log("Smart contract here");

  }

  function wave() public {
    countWaves += 1;
    wavesMap[msg.sender] = wavesMap[msg.sender] + 1;

    console.log("%s has waved", msg.sender);
  }

  function getTotalWaves() public view returns (uint256) {
    console.log("We have %d total waves", countWaves);
    return countWaves;
  }

  function getAddressWaveCount(address a) public view returns (uint) {
    console.log("Address %s has %d waves.", a, wavesMap[a]);
    return wavesMap[a];
  }

}
