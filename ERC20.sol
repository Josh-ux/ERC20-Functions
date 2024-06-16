// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract JoshToken is ERC20 {
    // State variables
    address public owner;
    uint256 public totalSupply;
    string public constant NAME = "Josh Token";
    string public constant SYMBOL = "Josh";
    uint8 public constant DECIMALS = 18;

    // Mapping to hold balances
    mapping(address => uint256) balances;

    // Events
    event TokensMinted(address indexed to, uint256 amount);
    event TokensBurned(address indexed from, uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 amount);

    // Constructor sets the initial owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict functions to only the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "JoshToken: Caller is not the owner");
        _;
    }

    function mint(uint256 amount, address to) external onlyOwner {
        balances[to] += amount;
        totalSupply += amount;
        emit TokensMinted(to, amount);
        emit Transfer(address(0), to, amount);
    }

    function transfer(address to, uint256 amount) external returns (bool success) {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    function burn(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance to burn");
        balances[msg.sender] -= amount;
        totalSupply -= amount;
        emit TokensBurned(msg.sender, amount);
        emit Transfer(msg.sender, address(0), amount);
    }
}
