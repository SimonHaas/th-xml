<?php
header( 'Content-type: application/json' );

// Avoid printing error messages (JSON request processing assumed)
ini_set( 'display_errors', false );

// Validate request parameters
if ( !array_key_exists( 'id', $_REQUEST ) ) {
	http_response_code( 400 );
	$result['status'] = false;
	exit( json_encode( $result ) );
}
$member_id = $_REQUEST['id'];

// INSERT CODE HERE 

if ($result) {
	// If there are results, return just the first one
	http_response_code( 200 );

	// INSERT CODE HERE 

}
else {
	// Successfully processed but no results - here interpreted as error
	http_response_code( 404 );
	$result['status'] = false;
	$response = json_encode( $result );
}
exit($response);
?>