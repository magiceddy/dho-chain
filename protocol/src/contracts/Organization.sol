pragma solidity ^0.4.0;

import 'OnlyOwner.sol';

/**@title The Organization Contract */
contract Organization {
  /*  
    //list of all Organization retidield
    Retifield [] retifields;

    // name of the Organization
    String name;

    // Balance of Organization
    uint balance;

    // List of Retifield
    Retifier [] retifiers;

    // status of Organization
    State public state = State.EMPTY;
    */

    // Organization states
    enum State {
        CREATED,
        EMPTY,
        RETIFIED,
        REGISTERED,
        CLOSED
    }

    // Organization Struct
    struct OrganizationRequest {
        String name,
        String [] retifiers,
        uint balance,
        State state = State.CREATED;
    }
    
    function Organization () returns (address contractAddress) {
        nextState();
        return this.address;
    }

    //Check the state
    modifier atState(State _state) {
        if(state != _state) throw;
        _;
    }

    //** @dev move status to next step*/
    function nextState() internal {
        state = State(uint(state) + 1);
    }

    function setBalance();
}