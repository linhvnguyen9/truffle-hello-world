// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;
// Modified Greeter contract. Based on example at https://www.ethereum.org/greeter.
contract HelloWorld {
    string greet;

    constructor (string memory _greet) {
        greet = _greet;
    }

    function greeting() public view returns (string memory) {
        return greet;
    }
}