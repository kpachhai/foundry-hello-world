// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/Foo.sol";

contract FooTest is Test {
    Foo foo;

    // The state of the contract gets reset before each
    // test is run, with the `setUp()` function being called
    // each time after deployment. Think of this like a JavaScript
    // `beforeEach` block
    function setUp() public {
        foo = new Foo();
    }

    // A simple unit test
    // Functions prefixed with test are run as a test case
    function testDouble() public {
        require(foo.x() == 1);
        foo.double();
        require(foo.x() == 2);
    }

    // A failing unit test (function name starts with `testFail`)
    // The inverse of the test prefix - if the function does not revert, the test fails
    function testFailDouble() public {
        require(foo.x() == 1);
        foo.double();
        require(foo.x() == 4);
    }
}
