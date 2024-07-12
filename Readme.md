# JoshToken

JoshToken is a simple ERC20 token implementation with additional functionality for minting and burning tokens. This contract is written in Solidity and uses OpenZeppelin's ERC20 standard.

## Description

JoshToken is designed to provide a basic yet fully functional ERC20 token. It includes features such as minting new tokens by the contract owner, burning tokens by any token holder, and standard ERC20 token transfer functionality. The primary purpose of this token is to serve as a foundational example or a starting point for more complex token contracts.

## Getting Started

### Installing

To get started with JoshToken, you'll need to have the following tools installed:

- Node.js and npm (for dependency management)
- Foundry or Hardhat (for Ethereum development)
- Ganache (for local Ethereum blockchain)

Clone the repository and install the necessary dependencies:

```sh
git clone https://github.com/your-repo/JoshToken.git
cd JoshToken
npm install
```

## Executing Program
To deploy the contract to a local blockchain, follow these steps:

`Start Ganache`: Run Ganache to start a local blockchain.

`Compile the Contract`: Compile the Solidity contract.


```sh
npx hardhat compile
```
`Deploy the Contract`: Deploy the contract to the local blockchain.

```sh
npx hardhat console --network localhost
```

Example commands to interact with the contract:
```javascript
const JoshToken = await ethers.getContractFactory("JoshToken");
const token = await JoshToken.attach("deployed_contract_address");

// Mint tokens
await token.mint(1000, "recipient_address");

// Transfer tokens
await token.transfer("recipient_address", 100);

// Burn tokens
await token.burn(50);
```

## Help
If you encounter any issues, here are some common troubleshooting steps:

Contract Not Deploying: Ensure Ganache is running and you have correctly configured the network settings.
Insufficient Gas: Adjust the gas limit in your deployment script or configuration.
Failed Transactions: Check the token balances and ensure you have enough tokens for the transaction.
For additional help, you can run the following command to get more information about using Hardhat:

```sh
npx hardhat help
```
## Authors
@Josh

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.

