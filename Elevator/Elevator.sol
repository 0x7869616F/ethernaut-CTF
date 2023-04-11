// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Building {
  function isLastFloor(uint) external returns (bool);
}

contract Elevator {
  bool public top;      //是否到达顶层
  uint public floor;    //所在的楼层

    //到达的楼层
  function goTo(uint _floor) public {
    Building building = Building(msg.sender);

    //如果不是最后一层,更新层数
    if (! building.isLastFloor(_floor)) {
      floor = _floor;
      //判断是不是顶层
      top = building.isLastFloor(floor);
    }
  }
}
