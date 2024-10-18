// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import {TWAMM} from "../contracts/hooks/examples/TWAMM.sol";
import {ITWAMM} from "../contracts/interfaces/ITWAMM.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";

import "forge-std/console2.sol";

contract DeployTWAMMHook is Script {
    function setUp() public {}

    function run() public returns (ITWAMM twammHook) {
        IPoolManager poolManager = IPoolManager(vm.envAddress("PoolManager"));
        uint256 expirationInterval = vm.envUint("ExpirationInterval");
        console2.log("PoolManager", address(poolManager));
        console2.log("ExpirationInterval", expirationInterval);

        vm.startBroadcast();
        twammHook = new TWAMM(poolManager, expirationInterval);
        console2.log("TWAMMHook", address(twammHook));

        vm.stopBroadcast();
    }
}
