<?php 
		$inputName = $_POST['inputName'];
		$designation = $_POST['designation'];
		$qualificationName = $_POST['qualificationName'];
		$inputProficiency = $_POST['inputProficiency'];
		$teachingExperiece = $_POST['teachingExperiece'];
		$projectsHandled = $_POST['projectsHandled'];
		$publication = $_POST['publications'];
	
		include('dbcon.php');
		

		mysqli_query($conn,"insert into profile (name,designation,proficiency,teaching_exp,project,qualification,teacher_id,publication) values('$inputName','$designation','$inputProficiency','$teachingExperiece','$projectsHandled','$qualificationName','$session_id','$publication')")or die(mysqli_error());

?>