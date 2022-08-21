// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Gourmet {
    mapping(uint256 => uint256) star;
    event starLog(uint256 result);

    function Evaluate(uint256 _uStar, uint256 _shopId) external {
        uint256 result;
        if (star[_shopId] == 0) {
            result = _uStar;
        } else {
            result = (star[_shopId] + _uStar) / 2;
        }
        star[_shopId] = result;
        emit starLog(result);
    }
}
