pragma solidity ^0.4.19;

import "/home/hjwang/Tools/ContraMaster/contracts/BountyHunt.sol";

contract Attack_BountyHunt3 {

  BountyHunt public target_contract;

  function Attack_BountyHunt3(address _targetContract) public payable {
      target_contract = BountyHunt(_targetContract);
  } 

  function vultron_claimBounty() public {
    target_contract.claimBounty();
  } 

  function vultron_transferBounty(address to, uint256 value) public {
    target_contract.transferBounty(to, value);
  } 

  function vultron_grantBounty(uint256 vultron_amount, address beneficiary, uint256 amount) public payable{
    target_contract.grantBounty.value(vultron_amount)(beneficiary, amount);
  } 

  function() public payable {
    revert();
  }
} 
