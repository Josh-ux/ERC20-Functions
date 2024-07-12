# JoshToken Smart Contract

## Overview

JoshToken is a simple ERC20 token implementation with additional functionality for minting and burning tokens. This contract is written in Solidity and uses OpenZeppelin's ERC20 standard.

## Features

- **Minting**: The contract owner can mint new tokens.
- **Burning**: Token holders can burn their own tokens.
- **Transfers**: Standard ERC20 token transfer functionality.
- **Ownership**: Only the owner can mint new tokens.

## Contract Details

- **Name**: Josh Token
- **Symbol**: Josh
- **Decimals**: 18

## State Variables

- `owner`: The address of the contract owner.
- `totalSupply`: The total supply of the tokens.
- `balances`: A mapping to hold the balance of each address.

## Events

- `TokensMinted(address indexed to, uint256 amount)`: Emitted when tokens are minted.
- `TokensBurned(address indexed from, uint256 amount)`: Emitted when tokens are burned.
- `Transfer(address indexed from, address indexed to, uint256 amount)`: Emitted when tokens are transferred.

## License
Feel free to customize the content as needed for your specific use case or additional functionalities.


