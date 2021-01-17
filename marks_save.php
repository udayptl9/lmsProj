<?php 
	include('dbcon.php');
	$student_assignment_id = $_POST['student_assignment_id'];
	$marks = $_POST['marks'];
	$totalmarks = $_POST['marksObtained'];
	$sql="UPDATE `student_assignment` SET `marks_alloc`='$marks', `grade`= '$totalmarks' WHERE student_assignment_id=$student_assignment_id";
	$result = mysqli_query($conn,$sql);
	print_r(json_encode(array('text'=>$result)));
?>