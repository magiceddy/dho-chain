/* contract DHO_ChainInterface {

	// All Organitations in DHO_Chain
	Organization[] public organitazions;

	// Restrict to only Retifield 
	modifier onlyRatifiers {}

	function newOrganization( 
		String _organiziationName 
	) returns ( bool );
} */