# EthProof Beginner Project

## Overview

MyToken is a simple Ethereum-based token contract written in Solidity. This contract allows you to create, mint, and burn tokens, maintaining a balance for each address.

## Features

1. **Token Details**: The contract stores public variables for the token name, abbreviation, and total supply.
2. **Balances Mapping**: Each address's balance is stored in a mapping.
3. **Mint Function**: This function allows the creation of new tokens and assigns them to a specified address.
4. **Burn Function**: This function destroys tokens from a specified address, ensuring that the address has enough balance to do so.

## Contract Details

### Public Variables

- `name`: The name of the token (e.g., "MyToken").
- `symbol`: The abbreviation of the token (e.g., "MTK").
- `totalSupply`: The total supply of the token.

### Mapping

- `balances`: A mapping of addresses to their respective token balances.

### Functions

#### mint

```
function mint(address _to, uint256 _amount) public
```

- **Description**: Mints new tokens and assigns them to the specified address.
- **Parameters**:
  - `_to`: The address to which the tokens will be assigned.
  - `_amount`: The number of tokens to mint.
- **Functionality**:
  - Increases the `totalSupply` by `_amount`.
  - Increases the balance of the specified address (`_to`) by `_amount`.

#### burn

```
function burn(address _from, uint256 _amount) public
```

- **Description**: Burns tokens from the specified address, reducing the total supply.
- **Parameters**:
  - `_from`: The address from which the tokens will be burned.
  - `_amount`: The number of tokens to burn.
- **Functionality**:
  - Requires that the balance of the specified address (`_from`) is greater than or equal to the amount to be burned.
  - Decreases the `totalSupply` by `_amount`.
  - Decreases the balance of the specified address (`_from`) by `_amount`.

## Usage

1. **Deploy the Contract**: Deploy the `MyToken` contract to the Ethereum blockchain using your preferred development environment (e.g., Remix, Truffle).
2. **Mint Tokens**: Use the `mint` function to create new tokens and assign them to an address.
3. **Burn Tokens**: Use the `burn` function to destroy tokens from an address, ensuring the address has enough balance.

## Example

```
// Deploy the contract
MyToken myToken = new MyToken();

// Mint 1000 tokens to address 0x123...
myToken.mint(0x123..., 1000);

// Check the balance of address 0x123...
uint256 balance = myToken.balances(0x123...); // Should be 1000

// Burn 500 tokens from address 0x123...
myToken.burn(0x123..., 500);

// Check the balance of address 0x123...
balance = myToken.balances(0x123...); // Should be 500
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
