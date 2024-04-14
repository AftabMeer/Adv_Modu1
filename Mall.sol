// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./ERC20Token.sol"; // Import the ERC20 token contract

contract TokenTrade {
    address public token;
    address public seller;
    uint256 public price;

    mapping(address => uint256) public balances;

    event Trade(address indexed buyer, uint256 amount);

    constructor(address _token, address _seller, uint256 _price) {
        token = _token;
        seller = _seller;
        price = _price;
    }

    receive() external payable {}

    function buyService() external {
        ERC20(token).transferFrom(msg.sender, seller, price);
        ERC20(token).burn(msg.sender, price);
        balances[msg.sender] += price;
        emit Trade(msg.sender, price);
    }
}
