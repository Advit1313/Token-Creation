# TokenCreation

This Solidity contract implements a basic ERC20-like This README provides a brief overview of the Token smart contract implemented in Solidity. The contract allows minting and burning tokens, and tracks user balances.

## **Contract Details**

**Variables**

tokenName: "Aditya"
tokenAbbrv: "1327"
totalSupply: Total tokens in circulation

Mapping
balances: Maps addresses to token balances

Functions
mint(address _to, uint256 _value)
Mints new tokens and assigns them to the specified address.

Parameters:

_to: Recipient address
_value: Amount of tokens to mint
Logic:

Increases totalSupply and _to's balance by _value

burn(uint256 _value)
Burns tokens from the caller's balance.

Parameters:

_value: Amount of tokens to burn
Logic:

Decreases totalSupply and caller's balance by _value
Requires caller's balance to be at least _value
