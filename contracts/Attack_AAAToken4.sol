pragma solidity ^0.4.19;

import "/home/osboxes/Develop/vultron/contracts/AAAToken.sol";

contract Attack_AAAToken4 {

  AAAToken public target_contract;

  function Attack_AAAToken4(address _targetContract) public payable {
      target_contract = AAAToken(_targetContract);
  } 

  function vultron_kill() public {
    target_contract.kill();
  } 

  function vultron_transferOwnership(address newOwner) public {
    target_contract.transferOwnership(newOwner);
  } 

  function vultron_transfer(address _to, uint256 _value) public {
    target_contract.transfer(_to, _value);
  } 

  function vultron_transferFrom(address _from, address _to, uint256 _value) public {
    target_contract.transferFrom(_from, _to, _value);
  } 

  function vultron_approve(address _spender, uint256 _value) public {
    target_contract.approve(_spender, _value);
  } 

  function vultron_approveAndCall(address _spender, uint256 _value, bytes _extraData) public {
    target_contract.approveAndCall(_spender, _value, _extraData);
  } 

  function vultron_transferOwnershipWithBalance(address newOwner) public {
    target_contract.transferOwnershipWithBalance(newOwner);
  } 

  function() public payable {
    revert();
  }
} 