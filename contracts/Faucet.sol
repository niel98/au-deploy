//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.28;

contract Faucet {
  
  function withdraw(uint _amount) public {
    // users can only withdraw .1 ETH at a time, feel free to change this!
    require(_amount <= 100000000000000000, 'Can only withdraw .1 ETH at a time');
    payable(msg.sender).transfer(_amount);
  }

  // fallback function
  receive() external payable {}
}