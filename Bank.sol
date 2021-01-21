// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.6.0;

contract Bank
{	
   function storeEther() external payable
   { 
     require(msg.value >= 0.00001 ether); 
   }
  
   function getEther(address payable _receiver)  external
   {
     _receiver.transfer(address(this).balance); 
   }
}

