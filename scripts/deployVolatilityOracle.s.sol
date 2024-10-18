// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import {VolatilityOracle} from "../contracts/hooks/examples/VolatilityOracle.sol";
import {IVolatilityOracle} from "../contracts/interfaces/IVolatilityOracle.sol";

import "forge-std/console2.sol";

contract DeployVolatilityOracle is Script {
    function setUp() public {}

    function run() public returns (IVolatilityOracle volatilityOracle) {
        vm.startBroadcast();

        volatilityOracle = new VolatilityOracle();
        console2.log("VolatilityOracle", address(volatilityOracle));

        vm.stopBroadcast();
    }
}
