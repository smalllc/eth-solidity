pragma solidity ^0.4.4;
//uint分了很多中类型
//uint==uint256
//uint uint
//int8与uint
/**
int8 -> 8 有符号 +3 -8  如果第一位是1 那么就是一个负数
11111111~01111111 -(1+2+4+8+16+32+64)~(1+2+4+8+16+32+64) =-127~127 255
uint -> 8  无符号 3,4,67
111111111 -> 0->255
*/
//int16 1111111111111111~0111111111111111


contract Test {
    uint _a;
    uint _b;// 0000 0101
    uint _c;//
    int8 aa;
    int8 bb;
    function test(uint a) {
        _a = a;
    }

    function Test() {
        _b = 5;
        //0000 0101
        _c = 8;
        //0000 1000

        aa=5;
        bb=8;
    }
    //幂运算
    function  qiumi(uint8 b) constant returns (uint8) {
      return aa**b;//表示a的b次方
    }
    //左移
    function leftShift(uint b)  constant returns (uint8) {
      return a<<b;//a乘2的b次方
    }
    //右移
    function rightShift(uint b)  constant returns (uint8) {
      return a>>b;//a除2的b次方
    }

    function add() constant returns (int8) {
      return aa+bb;
    }
    function sub() constant returns (int8) {
      return aa-bb;
    }
    function mul() constant returns (int8) {
      return aa*bb;
    }
    function div() constant returns (int8) {
      return aa/bb;
    }
    function mol() constant returns (int8) {
      return aa%bb;
    }


    function yu() constant returns (uint) {
        return _b & _c;
        // 0000 0101
        // 0000 1000
        // 0000 0000 //有零就是零
    }

    function huo() constant returns (uint) {
        return _c | _b;
        // 0000 0101
        // 0000 1000
        // 0000 1101 //有1就是1
        //1+0+4+8=13
    }

    function yihuo() constant returns (uint) {
        return _c ^ _b;
        // 0000 0101
        // 0000 1000
        // 0000 1101 //都相同为0
    }


    function qufan() constant returns (uint) {
        return ~_b;
        // 0000 0101
        // 1111 1010
        //2+8+16+32+64+128=250
    }


    function setA(uint a) {
        _a = a;
    }

    function a() constant returns (uint) {
        return _a;
    }

    function testVar() constant returns (uint) {
        uint aa = 100;
        var bb = aa;
        return bb;
    }

    function testVar1() constant returns (uint) {
        uint a;
        //uint i 0~255
        for (var i = 0; i < 255; i++) {//最常见的一个类型坑
            a = i;
        }
        return a;
    }
    //字面量
    function testzimian1() constant returns(uint){
        uint8 a= 2**800-2**800+5;
        return a;
    }
    function test2zimian2() constant returns(uint8){
        uint8 a=111111111111111111-111111111111111100;
        return a;
    }

}
