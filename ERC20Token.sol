// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Replace MyToken With Your Token Name.
// MTK With Your Token Ticker.
// Change The Supply.

contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        // Mint 1000 tokens (with 18 decimals)
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}
