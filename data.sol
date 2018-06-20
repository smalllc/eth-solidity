pragma solidity ^0.4.4;
contract Test {
  uint _a;
  uint _b;
  bool _c;
  bool _d;
  function test(){
   _a=100;
   _b=120;
   _c=false;
   _d=true;
  }
  //! 逻辑非
  function fei()constant returns(bool){
    return (!_c);
  }
  // ||逻辑与
  function yu() constant returns(bool){
    return _c||_d;
  }
  // == 等于
  function dengyu() constant returns(bool){
    return _c==_d;
  }
  // ！= 不等于
  function budenyu() constant returns(bool){
    return _c!=_d;
  }
  // && 逻辑或
  function huo() constant returns(bool){
    return _c&&_d;
  }
}
