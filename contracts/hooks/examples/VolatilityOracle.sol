// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IVolatilityOracle} from "../../interfaces/IVolatilityOracle.sol";

contract VolatilityOracle is IVolatilityOracle {
    function getValue() external pure returns (uint256) {
        return 42;
    }
}