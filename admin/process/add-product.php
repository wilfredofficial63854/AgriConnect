<?php
	include('../../includes/conn.php');
	

		
		$product_name = $_POST['product_name'];
		$product_price = round($_POST['product_price']);
		$product_description = $_POST['product_description'];
		$product_category = $_POST['product_category'];
		$product_image = uniqid()."_".$_FILES['product_image']['name'];
		
		if(empty($product_name)){
			echo "<script> alert('Please enter the product name'); </script>";
		}else if(empty($product_price)){
			echo "<script> alert('Please enter the product price'); </script>";
		}else if(empty($product_description)){
			echo "<script> alert('Please enter the product description'); </script>";
		}else{
			//upload product details
			$file_tmp = $_FILES['product_image']['tmp_name'];
			$file_path = "../../uploads/products/" . $product_image;
			
			if(move_uploaded_file($file_tmp, $file_path)){
				mysqli_query($conn, "INSERT INTO `products`(`product_name`, `product_description`, `product_category`, `unit_price`, `product_image`) VALUES ('$product_name','$product_description','$product_category','$product_price','$product_image')");
				echo "<script> alert('Product uploaded successfully!'); </script>";
			}else{
				echo "<script> alert('Failed to upload product!'); </script>";
			}
			
		}

	
?>