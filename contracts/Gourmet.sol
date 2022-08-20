// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Gourmet {
    struct Info {
        string name;
        string category;
        string address_ja;
        int256 latitude;
        int256 longitude;
        uint256 star;
    }

    event NewMap(
        string name,
        string category,
        string address_ja,
        int256 latitude,
        int256 longitude,
        uint256 star
    );
    mapping(address => Info) public eval;

    function addMap(
        string calldata _name,
        string calldata _category,
        string calldata _address_ja,
        int256 _latitude,
        int256 _longitude,
        uint256 _star
    ) external {
        Info storage _eval = eval[msg.sender];
        _eval.name = _name;
        _eval.category = _category;
        _eval.address_ja = _address_ja;
        _eval.latitude = _latitude;
        _eval.longitude = _longitude;
        _eval.star = _star;
        emit NewMap(
            _name,
            _category,
            _address_ja,
            _latitude,
            _longitude,
            _star
        );
    }
}
