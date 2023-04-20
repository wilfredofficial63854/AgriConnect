<?php
	include('../includes/conn.php');
	
	$full_name = $_POST['full_name'];
	$email = $_POST['email'];
	$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
	$city = $_POST['city'];
	$region = $_POST['region'];
	$country = $_POST['country'];
	$phone_number = $_POST['phone_number'];
	$region = $_POST['region'];
	$dob = $_POST['dob'];
	$sex = $_POST['sex'];
	$photo = uniqid()."_".$_FILES['profile_photo']['name'];
	
	if(empty($full_name)){
		echo "<script>alert('Please provide Full Name');</script>";
	}else if(empty($password)){
		echo "<script>alert('Please provide Password');</script>";
	}else if(empty($phone_number)){
		echo "<script>alert('Please provide Phone Number');</script>";
	}else if(empty($dob)){
		echo "<script>alert('Please provide Date of Birth');</script>";
	}else{
		//upload product details
			$file_tmp = $_FILES['profile_photo']['tmp_name'];
			$file_path = "../uploads/profile_photos/" . $photo;
			
			if(move_uploaded_file($file_tmp, $file_path)){
				mysqli_query($conn, "INSERT INTO `users`(`full_name`, `email_address`, `pass_word`, `city`, `region`, `phone_number`, `dob`, `sex`, `photo`, `country`) VALUES ('$full_name','$email','$password','$city','$region','$phone_number','$dob','$sex','$photo','$country')");
			
				
				//sms system to send sms to the registered user
				$msg = "You have successfully registered with Agriconnect %0a Login  with %0a Username :".$email ."%0a password : ".$_POST['password'];
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
				curl_setopt($ch, CURLOPT_URL,'https://apps.mnotify.net/smsapi?key=La8VLWaSy1ISXDUyBl6D1ycio&to='.$phone_number. '&msg='.$msg .'&sender_id=WestBridge');
				$content = curl_exec($ch);
				
				
				
				echo "<script> alert('Account created successfully! Login to continue'); </script>";
				//header('location:../index.php');

			}else{
				echo "<script> alert('Failed to create account! Please try again.'); </script>";
			}
	}


?>