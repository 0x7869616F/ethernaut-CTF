/*
目标是通过delegatecall调用delegate合约的pwn函数，从而实现修改第一个合约的owner
这涉及到call指定调用函数的操作，当给call传入的第一个参数时四个字节时，那么合约就会默认这四个字节是要调用的函数
它会把这四个字节当作函数的id来寻找调用函数，而一个函数的id在以太坊的函数选择器的生成规则里就是其函数签名的sha3的前4个字节，函数签名就是带有括号括起来的参数类型列表的函数名称。
*/
//所以只需要一行即可完成攻击：

contract.sendTransaction({data:web3.utils.sha3("pwn()").slice(0,10)});
