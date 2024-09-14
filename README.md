# erc20token
Token Contract - TKN
This repository contains a simple ERC-20 token contract built using Solidity and OpenZeppelin libraries.

Overview
This smart contract implements a standard ERC-20 token named Token with the ticker symbol TKN. It leverages OpenZeppelin's trusted library for ERC-20 and includes ownership functionality.

Features
ERC-20 standard: This token follows the ERC-20 standard and can be integrated with any dApp or DeFi platform supporting this standard.
Ownable: The contract uses OpenZeppelin's Ownable feature to grant control over administrative functions to the initial owner.
Token Minting: Tokens are minted using the issueToken() function, which can only be called by the contract owner.
Smart Contract
solidity
Copy code


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

    function issueToken() public {
        _mint(msg.sender, 10000 * 10**18);
    }
}


Dependencies
The contract uses the following dependencies from OpenZeppelin:

ERC20.sol: Implements the ERC-20 standard for fungible tokens.
Ownable.sol: Provides ownership control to the contract, restricting sensitive functions to the contract's owner.
Minting Function
The issueToken() function mints 10,000 TKN tokens to the caller’s wallet.
Each token has 18 decimal places.
Installation
Clone the repository:
bash
Copy code
git clone https://github.com/your-username/token-contract.git
cd token-contract
Install dependencies via npm or yarn:
bash
Copy code
npm install @openzeppelin/contracts
Compile the smart contract:
bash
Copy code
npx hardhat compile
Usage
To deploy the contract on a testnet like Sepolia or localhost:

Add your network configuration in hardhat.config.js.

Deploy the contract by running:

bash
Copy code
npx hardhat run scripts/deploy.js --network sepolia
Use the contract address to interact with it, either through Remix, a frontend dApp, or a blockchain explorer like Etherscan.
License
This project is licensed under the MIT License. See the LICENSE file for more details.