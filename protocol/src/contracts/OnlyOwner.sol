pragma solidity ^0.4.0;


/** @title Save and chack the owner. */
contract OnlyOwner {
    
    //owner address
    address owner;

    /** @dev register owner address. */
    function owner() {
        owner = msg.sender;
    }

    /** @dev chek if caller is the owner. */
     modifier onlyOwner() {
         if (msg.sender != owner)
            throw;
         _;
     }
}