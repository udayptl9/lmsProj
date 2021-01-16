<?php include('dbcon.php');
		/*include('dbcon.php');

		foreach ($_FILES["image"]["error"] as $key => $error) {
		  if ($error == UPLOAD_ERR_OK) {
		    $name = $_FILES["image"]["name"][$key];
		    move_uploaded_file( $_FILES["image"]["tmp_name"][$key], "uploads/" . $_FILES['image']['name'][$key]);
		  }
		}

		$inputName = $_POST['inputName'];
		$designation = $_POST['designation'];
		$qualificationName = $_POST['qualificationName'];
		$inputProficiency = $_POST['inputProficiency'];
		$teachingExperiece = $_POST['teachingExperiece'];
		$projectsHandled = $_POST['projectsHandled'];
		$publication = $_POST['publications'];
		$file = addslashes(file_get_contents($_FILES["image"]["tmp_name"]));


		
		

		$insert = mysql_query($conn,"insert into edit_profile (name,designation,proficiency,teaching_exp,project,qualification,teacher_id,publication,file) values('$inputName','$designation','$inputProficiency','$teachingExperiece','$projectsHandled','$qualificationName','$session_id','$publication','$file')");

		if(mysql_query($conn,$insert)) {
		   echo "Success";
		  } else {
		   echo "Cannot Insert";
		  }*/




		  		$teacherId = $_POST['teacherId'];
		  		$inputName = $_POST['inputName'];
				$designation = $_POST['designation'];
				$qualificationName = $_POST['qualificationName'];
				$inputProficiency = $_POST['inputProficiency'];
				$teachingExperiece = $_POST['teachingExperiece'];
				$project = $_POST['project'];
				$publication = $_POST['publication'];
				$filename = $_FILES["image"]["name"]; 
				$tempname = $_FILES["image"]["tmp_name"];
				$folder = "profiles/".$filename;
  
			    /*$filename = $_FILES["image"]["name"]; 
			    $tempname = $_FILES["image"]["tmp_name"];     
			        $folder = "image/".$filename; */
			          
			    
			  
			        // Get all the submitted data from the form 
			    if(move_uploaded_file($tempname, $folder)) {

			    }
		        $result1 = mysqli_query($conn,"INSERT INTO `edit_profile`(`name`, `designation`, `proficiency`, `teaching_exp`, `project`, `qualification`, `publication`, `image`, `teacher_id`) VALUES ('$inputName','$designation','$inputProficiency','$teachingExperiece','$project','$qualificationName','$publication','$folder',$teacherId)")or die(mysqli_error()); 
		  		echo($result1);
			         
			          
			        // Now let's move the uploaded image into the folder: image 
			        
?>





