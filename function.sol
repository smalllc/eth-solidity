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
      this._money;
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
    /* return this.test1(); */
    return test2();//直接访问内部函数什么都不加直接返回方法名

  }
}

contract Animal1 {
  uint _sex;//1为雌0为雄
  function Animal1() {
    _sex=1;
  }
  function sex()  constant returns(uint){
    return _sex;
  }
}
//继承 extends
contract Dig is Animal,Animal1 {
  function testWeight() constant returns(uint){
    return _weight;
  }
  function testHeight() constant returns(uint){
    return _height;
  }
  function testAge() constant returns(uint){
      return _age;
  }
  function testMoney() constant returns(uint){
      return _money;
  }

}
