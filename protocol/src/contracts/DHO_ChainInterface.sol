pragma solidity ^0.4.0;

contract DHO_ChainInterface {

	//number of organizations in DHO_Chain
	uint numOrganizations;

	//Collect all organizations in DHO_Chain
	mapping ( uint => Organization ) organitations;

	///@dev This function is used to register a new organization 
	function registerOrganization( 
		String _organiziationName,
		uint balance 
	) returns ( uint organizationID );
}