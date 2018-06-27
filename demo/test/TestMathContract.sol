import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MathContract.sol";

contract TestMathContract {
  function testAmulToBisRight() {
    MathContract meta = MathContract(DeployedAddresses.MathContract());//合约实例
    Assert.equal(meta.mulAToB(3,4),12,"3 * 4 不等于12？");
  }
}
//0x2eca6fcfef74e2c8d03fbaf0ff6712314c9bd58b
