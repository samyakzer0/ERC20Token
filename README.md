
---

# ERC-20 Token 🪙

This is a simple ERC-20 token implementation based on the Solidity programming language, utilizing OpenZeppelin's secure and audited contracts. This token serves as an example for deploying ERC-20 compliant tokens on the Ethereum blockchain.

## Features
- **ERC-20 Standard**: Fully compliant with the ERC-20 token standard.
- **Minting**: Initial supply of tokens is minted upon deployment.
- **Custom Token Name and Symbol**: Easily customizable token details.

### Key Components
- **Token Name**: "MyToken"
- **Token Symbol**: "MTK"
- **Initial Supply**: 1000 tokens minted to the deployer’s address.

## Getting Started

### Prerequisites
- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)
- [Hardhat](https://hardhat.org/) or [Truffle](https://www.trufflesuite.com/)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/mytoken.git
   cd mytoken
   ```

2. Install dependencies:

   ```bash
   npm install @openzeppelin/contracts
   ```

### Deployment

1. Compile the smart contract:

   For **Hardhat**:
   ```bash
   npx hardhat compile
   ```

2. Deploy the contract:

   Create a deployment script in the `scripts` folder (e.g., `deploy.js`):

   ```javascript
   const hre = require("hardhat");

   async function main() {
       const MyToken = await hre.ethers.getContractFactory("MyToken");
       const myToken = await MyToken.deploy();
       await myToken.deployed();
       console.log("MyToken deployed to:", myToken.address);
   }

   main()
       .then(() => process.exit(0))
       .catch((error) => {
           console.error(error);
           process.exit(1);
       });
   ```

   Run the deployment script:

   ```bash
   npx hardhat run scripts/deploy.js --network <your_network>
   ```

## License
This project is licensed under the MIT License.

---
