pragma solidity ^0.4.4;
contract QuoteType{
  string _name;
  function QuoteType(string name) {//构造出一个初始化函数
    _name=name;
  }
  function f() {
    modify(_name);
  }
  //默认的类型都是memory就是值类型 会拷贝出来一份 而storage则是引用类型直接操作地址
  function modify(string storage name) internal {//添加internal说明此方法只能在内部调用
    bytes(name)[0]="S";
  }
  function name() constant returns(string) {
    return _name;
  }
}
