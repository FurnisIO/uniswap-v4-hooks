// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import {GeomeanOracle} from "../contracts/hooks/examples/GeomeanOracle.sol";
import {IGeomeanOracle} from "../contracts/interfaces/IGeomeanOracle.sol";

import "forge-std/console2.sol";

contract DeployGeomeanOracle is Script {
    function setUp() public {}

    function run() public returns (IGeomeanOracle geomeanOracle) {
        vm.startBroadcast();

        geomeanOracle = new GeomeanOracle();
        console2.log("GeomeanOracle", address(geomeanOracle));

        vm.stopBroadcast();
    }
}
