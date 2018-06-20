pragma solidity ^0.4.4;
//address 主要是存放合约地址的 存放了20个字节 一共就有160位
//address相当于uint160
contract Test {
  uint160 _ownerUint;
  address _owner;
  address add1;
  address add2;

  function Test() {
    _owner=0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
    _ownerUint=1154414090619811796818182302139415280051214250812;
    add1=0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
    add2=0x583031d1113ad414f02576bd6afabfb302140225;
  }
  function owner() constant returns (address) {
    return _owner;
  }
  function ownerUint160 () constant returns (uint160) {
    return uint160(_owner); //1154414090619811796818182302139415280051214250812 这是十进制的数
  }
  function ownerUinttoAddress() constant returns (address){
    return address(_ownerUint);
  }
   //<=
   function test1() constant returns(bool){
       return add1<=add2;
   }
   //>=
   function test2() constant returns(bool){
       return add1>=add2;
   }
   //>0
   function test3() constant returns(bool){
       return add1>add2;
   }
   //!=
   function test4() constant returns(bool){
       return add1!=add2;
   }
   //>
   function test5() constant returns(bool){
       return add1>add2;
   }
   function getBalance(address add) constant returns(uint) {
     return add.balance;
   }
   function  getAddressCurr() constant returns(uint) {
     return this.balance;//查询余额
   }
}
