pragma solidity ^0.4.20;
contract typeTuples {
  //元组解决的第一个问题可以返回多个不同类型的结果
  //
  uint[] data=[1,2,3,4,5];
  function f() constant returns (uint[]) {
    return data;
  }
  //由这个map可以看出map不能直接返回
  //如果是map的话 如果类型不是public那么方法不能使用同一个方法名
  mapping(uint=>string) public students;
  function typeTuples(){
      students[0]="le";
      students[1]="ne";
      students[2]="gg";
  }
  function students(uint id) constant returns(string){
      return students[id];
  }
  /* function students() constant returns(string name0,string name1){
        name1=students[1];
        name0=students[0];
        return (name0,name1);//等价  这就是元组可以返回多个字符串
    } */
   //元组返回不同的类型
   function f1() constant returns (uint ,bool , string) {
     return (110,true,"smallcc");
   }
    function f2() constant returns (uint,bool,string) {
        return (7,true,"smallcc");
    }
    function f3() constant returns(uint,bool,string){
        var (x,y,z)=f2();
        (x,y)=(2,false);
        return (x,y,z);
    }
    /* uint[]  data;
   function f1() constant returns (uint ,uint , uint) {
     return (15+56,14*5,44/4);
   }
   function f2() constant returns (uint,bool,string) {
       return (7,true,"smallcc");
   }
   function f3() constant returns(uint,bool,string){
       var (x,y,z)=f2();
       (x,y)=(2,false);
       return (x,y,z);
   }
   function f4()constant returns(uint[]){
       (data.length,)=f2();
       return data;
   }
   function f5() constant returns(uint[]){
       (,data[3])=f();//7,true,"smallcc"
       return data;
   } */
}
