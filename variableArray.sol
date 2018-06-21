pragma solidity ^0.4.4;
/*可变数租*/
contract variableArrays {
   //在可变数组中solidity可以使用new关键字来划分内存空间
   //string是动态可变的动态数组 bytes也是动态数组
   //常规的字符串转换成bytes stringtobyte
   //string没有提供length方法
   bytes9 public b9=0x736d616c6c6363;//smallc
   string public name="smallcc";
   //特殊字符串的转换
   string public _username="a!+&ha/呆小川";
   //汉字对于字符 //一个汉字占三个字符
   //使用new关键字来创建数组
   bytes public b=new bytes(1);//0x00 空串
   function blength() constant returns(uint){
     return b.length;
   }
   //可变的数组中内容也是可以改变的
   function setBlength(uint numb)  {
    b.length=numb;
   }
   function setIndexBytes(byte data,uint index) {
     b[index]=data;
   }
   function clearBytes() {
     //两种方法 1. b.length=0;
     //2.调用内置关键字
     delete b;
   }
   // 可变数组的定长 push方法
   bytes public bb=new bytes(2); //创建一个长度为2的字节数组
   //设置字节数组的长度
   function setbblength(uint len) {
     bb.length=len;
   }
   //返回字节数组的长度
   function getBBlength() constant returns (uint) {
     return bb.length;
   }
   // push方法的使用
   function pushBB(byte data){
     bb.push(data);//会在末尾的地方天机一个字节
   }
   function getByteLength() constant returns (uint) {
     return b9.length;
   }
   function nameBytes() constant returns (bytes) {
     return bytes(name);
   }
   function nameLength() constant returns (uint) {
     return bytes(name).length;
   }
   function UsernameBytes() constant returns (bytes) {
     return bytes(_username);
   }
   function UsernameLength() constant returns (uint) {
     return bytes(_username).length;
   }
   function setNameFirstByte(bytes1 z) {
     bytes(name)[0]=z;
   }
}
