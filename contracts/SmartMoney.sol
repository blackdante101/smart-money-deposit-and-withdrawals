//SPDX-LICENSE-Identifier: MIT

pragma solidity 0.8.15;

contract SmartMoney{

    uint public balanceReceived;

    function deposit() public payable {
       balanceReceived += msg.value;
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdrawAllMoney() public payable {
        payable(msg.sender).transfer(getBalance());
    }

    function withdrawToAddress(address payable receipient) public {
        receipient.transfer(getBalance());
    }
}