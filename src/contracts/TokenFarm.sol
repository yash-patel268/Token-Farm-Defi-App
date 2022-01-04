pragma solidity ^0.5.0;

import "./DappToken.sol";
import "./DaiToken.sol";

contract TokenFarm{
    string public name = "Dapp Token Farm";
    DappToken public dappToken;
    DaiToken public daiToken;

    constructor(DappToken _dappToken, DaiToken _daiToken) public{
        dappToken = _dappToken;
        daiToken = _daiToken;
    }

    //Stake tokens with contract
    function stakeTokens(uint _amount) public {
        //transfer Mock Dai tokens to this contract for staking
        daiToken.transferFrom(msg.sender, address(this), _amount);
    }
}