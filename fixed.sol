pragma solidity ^0.4.4;
//固定长度的数租
contract fixedTest {
  // 1 2 3 4 5 6 7 8 9 A B C D E F
  bytes1 public b1=0x6c;//刚好是八位 l->0110 1100 6
  bytes2 public b2=0x6c69;//li ->0110 1100 0110 1001
  //............
  bytes9 public b3=0x6c697975656368756e;//liyuechun
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
}
