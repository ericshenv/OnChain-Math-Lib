// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title FixedPointMath
/// @notice Simple 18-decimal fixed point helpers for small projects.
library FixedPointMath {
    uint256 internal constant ONE = 1e18;

    /// @notice Multiplies two 18-decimal fixed point numbers.
    function mulWad(uint256 x, uint256 y) internal pure returns (uint256) {
        // (x * y) / 1e18 with a small rounding toward zero
        return (x * y) / ONE;
    }

    /// @notice Divides x by y assuming both are 18-decimal fixed point.
    function divWad(uint256 x, uint256 y) internal pure returns (uint256) {
        require(y != 0, "DIV_BY_ZERO");
        return (x * ONE) / y;
    }
}

