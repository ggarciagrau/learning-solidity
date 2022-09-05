// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract MathOperations {

    function sum(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function substract(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    function product(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    function division(uint a, uint b) public pure returns (uint) {
        return a / b;
    }

    function pow(uint a, uint b) public pure returns (uint) {
        return a**b;
    }

    function module(uint a, uint b) public pure returns (uint) {
        return a % b;
    }

    function _addmod(uint a, uint b, uint c) public pure returns (uint) {
        return addmod(a, b, c);
    }

    // Double return
    function _mulmod(uint a, uint b, uint c) public pure returns (uint, uint) {
        return (mulmod(a, b, c), a*b%c);
    }
}