// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {OnChainMath} from "./OnChainMath.sol";
import {FixedPointMath} from "./FixedPointMath.sol";

/// @title ExampleUsage
/// @notice Tiny example contract that uses the math helpers.
contract ExampleUsage {
    using OnChainMath for uint256;

    uint256 public lastAverage;
    uint256 public lastRatio;

    function updateAverage(uint256 a, uint256 b) external {
        lastAverage = OnChainMath.average(a, b);
    }

    function updateRatio(uint256 numerator, uint256 denominator) external {
        lastRatio = FixedPointMath.divWad(numerator, denominator);
    }
}

