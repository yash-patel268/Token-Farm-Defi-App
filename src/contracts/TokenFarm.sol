pragma solidity ^0.5.0;

import "./DappToken.sol";
import "./DaiToken.sol";

contract TokenFarm{
    string public name = "Dapp Token Farm";
    DappToken public dappToken;
    DaiToken public daiToken;
    address public owner;

    address[] public stakers;
    mapping(address => uint) public stakingBalance;
    mapping(address => bool) public hasStaked;
    mapping(address => bool) public isStaking;

    constructor(DappToken _dappToken, DaiToken _daiToken) public{
        dappToken = _dappToken;
        daiToken = _daiToken;
        owner = msg.sender;
    }

    //Stake tokens with contract
    function stakeTokens(uint _amount) public {
        //require amount greater than 0
        require(_amount > 0, "amount cannot be 0");

        //transfer Mock Dai tokens to this contract for staking
        daiToken.transferFrom(msg.sender, address(this), _amount);

        //update the balance of what is staked
        stakingBalance[msg.sender] = stakingBalance[msg.sender] + _amount;

        //add users address to stakers array if they havent been added already
        if(!hasStaked[msg.sender]){
            stakers.push(msg.sender);
        }

        //Staking status
        isStaking[msg.sender] = true;
        hasStaked[msg.sender] = true;
    }

    //Issuing tokens
    function issueTokens() public {
        //only owner can issue tokens
        require(msg.sender == owner, "caller must be the owner");

        //Issue tokens to all stakers
        for(uint i=0; i<stakers.length; i++){
            address recipient = stakers[i];
            uint balance = stakingBalance[recipient];
            if(balance > 0){
                dappToken.transfer(recipient, balance);
            }
        }
    }
}