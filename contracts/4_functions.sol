// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Functions {

    // Pure type functions
    function getName() public pure returns (string memory) {
        return "Mirlo";
    }

    // View type functions
    uint256 x = 100;
    function getNumber() public view returns (uint) {
        return x;
    }
}