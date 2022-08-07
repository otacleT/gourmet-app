// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Gourmet {
    struct Info {
        string name;
    }
    mapping(address => Info) public eval;
    mapping(address => bool) public inserted;
    address[] public keys;

    function showStar() external view returns (Info memory) {
        return eval[msg.sender];
    }

    function setInfo(string memory _name) external {
        eval[msg.sender].name = _name;

        if (!inserted[msg.sender]) {
            inserted[msg.sender] = true;
            keys.push(msg.sender);
        }
    }
}
