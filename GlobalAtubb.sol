pragma solidity ^0.4.4;
//address 主要是存放合约地址的 存放了20个字节 一共就有160位
//msg相当于全局变量
contract Test {
    address public _owner;
    uint  public _number;
  function Test() {
    _owner=msg.sender;//  全局变量 当前钱包的发起方地址
     _number=100;

  }
  function msgSender() constant returns(address){
      return msg.sender;
  }
    function setNumber(){
        _number+=5;
    }
    function setNumberadd2(){
        if(_owner==msg.sender){
         _number+=10;
        }
    }
    function returnContractAddress() constant returns (address) {
      return this;//0xd45968f99ce42c63b2ee728bf4ccf63c19166bc0（当前合约地址）  this是当前合约对象的指针
    }

}
