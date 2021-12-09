function queryFacultyMember(memberId) {
    $.ajax({
        type : "post",
        dataType : "json",
        url : "faculty.php",
        data : {id : memberId},
        success: function(response) {
			$( "#firstname" ).html( response.firstname );
			$( "#lastname" ).html( response.lastname );
		},
		error: function(xhr, status, error) {
			$( "#firstname" ).html( "undefined" );
			$( "#lastname" ).html( "undefined" );
			alert("Status=" + status + " Error=" + error);
		}
    })
}
