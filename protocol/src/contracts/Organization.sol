pragma solidity ^0.4.0;

import 'OnlyOwner.sol';

/**@title The Organization Contract */
contract Organization {

    // Organization states
    enum State {
        CREATED,
        EMPTY,
        RETIFIED,
        REGISTERED,
        CLOSED
    }

    // Organization Struct
    struct OrganizationStruct {
        string name;
        string [] retifiers;
        uint balance;
        State state;
    }

    OrganizationStruct _organization;

    //Retifier creator;
    
    function Organization () {
        _organization.state = State.EMPTY; 
        // assume that caller is a retifier
        // creator = Retifier(msg.sender);
        // creatot.setOrganization(this);
    }

    //Check the state
    modifier atState(State _state) {
        if(_organization.state != _state) throw;
        _;
    }

    //** @dev move status to next step*/
    function nextState() internal {
        _organization.state = State(uint(_organization.state) + 1);
    }

    //function setBalance();
}