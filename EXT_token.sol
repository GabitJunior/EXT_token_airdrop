// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ExpensiveToken is ERC20 {
   constructor(uint256 value) ERC20("ExpensiveToken", "EXT"){
       _mint(msg.sender, value*10**18);
   }
}

contract AirDrop {
   function airdrop(IERC20 _contractAddress, address[] memory _airAddress, uint256[] memory _amount) public {
       for (uint8 i=0; i<_airAddress.length; i++) {
           _contractAddress.transfer(_airAddress[i], _amount[i]);
       }
   }
}
