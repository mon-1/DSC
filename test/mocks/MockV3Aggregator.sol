//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract MockV3Aggregator {
    uint256 public constant version = 0;

    uint8 public decimals;
    int256 public latestAnswer;
    uint256 public latestTimestamp;
    uint256 public latestRound;

    mapping(uint256 => int256) public getAnswer;
    mapping(uint256 => uint256) public getTimestamp;
    mapping(uint256 => uint256) public getStartedAt;

    constructor(uint8 _decimals, int256 _initialAnswer) {
        decimals = _decimals;
        updateAnswer(_initialAnswer);
    }

    function updateAnswer(int256 _answer) public {
        latestAnswer = _answer;
        latestTimestamp = block.timestamp;
        latestRound++;
        getAnswer[latestRound] = _answer;
        getTimestamp[latestRound] = block.timestamp;
        getStartedAt[latestRound] = block.timestamp;
    }

    function updateRoundData(
        uint80 _roundId,
        int256 _answer,
        uint256 _timestamp,
        uint256 _startedAt
    ) public {
        latestRound = _roundId;
        latestAnswer = _answer;
        latestTimestamp = _timestamp;
        getAnswer[latestRound] = _answer;
        getTimestamp[latestRound] = _timestamp;
        getStartedAt[latestRound] = _startedAt;
    }

    function getRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 srartedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (
            uint80(latestRound),
            getAnswer[latestRound],
            getStartedAt[latestRound],
            getTimestamp[latestRound],
            uint80(latestRound)
        );
    }

    function decription() external pure returns (string memory) {
        return "v0.6/tests/MockV3Aggreagtor.sol";
    }
}
