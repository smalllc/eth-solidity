pragma solidity ^0.4.4;
contract HelloWorld {
   function test()  pure public  returns (string) {
     return "helloWorld";
   }
   function test1() constant  public  returns (string) {
     return "smallcc";
   }
   function test2(string s)   public  returns (string) {
     return s;
   }
}
