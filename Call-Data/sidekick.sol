// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
//encodeWithSignature will hash the function and send with variables
contract Sidekick {
    function sendAlert(address hero, uint enemies, bool armed) external {
        (bool success, ) = hero.call(
           abi.encodeWithSignature("alert(uint256,bool)", enemies, armed)
        );
        require(success);
    }
}

// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.4;

// contract Sidekick {
//     function sendAlert(address hero) external {
        
//         bytes4 signature = bytes4(keccak256("alert()"));

//         (bool success, ) = hero.call(abi.encodePacked(signature));

//         require(success);
//     }
// }