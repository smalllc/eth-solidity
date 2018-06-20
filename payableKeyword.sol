pragma solidity ^0.4.4;
//通过transfer来转账
contract PayableKeyword {
  /* function deposit() payable {
    address account= 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
    account.transfer(msg.value);
  } */
  //Send()方法的风险
  //调用递归深度不能超过1024
  //如果gas不够，执行会失败
  //所以使用这个方法要检验成功与否
  //transfer相对send较安全
  function deposit() payable returns(bool){
    address account= 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
    return account.send(msg.value);
  }
  function getAccountBalance() constant returns (uint) {
    address account=0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
    return  account.balance;
  }
  function getOwnerBalance() constant returns (uint){
    address owner=msg.sender;
    return owner.balance;
  }
}
