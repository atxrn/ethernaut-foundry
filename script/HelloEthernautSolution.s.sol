// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/HelloEthernaut.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract HelloEthernautSolution is Script {

    HelloEthernaut public helloEthernaut = HelloEthernaut(0x4e611dA1Fd5Eaa04597dFD42c2e47188bF6BF57D);

    function run() external {
        string memory password = helloEthernaut.password();
        console.log("Password: ", password);
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        helloEthernaut.authenticate(password);
        vm.stopBroadcast();
    }
}

