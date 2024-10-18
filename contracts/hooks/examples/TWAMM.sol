// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ITWAMM} from "../../interfaces/ITWAMM.sol";

contract TWAMM is ITWAMM {
    function getValue() external pure override returns (uint256) {
        return 42;
    }
}