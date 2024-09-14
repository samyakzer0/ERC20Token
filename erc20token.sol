// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Declare Contract.
// Rename Accordingly.

contract Token is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Token", "TKN")
        Ownable(initialOwner)
    {}
  
    // Mention The Total Supply For Ticker.

function issueToken() public{
        _mint(msg.sender, 10000*10**18);
    }
}