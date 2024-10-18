// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import {TWAMM} from "../contracts/hooks/examples/TWAMM.sol";
import {ITWAMM} from "../contracts/interfaces/ITWAMM.sol";

import "forge-std/console2.sol";

contract DeployTWAMMHook is Script {
    function setUp() public {}

    function run() public returns (ITWAMM twammHook) {
        vm.startBroadcast();

        twammHook = new TWAMM();
        console2.log("TWAMMHook", address(twammHook));

        vm.stopBroadcast();
    }
}
