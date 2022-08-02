// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Grourmet {
    struct Info {
        string name;
        int256 latitude;
        int256 longitude;
        uint256 star;
    }
    mapping(address => Info) public eval;

    function showStar() external view returns (Info memory) {
        return eval[msg.sender];
    }

    function setInfo(
        string memory _name,
        int256 _latitude,
        int256 _longitude,
        uint256 _star
    ) external {
        eval[msg.sender].name = _name;
        eval[msg.sender].latitude = _latitude;
        eval[msg.sender].longitude = _longitude;
        eval[msg.sender].star = _star;
    }
}
