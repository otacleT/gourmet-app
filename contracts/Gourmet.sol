// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Gourmet {
    mapping(uint256 => uint256) star;
    event starLog(uint256 shopId, uint256 result);

    function Evaluate(uint256 _shopId, uint256 _uStar) external {
        // 初めて評価されるときはそのまま評価に影響
        uint256 result;
        if (star[_shopId] == 0) {
            result = _uStar;
        } else {
            // それ以外の場合は以下の式により評価を得る
            result = (star[_shopId] + _uStar) / 2;
        }
        star[_shopId] = result;
        // 検索しやすい状態でLOGに残したい
        emit starLog(_shopId, result);
    }

    fallback() external payable {}

    receive() external payable {}
}
