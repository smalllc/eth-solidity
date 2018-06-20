pragma solidity ^0.4.4;
//address 主要是存放合约地址的 存放了20个字节 一共就有160位
//address相当于uint160
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
}
