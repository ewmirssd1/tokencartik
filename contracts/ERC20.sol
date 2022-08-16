// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IERC20.sol";
import "./Ownable.sol";
import "./Context.sol";
import "./SafeMath.sol";


contract ERC20 is Context , Ownable , IERC20{
    using SafeMath for uint256;
    //mappings
    mapping (address => uint256) public _balances;
    mapping (address => mapping (address => uint256)) private _allowances;


    //strings
    string private _name;
    string private _symbol;

    //uints
    uint private _totalsuplluy;
    uint private _decimase;
  

    constructor (string memory name_ , string memory symbol_ , uint totalsuplluy_ , uint decimase_){
        _name = name_;
        _symbol = symbol_;
        _totalsuplluy = totalsuplluy_;
        _decimase = decimase_;
    }
    function _transfer(address from,address to,uint amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        uint fromBalance = _balances[from];
        require(fromBalance >= amount , "ERC20:transfer amount exceeds balance");

        _balances[from] = _balances[from].sub(amount);
        _balances[to] = _balances[to].add(amount);

        emit Transfer(from, to, amount);
    } 
    function _approve(address owner,address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;

        emit Approval(owner, spender, amount);

        
    }
    
    //functions
    function name () public view virtual  returns (string memory){
        return _name;
    }
    function symbol () public view virtual  returns (string memory){
        return _symbol;
    } 
    function decimase () public view virtual  returns (uint256){
        return 18;
    }
    function totalsuplluy () public view virtual override  returns(uint256){
     return _totalsuplluy;
    }
    function balanceOf (address account) public view virtual override returns (uint256){
        return _balances[account];
    }
    function transfer (address to , uint256 amount) public virtual override returns (bool){
        address from = _msgSender();
        _transfer(from ,to, amount);
        return true;
    }
    function allowance (address owner , address spender) public view virtual override  returns(uint256){
        return _allowances[owner][spender];
    }
    function approve (address spender , uint256 amount)public virtual override returns(bool){
    address owner = _msgSender();
    _approve(owner, spender, amount);
    return true;
    }
    function transferFrom (address from , address to , uint256 amount) public virtual override returns (bool){
        address spender = _msgSender();
        _transfer(from,to, amount);
        return true;
    }



}


