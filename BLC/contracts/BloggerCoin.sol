pragma solidity ^0.4.23;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract BloggerCoin is StandardToken {
  string public name = "BloggerCoin";
  string public symbol = "BLC";
  uint8 public decimals = 4;
  uint256 public INITIAL_SUPPLY = 666666;
  uint256 totalSupply_;
  function BloggerCoin() {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
  function totalSupply() public view returns (uint256){
      return totalSupply_;
  }
}
