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
    
    
   

const MyToken = artifacts.require('BasicToken');
Describe ('BasicToken', accounts => {
    it('has a total supply and a creator', async function () => {
    const owner = accounts[0]
    const myToken = await BasicToken.new({ from: owner })
    const creator = await basicToken.creator()
    const totalSupply = await basciToken.totalSupply()
    assert(creator === owner)
    assert(totalSupply.eq(10000))
    })
}
