// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import {OnChainMath} from "../contracts/OnChainMath.sol";
import {FixedPointMath} from "../contracts/FixedPointMath.sol";

contract OnChainMathTest is Test {
    function testAverageSimple() public {
        uint256 a = 4;
        uint256 b = 10;
        uint256 avg = OnChainMath.average(a, b);
        assertEq(avg, 7);
    }

    function testMinAndMax() public {
        assertEq(OnChainMath.min(1, 2), 1);
        assertEq(OnChainMath.max(1, 2), 2);
    }

    function testDivWad() public {
        uint256 result = FixedPointMath.divWad(5e18, 10e18);
        assertEq(result, 0.5e18);
    }
}

