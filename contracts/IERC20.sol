// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
  //fuctions
  function totalsuplluy () external view returns(uint256);
  function balanceOf (address account) external view returns (uint256);
  function transfer (address to , uint256 amount) external returns (bool);
  function allowance (address owner , address spender) external view returns(uint256);
  function approve (address spender , uint256 amount)external returns(bool);
  function transferFrom (address from , address to , uint256 amount) external returns (bool);

  //events
  event Transfer(address from , address to , uint256 value);
  event Approval(address owner , address spender , uint256 value);

}