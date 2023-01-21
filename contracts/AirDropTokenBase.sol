// contracts/AirDropTokenBase.sol
// SPDX-License-Identifier: MIT
// Example Contract by 13XLabs | https://www.13xlabs.com/
pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract AirDropTokenBase is Ownable {    
    constructor() {}
    
    /**
     * distributeToken: distribute token to multiple addresses
     * emergencyWithdrawal: withdraw token from contract to owner address
     * _token: token address
     * _addr: array of address
     * _amount: array of amount
     * You must approve token and transfer token to contract address before calling distributeToken function
     */

    function distributeToken(address _token, address[] calldata _addr, uint256[] calldata _amount) external onlyOwner {
        for(uint i=0; i< _addr.length; i++){
            IERC20(_token).transfer(_addr[i], _amount[i]);
        }
    }
    
     /**
     * Below emergency functions will be never used in normal situations.
     * These function is only prepared for emergency case such as smart contract hacking Vulnerability or smart contract abolishment
     * Withdrawn fund by these function cannot belong to any operators or owners.
     * Withdrawn fund should be distributed to individual accounts having original ownership of withdrawn fund.
     */
    function emergencyWithdrawal(address _token, uint256 _amount) public onlyOwner {
        require(IERC20(_token).transfer(msg.sender, _amount));
    }    
}