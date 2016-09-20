pragma solidity ^0.4.0;

import 'Organization.sol';


/** @title Create DHO_Chain. */
contract DHO_Chain {

	//number of organizations in DHO_Chain
	uint numOrganizations;

	//Collect all organizations in DHO_Chain
	mapping ( uint => Organization ) organitations;

	/** @dev Create new organization.
	  * @param retifiers List of organization retifiers
	 */
	function registerOrganization() returns ( uint organizationID ) {
		organizationID = numOrganizations++;
		organizations[ organizationID ] = Organization( msg.sender );

		return organizationID;
	}
}