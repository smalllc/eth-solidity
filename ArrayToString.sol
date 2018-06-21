pragma solidity ^0.4.4;
/*
动态大小字节数组和固定大小字节数组向String转换
固定大小字节数组无法直接转换
*/
contract arrayToString{
  //这是固定长度之间的数组大小
  //bytes public b1=0x73;//固定字节的长度是由定义好的长度决定的
  bytes7 public bb=0x736d616c6c6363;
  function bblength() constant returns (uint) {
    return bb.length;
  }
  function btobytes2() constant returns(bytes2){
    return bytes2(bb);//result 0x736d
  }
  function btobytes32() constant returns(bytes32){
    return bytes32(bb);//result 0x736d616c6c636300000000000000000000000000000000000000000000000000 32位
  }
  //固定长度的数组间接的转换成可变长数组 类似与jdk中的Arraylist
  function zhuanhuan() constant returns (string) {
    bytes7 b=0x736d616c6c6363;//固定长度不能直接强转为动态字节数组转换
    bytes memory by=new bytes(b.length);
    for(uint i=0;i<b.length;i++){
      by[i]=b[i];
    }
    /* return by; */
    return string(by);
    //动态大小的字节数组可以强转为string类型的
  }

  //固定大小的字节数组强转为string 是不能转换的  要想转换就得通过下面的这个函数
   function bytesTostring(bytes32 x) constant returns(string){
     bytes memory bytesString =new bytes(32);
     uint charCount=0;
     for(uint i=0;i<bytesString.length;i++){
       byte char=byte(bytes32(uint(x)*2**(8*i)));
       /* byte char=byte(bytes32(uint(x)<<(8*i))); 这种问题也是可以解决的*/ 
       if(char!=0){
         bytesString[charCount]=char;
         charCount++;
       }
     }
     bytes memory bytesStringTrimmed=new bytes(charCount);
     for(i=0;i<charCount;i++){
       bytesStringTrimmed[i]=bytesString[i];
     }
     return string(bytesStringTrimmed);
   }
}
