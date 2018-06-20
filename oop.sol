pragma solidity ^0.4.4;
/**
  pragma：版本声明
  solidity： 开发语言
  ^0.4.4:当前合约的版本，0.4代表主版本 .44代表的是修复bug的升级版
  ^:向上兼容，0.4.4~0.4.9可以对我们当前代码进行编译
*/
//可以理解为 class Person extends contract
contract Person{ //声明一个合约
  uint _height;//声明一个变量 身高
  uint _age; //年龄
  string _name;//姓名
  address _owner;//代表合约的拥有者
  function Person() {//方法名和合约名就属于构造函数，在创建对象的时候构造函数会自动被调用
    _height=180;
    _age=29;
    _owner=msg.sender;
    _name="smallcc";
  }
  //setting 可以修改hight
  function setHight(uint height) {
    _height=height;
  }
  //get方法 读取height  constant : 代表的是方法只读
  function height() constant returns(uint){
    return _height;
  }
  //set()
  function setName(string name) {
    _name=name;
  }
  //get()
  function getName() constant returns (string) {
    return _name;
  }
  //set()
  function  owner() constant returns(address) {
    return msg.sender;
  }
  //析构函数 销毁函数
  function kill() {
    if(_owner==msg.sender){
      selfdestruct(_owner);  //msg 代表全局 sender代表当前的合约
    }
  }
}
