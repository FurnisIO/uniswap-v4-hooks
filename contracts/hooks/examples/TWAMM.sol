// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ITWAMM} from "../../interfaces/ITWAMM.sol";
import {IPoolManager} from "../../interfaces/IPoolManager.sol";

contract TWAMM is ITWAMM {
    IPoolManager public poolManager;
    uint256 public expirationInterval;

    constructor(IPoolManager _poolManager, uint256 _expirationInterval) {
        poolManager = _poolManager;
        expirationInterval = _expirationInterval;
    }

    function getValue() external pure override returns (uint256) {
        return 42;
    }
}