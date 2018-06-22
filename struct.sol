pragma solidity ^0.4.4;
contract structTest {
  struct Person{
      uint age;
      uint Idcode;
      string name;
  }
    //初始化结构体
    //一种类似java的类构造
    Person person1=Person(11,11,"小三");
    Person person2=Person(22,22,"匿名");
    //这种是js中的json创建
    Person person3=Person({age:45,Idcode:45,name:"晓风过境"});
    function structTest() {
       Person [] memory person =new Person[](3);
       person[0] = person1;
       person[1] = person2;
       person[2] = person3;
     }
     function f() {
       Person memory person = Person(11,22,"smallcc");
     }
}
