pragma solidity ^0.4.4;

contract enums {
    //enum 关键字
    // ActionChoices 一个自定义的整型可以看作一个uint8   此方法中的枚举范围是0-3
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }
    ActionChoices _choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight(ActionChoices choice) public {
        _choice = choice;
    }

    function getChoice() constant public returns (ActionChoices) {
        return _choice;
    }

    function getDefaultChoice() pure public returns (uint) {
        return uint(defaultChoice);
    }
}
