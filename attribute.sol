pragma solidity ^0.4.4;
//属性 状态变量
//行为/方法 合约里面的函数
contract Person {
  //private
  //public
  //internal  这是合约属性默认的访问权限
  //三者权限  public intrenal private

  uint internal _age;//声明一个属性
  uint _weight;
  uint private _height;
  uint public _money;  //使用public的时候会生出一个和属性名相同的get方法并且返回当前属性值
  //public 相当于下面的函数 最后以自定义的函数会覆盖public中的的get函数
  function _money() constant returns (uint) {
    return _money;
  }
}
