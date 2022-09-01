// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title OnChainMath
/// @notice Small collection of math helpers for on-chain usage.
library OnChainMath {
    /// @notice Safe average of two unsigned integers without overflow.
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a & b) + (a ^ b) / 2 avoids overflow compared to (a + b) / 2
        return (a & b) + ((a ^ b) >> 1);
    }

    /// @notice Returns the minimum of two unsigned integers.
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /// @notice Returns the maximum of two unsigned integers.
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }
}
