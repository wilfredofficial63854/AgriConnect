<?php	
	$host = "localhost";
	$user = "root";
	$pswd = "0000";
	$db = "agri_connect";

	if($conn = mysqli_connect($host, $user, $pswd, $db)){
		//echo "connected";
	}else{
		echo "Connection Error!";
		mysqli_close($conn);
		die;
	}

?>