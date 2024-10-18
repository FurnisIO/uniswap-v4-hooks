// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IGeomeanOracle} from "../../interfaces/IGeomeanOracle.sol";

contract GeomeanOracle is IGeomeanOracle {
    address public poolManager;

    constructor(address _poolManager) {
        poolManager = _poolManager;
    }

    function getValue() external pure override returns (uint256) {
        return 42;
    }
}