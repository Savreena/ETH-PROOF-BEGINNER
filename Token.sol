// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Token {

    // public variables here to keep information about tokens
    string public tokenName = "DATA";
    string public tokenAbbrv = "DTA";
    uint public totalSupply = 0;

    // mapping variables here
    mapping(address => uint) public balances;

    // mint function
    function mint (address _address, uint _value)public{
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function

     function burn (address _address, uint _value)public{
        if (balances[_address] >= _value) {
        totalSupply -= _value;  //decrease total supply
        balances[_address] -= _value; //Decrease the balance of the address
    }
     }
}
