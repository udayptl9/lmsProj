<?php
include('dbcon.php');
               $un = $_POST['un'];
               $fn = $_POST['fn'];
               $ln = $_POST['ln'];
               $dob = $_POST['dob'];
               $class_id = $_POST['class_id'];
               $department = $_POST['department'];
               $result = mysqli_query($conn,"insert into student (username,firstname,lastname,location,class_id,status, did, dob)
		values ('$un','$fn','$ln','uploads/NO-IMAGE-AVAILABLE.jpg','$class_id','Unregistered', $department, $dob)  
		") or die(mysqli_error()); 
		print_r($result);
	?>
