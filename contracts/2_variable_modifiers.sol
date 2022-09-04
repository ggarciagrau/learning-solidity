// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract VariableModifiers {

    // Integer values without sign (uint)
    uint a;
    uint8 b = 255;
    uint16 public c = 811;

    // Integer values with sign (int)
    int d = -255;
    int32 public e = -255;

    // String
    string public surname;
    string name = "Roberto";
    string public pl = "Solidity";

    // Booleans
    bool boolean;
    bool public boolTrue = true;
    bool public boolFalse = false;

    // Bytes
    bytes32 testingBytes;
    bytes4 lessBytes;
    bytes8 eightBytes;
    bytes oldBytesCrash;
    
    // Hash Algorithm
    bytes32 public hash_keccak256 = keccak256(abi.encodePacked(name, surname));
    bytes32 public hash_sha256 = sha256(abi.encodePacked("Henlo world", int(32432432), msg.sender));
    bytes20 public hash_ripemd160 = ripemd160("Henlo world");

    // Address
    address myAddress;
    address public friendAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public owner = msg.sender;

    // Enumerates
    enum tokens {ADA, ETHER, BNB, BTC}
    tokens public constant defaultChoice = tokens.BTC;
    tokens public state;

    function changeToEther() public {
        state = tokens.ETHER;
    }

    function changeToAda() public {
        state = tokens.ADA;
    }

    function changeToBNB() public {
        state = tokens.BNB;
    }

    function changeToBTC() public {
        state = tokens.BTC;
    }
}