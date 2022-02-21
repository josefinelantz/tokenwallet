// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
 
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
/**
 * @title Moolah Coin
 * @dev Ownable ERC20 token
 */
contract MoolahCoin is ERC20Capped, Ownable {
  constructor() 
  ERC20("Moolah Coin", "MC") 
  ERC20Capped(10000000000) payable {
  }
}
