// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Gourmet {
    struct Info {
        string name;
        int256 latitude;
        int256 longitude;
        uint256 star;
    }

    event NewMap(string name, int256 latitude, int256 longitude, uint256 star);
    mapping(address => Info) public eval;

    function addMap(
        string calldata _name,
        int256 _latitude,
        int256 _longitude,
        uint256 _star
    ) external {
        Info storage _eval = eval[msg.sender];
        _eval.name = _name;
        _eval.latitude = _latitude;
        _eval.longitude = _longitude;
        _eval.star = _star;
        emit NewMap(_name, _latitude, _longitude, _star);
    }
}
