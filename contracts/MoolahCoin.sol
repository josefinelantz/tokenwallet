// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
 
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Moolah Coin
 * @dev Ownable ERC20 token
 */
contract MoolahCoin is ERC20, Ownable {
    
	constructor() ERC20("Moolah Coin", "MC") payable {

  }
}