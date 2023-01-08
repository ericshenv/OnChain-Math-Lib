# OnChain Math Lib

Small, experimental on-chain math helper library built as a solo side project.

The idea is to collect a few reusable arithmetic and fixed-point helpers that
are easy to audit and reuse across simple smart contracts.

## Goals

- Keep the code straightforward and well documented.
- Focus on safety around overflow and edge cases.
- Provide a couple of worked examples for integration.

## Layout

- `contracts/OnChainMath.sol` – small integer helpers.
- `contracts/FixedPointMath.sol` – 18-decimal fixed point helpers.
- `contracts/ExampleUsage.sol` – tiny example contract using the library.
- `test/OnChainMath.t.sol` – a couple of basic tests.

## Status

Very early work-in-progress. APIs and file layout may change as things get tried out.
