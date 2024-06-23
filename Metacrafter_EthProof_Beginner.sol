// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables
    string public name = "TheOgToken";
    string public symbol = "TOT";
    uint256 public totalSupply;

    // Mapping to store balances
    mapping(address => uint256) public balances;

    // Mint function
    function mint(address _to, uint256 _amount) public {
        totalSupply += _amount;
        balances[_to] += _amount;
    }

    // Burn function
    function burn(address _from, uint256 _amount) public {
        require(balances[_from] >= _amount, "Insufficient balance to burn");
        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}
