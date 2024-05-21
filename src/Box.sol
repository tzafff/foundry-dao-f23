// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    event NumberChanged(uint256 number);

    function store(uint256 newnNumber) public onlyOwner {
        s_number = newnNumber;
        emit NumberChanged(newnNumber);
    }

    function getNumber() external view returns (uint256) {
        return s_number;
    }
}
