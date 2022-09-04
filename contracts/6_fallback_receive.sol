// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

// If data exits -> fallback
// If data not exits and receive exists -> receive
// If data not exists and receive not exists -> fallback

contract FallbackReceive {

    event log(string _name, address _sender, uint _amount, bytes _data);

    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
    }
     

    // receive() external payable {
    //     emit log("receive", msg.sender, msg.value, "");
    // }

}