// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// contract MockV3Aggreagtor {
//     uint256 public constant version = 0;

//     uint8 public decimals;
//     int256 public latestAnswer;
//     uint256 public latestTimestamp;
//     uint256 public latestRound;

//     mapping(uint256 => int256) public getAnswer;
//     mapping(uint256 => uint256) public getTimestamp;
//     mapping(uint256 => uint256) public getStartedAt;

//     constructor(uint8 _decimals, int256 _initialAnswer) {
//         decimals = _decimals;
//         updateAnswer(_initialAnswer);
//     }

//     function updateAsnwer(int256 _answer) public {
//         latestAnswer = _answer;
//         latestTimestamp = block.timestamp;
//         latestRound++;
//         getAnswer[latestRound] = _answer;
//         getTimestamp[latestRound] = block.timestamp;
//         getStartedAt[latestRound] = block.timestamp;
//     }

//     // function up
// }
