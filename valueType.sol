//Demo_two 值类型 与 引用类型
pragma solidity ^0.4.4;
contract valueType {
    uint _age;
    function valueType(uint age) {
      _age=age;
    }
    function f_test() {
      modify(_age);
    }
    function modify(uint age) {
      age=100;

    }
    function age() constant returns (uint) {
      return _age;
    }
}
