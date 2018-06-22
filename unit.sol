pragma solidity ^0.4.24;
/*
一个ether是一个单位
1 ether = 1000 finney
1 ether = 1000000 szabo
1 ether = 10 ** 18 wei

*/
contract Units {
  //单位变量
  uint a = 1 ether;
  uint b = 10 ** 18 wei;
  uint c = 1000 finney;
  uint d = 1000000 szabo;

  function isTrueAEquleToB() view public returns (bool) {

      return a == b;
  }

  function isTrueAEquleToC() view public returns (bool) {

      return a == c;
  }

  function isTrueAEquleToD() view public returns (bool) {

      return a == d;
  }
  //时间的全局变量   时间都是全局变量
  function test1() pure public returns (bool) {
        return 1 == 1 seconds;
    }
    function test2() pure public returns (bool) {
        return 1 minutes == 60 seconds;
    }
    function test3() pure public returns (bool) {
        return 1 hours == 60 minutes;
    }
    function test4() pure public returns (bool) {
        return 1 days == 24 hours;
    }
    function test5() pure public returns (bool) {
        return 1 weeks == 7 days;
    }
    function test6() pure public returns (bool) {
        return 1 years == 365 days;
    }
  //错误的处理
  //在4.10之前都是用的throw来抛出错误但是后面都不会使用到这个使用的是断言 性能最优的应该是revert
  /* assert(bool condition)：不满足条件，将抛出异常
  require(bool condition)：不满足条件，将抛出异常
  revert() 抛出异常
  这些都是可以直接使用的因为都是全局变量
  4.10之前采用的的方法
  address owner;
    function useSuperPowers(){
        if (msg.sender != owner) {
            throw;
        }
    }
  4.10后面版本采用的方法是
  if(msg.sender != owner) { revert(); }
      assert(msg.sender == owner);
      require(msg.sender == owner);
  */

}
