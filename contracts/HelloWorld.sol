// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;
// Modified Greeter contract. Based on example at https://www.ethereum.org/greeter.

import "./HelloWorld2.sol";

contract HelloWorld {
    string greet;

    HelloWorld2 anotherContract;

    constructor (string memory _greet) {
        greet = _greet;
        anotherContract = new HelloWorld2(_greet);
    }

    function greeting() public view returns (string memory) {
        return greet;
    }

    function test() public view returns (address) {
        return msg.sender;
    }

    function test2() public view returns (address) {
        return anotherContract.test();
    }
}