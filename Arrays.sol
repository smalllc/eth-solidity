pragma solidity ^0.4.4;
/*
创建方式
二维数组
*/
contract Arrays {
  //固定长度的创建
  //固定长度数组的声明遍历数组 后面的数字没写就用0或空表示
  uint[5] i=[1,2,3,4,5];
  //二维数组的创建
  uint[2][2] array=[[1,2],[3,4]];

  uint[2][] array2=new uint[2][](5);
  function pushArray1(uint[2] _t) {
    array2.push(_t);
  }
  //返回数组的长度
  function _array() constant returns (uint) {
    return array.length;
  }
  function f(uint len){
    uint[] memory a =new uint[](7);//memory数组长度一旦创建是不可变的
    bytes memory b=new bytes(len);
    a[6]=8;//
    b[0]=0x6c;
    uint[] memory aa=new uint[](8);
  }
  bytes7 public b9=0x736d616c6c6363;
  byte[7] public aa=[byte(0x73),0x6d,0x61,0x6c,0x6c,0x63,0x63];
  byte[] public cc=new byte[](10);//这个写法和下面这个写法一模一样
  bytes bb=new bytes(10);
  function setb9Index() public {
    //错误不可修改
    //b9[5]=0x45;
  }
  function setAAIndex() public {
    aa[5]=0x45;
  }
  function setCC() public {
    for(uint i=0;i<b9.length;i++){
      cc.push(b9[i]);
    }
  }
  //此方法为操作固定长度数组的
  function changeContext(){//修改数组中的内容
    i[2]=6;
  }
  function sumI() constant returns (uint) {
    uint sum;
    for(uint j=0;j<i.length;j++){
      sum+=i[j];
    }
    return sum;
  }
  function changeLength() {
    i.length=7;//创建之后长度不可变  所以这段代码报类型错误
  }
  //通过push的方法来增加数据
  function pushI() returns(uint[]){
    uint[] temp;
    for(uint j=0;j<=i.length;j++){
      if(j==i.length){
        temp.push(6);
      }else{
        temp.push(i[j]);
      }
    }
    return temp;
  }

}
