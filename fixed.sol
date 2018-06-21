pragma solidity ^0.4.4;
//固定长度的数租
contract fixedTest {
  // 1 2 3 4 5 6 7 8 9 A B C D E F
  bytes1 public b1=0x6c;//刚好是八位 l->0110 1100 6
  bytes2 public b2=0x6c69;//li ->0110 1100 0110 1001
  //............
  bytes9 public b9=0x6c697975656368756e;//liyuechun
  bytes1 b10=0x6c;// 0110 1100 = 108
  bytes1 b11=0x69;// 0110 1001 = 105
  //比较运算符
  function test1() constant returns (bool) {
    return b10<=b11;
  }
  function test2() constant returns (bool) {
    return b10==b11;
  }
  function test3() constant returns (bool) {
    return b10>=b11;
  }
  function test4() constant returns (bool) {
    return b10!=b11;
  }
  //位操作符
  function test5() constant returns (bytes1){
    return b10 & b11;
    //0110 1100 ->0x6c
    //0110 1001 ->0x69
    //0110 1000 =0x68
  }
  function test6() constant returns (bytes1){
    return b10 | b11;
    //0110 1100 ->0x6c
    //0110 1001 ->0x69
    //0110 1101 ->0x6d
  }
  function test7() constant returns (bytes1){
    return ~b11;
    //0110 1001
    //1001 0110 ->0x96
  }
  function test8() constant returns (bytes1){
    return b10 << 1 ;
    //0110 1100 -> 0x6c
    //1001 1000 -> 0xd8

  }
  function test9() constant returns (bytes1){
    return b10 >> 1;
    //0110 1100 -> 0x6c
    //0011 0110 -> 0x36
  }
  //索引访问
  function test10() constant returns(bytes1) {
    return b9[6];
  }
  //length
  function lengthByte() constant returns(uint) {
    return b9.length;
  }
  //数组不可变
  //1、长度不可变 因为是自读属性
  //2、内容不可变   一旦被修改后都不可以修改

  function setLength(uint nub){
      /* b9.length=nub;
      bytes1 b=0x68;
      b9[1]=b; */ //这两种在编译的时候都出出现编译错误
  }

}
