pragma solidity ^0.4.4;
contract Animal {
  uint _sex;//1为雌2为雄
  function Animal(){
    _sex=1;
  }
  function sex() constant returns(uint) {
    return _sex;
  }
}
contract Animal1 {
  //internal 是合约属性默认访问权限
  uint _weight;
  uint private _height;
  uint internal _age;//年龄
  uint public _money;
  //public
  function test() constant returns(uint){
    return _weight;
  }
  function test1() constant public returns (uint) {
    return _height;
  }
  function test2() constant internal returns (uint){
    return _age;
  }
  function test3() constant private returns (uint){
    return _money;
  }
  function Animal(){
    _age=18;
  }
  function age() constant returns(uint) {
    return _age;
  }
}
contract Dig is Aniaml,Animal1{
  function testWeight()constant returns(uint) {
    return _weight;
  }
  function testAge()constant returns(uint) {
    return _age;
  }
  function testMoney()constant returns(uint) {
    return _money;
  }
  function sex()constant returns(uint) {
    return 0;
  }
  function testHight()constant returns(uint) {
    return _hight;
  }

}
