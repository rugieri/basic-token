// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract BasicToken {
    uint256 totalSupply_;
    mapping (address => uint256) balances;
    constructor (uint256 _initialSupply) {
        totalSupply_=_initialSupply;
        balances [msg.sender] = _initialSupply;
    }
    function totalSupply()public view returns (uint256) {
        return totalSupply_;    
    }
    function balanceOf(address _owner)public view  returns (uint256) {
        return balances[_owner];
    }
    function transfer(address _to, uint256 _value)public returns (bool)
    {
        require(_to !=address(0));
        require(_value<=balances[msg.sender]);
        balances[msg.sender] = balances [msg.sender] - _value;
        balances[_to] - balances[_to] + _value;
        return true;
    }    
    
    
}   


