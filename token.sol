// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract TokenContract {

    string public tokenName="Ankush";
    string public tokenSymbol="ABCD";
    uint256 public totalSupply=0;

    mapping(address => uint256) public balances;

    function mint(address _to, uint256 _value) external {
        totalSupply += _value;
        balances[_to] += _value;
    }

    function burn(uint256 _value) external {
        require(balances[msg.sender] >= _value, "Low balance");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}
