//  SPDX-License-Identifier: MIT

//Version (major than)
pragma solidity ^0.8.4;

// Imports
import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";

// Declaration of the Smart contract
contract FirstContract is ERC721 {

    // Deployer direction
    address public owner;

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        owner = msg.sender;
    }
}