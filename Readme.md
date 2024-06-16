# ERC20 Functions
## Interacting with the Contract

Interact with the Josh Token contract using its ABI and address. You can use web3.js or ethers.js for transactions like transferring tokens, checking balances, and burning tokens.

## Contract Functions

- **Constructor**: Initializes the contract with the deployer as the owner.
- **mint(uint256 amount, address to)**: Mints `amount` tokens to the specified `to` address. Only callable by the owner.
- **transfer(address to, uint256 amount)**: Transfers `amount` tokens from the caller's balance to the `to` address. Returns `true` on success.
- **burn(uint256 amount)**: Burns `amount` tokens from the caller's balance. Reduces the total supply accordingly.
- **onlyOwner**: A modifier that restricts certain functions to be called only by the owner.

## Events

- **TokensMinted(address indexed to, uint256 amount)**: Emitted upon successful minting of tokens.
- **TokensBurned(address indexed from, uint256 amount)**: Emitted upon successful burning of tokens.
- **Transfer(address indexed from, address indexed to, uint256 amount)**: Emitted on every successful transfer of tokens.

This README provides a comprehensive guide to deploying and interacting with the Josh Token contract. For detailed implementation details, consult the contract's source code.
