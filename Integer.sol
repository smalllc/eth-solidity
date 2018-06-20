pragma solidity ^0.4.4;
//uint分了很多中类型
//uint==uint256
//uint8 uint8
//int8与uint8
/**
int8 -> 8 有符号 +3 -8  如果第一位是1 那么就是一个负数
11111111~01111111 -(1+2+4+8+16+32+64)~(1+2+4+8+16+32+64) =-127~127 255
uint8 -> 8  无符号 3,4,67
111111111 -> 0->255
*/
//int16 1111111111111111~0111111111111111


contract Test {
  uint _a;
  function test(uint a) {
    _a=a;
  }
  function setA(uint a) {
    _a=a;
  }
  function a() constant returns (uint) {
    return _a;
  }
}
