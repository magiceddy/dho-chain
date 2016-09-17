pragma solidity ^0.4.0;

/** @title Create DHO_Chain. */
contract DHO_Chain {

	//number of organizations in DHO_Chain
	uint numOrganizations;

	//Collect all organizations in DHO_Chain
	mapping ( uint => Organization ) organitations;

	struct Organization {
		string name;
		uint balance;
	}


	/** @dev Create new organization.
	  * @param retifiers List of organization retifiers
	 */
	function newOrganization()
}