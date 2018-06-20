pragma solidity ^0.4.4;
// 属性方法
//这是默认的属性 全是public
/**
加上private 和 internal 的方法就读不出来了

**/
contract Animal {

  uint internal _age;//声明一个属性
  uint _weight;
  uint private _height;
  uint public _money;

  function test() constant returns(uint){
      return _weight;
  }
  function test1() constant public returns(uint){
      return _height;
  }
  function test2() constant internal returns(uint){
      return _age;
  }
  function test3() constant private returns(uint){
      return _money;
  }
  function testInternal() constant returns(uint){
    //return this.test(); //用指针去访问只能访问public修饰的
    return this.test1();
  }
}
