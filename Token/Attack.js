//在 Solidity 中 (2**256 - 1) + 1 = 0 ， 0 - 1 = 2**256 - 1 。目标合约中如果我们传入的 value 大于 20，则 balances[msg.sender] - _value 会溢出变成极大数，如此可以顺利通过 require 检验，并使得发送者获得天量代币。
//只要向除了 player 地址外的任意地址转账超过 20 个代币即可完成攻击
contract.transfer(player_address, 21)
