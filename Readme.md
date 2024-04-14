# ERC20Token and Mall Contracts

This repository contains Solidity smart contracts for an ERC20 token and a token trading contract called Mall.

## ERC20Token.sol

This contract implements the ERC20 token standard. It includes functionalities such as token transfers, approvals, allowance management, minting, and burning. Below are the key features of this contract:

- **totalSupply**: Tracks the total supply of tokens.
- **balanceOf**: Mapping to keep track of the token balance of each address.
- **allowance**: Mapping to manage allowances granted by token holders to spend tokens on their behalf.
- **name**, **symbol**, **decimals**: Metadata variables for the token.
- **transfer**: Function to transfer tokens from the sender's address to the recipient's address.
- **approve**: Function to approve a spender to spend a certain amount of tokens on behalf of the owner.
- **transferFrom**: Function to transfer tokens from one address to another on behalf of the owner, given the allowance.
- **mint**: Function to create new tokens and add them to the total supply.
- **burn**: Function to remove tokens from circulation by deducting them from the total supply.

## Mall.sol

This contract represents a token trading contract where users can buy services using ERC20 tokens. Key features of this contract include:

- **token**: Address of the ERC20 token contract.
- **seller**: Address of the seller who provides services in exchange for tokens.
- **price**: Price of the services offered by the seller in tokens.
- **balances**: Mapping to keep track of the token balances of buyers who purchased services.
- **Trade event**: Event emitted when services are successfully bought.
- **buyService()**: Function allowing users to buy services by transferring tokens to the seller and burning the purchased tokens from the buyer's balance.

### Usage

1. Deploy the ERC20Token contract.
2. Deploy the Mall contract, passing the address of the ERC20Token contract, seller's address, and price as constructor arguments.
3. Approve the Mall contract to spend tokens on behalf of buyers.
4. Users can then call the `buyService()` function on the Mall contract to purchase services by transferring tokens and burning the purchased tokens.
