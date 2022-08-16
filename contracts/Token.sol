// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./ERC20.sol";
contract cartik is ERC20 {
    
    constructor()ERC20 ("cartik","cartik",2100000 * 1e5,5){
         _balances[_msgSender()] = 2100000 * 1e5;

    }

}