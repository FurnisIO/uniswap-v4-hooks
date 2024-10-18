// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

interface IGeomeanOracle {
    function getValue() external pure returns (uint256);
}