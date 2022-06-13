// SPDX-License-Identifier: METIN AKTUG from TURKEY
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/access/Ownable.sol";

contract GSM_IMSI_OTA_Update is Ownable {
    string public GsmCustomerACCOUNT;     //GsmOperatorName: Vodafone, GsmOperatorCode:02 
    string public ChangedGsmOperatorName; //GsmOperatorName: Turkcell 
    string[] public GsmPhoneNumber_ArrayIndex; //array elements are called with index numbers, 0,1,2,...
    int256 private GsmOperatorCode; //GsmOperatorCode in TURKEY, Turkcell:01, Vodafone:02, TurkTelekom:03-04

    constructor(string memory _GsmCustomerACCOUNT, int256 _GsmOperatorCode) {
        GsmCustomerACCOUNT = _GsmCustomerACCOUNT;
        GsmPhoneNumber_ArrayIndex.push(_GsmCustomerACCOUNT);
        GsmOperatorCode = _GsmOperatorCode;
    }

            //first of all change your account number (ACCOUNT GUI)
            //To use this function, you need to change your wallet account with "changeOwnersName" function
            //GSM Operator change requests of this account holder GSM customer can be written as required. 
    function addGsmPhoneNumber_Update_IMSI (string memory _addGsmPhoneNumber) public {
        GsmPhoneNumber_ArrayIndex.push(_addGsmPhoneNumber);
    }


    //Indicates whether a record exists in the array
    function isAdded(string memory _name) public view returns (bool) {
        for (uint256 i = 0; i < GsmPhoneNumber_ArrayIndex.length; i++) {
            if (
                keccak256(abi.encodePacked((_name))) ==
                keccak256(abi.encodePacked((GsmPhoneNumber_ArrayIndex[i])))
            ) return true;
        }
        return false;
    }

    //array elements are called with index numbers, 0,1,2,...
    function getGsmPhoneNumber_IMSI() public view returns (string[] memory) {
        return GsmPhoneNumber_ArrayIndex;
    }

    //counts how many records are in the array
    function Count_GsmPhoneNumber_IMSI() public view returns (uint256) {
        return GsmPhoneNumber_ArrayIndex.length;
    }

    //each OwnerName is a GSM customer
    //With its own accout number, the GSM Operator records the company change request in the blockchain.
    function ChangeGsmOperatorName(string memory _changeOwnersName) public onlyOwner {
        ChangedGsmOperatorName = _changeOwnersName;
    }
}
