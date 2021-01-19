<?php 
	include('dbcon.php');
	$id = $_POST['id'];
	$syllabus = $_POST['syllabus'];
	
	$sql="UPDATE `class_subject_overview` SET `syllabus`='$syllabus' WHERE teacher_class_id = $id";
	$result = mysqli_query($conn,$sql);
	print_r(json_encode(array('text'=>$result)));
?>