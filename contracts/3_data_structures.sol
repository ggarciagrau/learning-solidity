// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract DataStructures {

    // Data structure for customer
    struct Customer {
        uint id;
        string name;
        string email;
    }

    // Structure variables
    Customer customer1 = Customer(
        1,
        "Roberto",
        "roberto@roberto.com"
    );

    // Array of defined length
    uint[4] ages = [1];
    Customer[] public customers;

    // Append elements to array
    function arrayAppend(uint id, string memory _name, string memory _email) public {
        Customer memory newCustomer = Customer(
            id,
            _name,
            _email
        );
        customers.push(newCustomer);
    }

    // Mappings
    mapping(address => uint) public wallets;
    mapping(address => Customer[]) public customersAddress;

    function assignNumber(uint _number) public {
        wallets[msg.sender] = _number;
    }

    function assignList(Customer[] memory _customers) public {
        for (uint i = 0; i < _customers.length; i++) {
            customersAddress[msg.sender].push(_customers[i]);
        }
    }
}