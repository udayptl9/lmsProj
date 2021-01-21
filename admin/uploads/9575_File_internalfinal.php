<?php 
	include('dbcon.php');
	$id = $_POST['id'];
	$syllabus = $_POST['syllabus'];
	$checkSql = mysqli_query($conn, "SELECT * FROM `internals` WHERE internal_class_id=$id");
	if(mysqli_num_rows($checkSql) > 0) {
		$result = mysqli_query($conn, "UPDATE `internals` SET `student_marks`='$syllabus' WHERE `internal_class_id`=$id");
	} else {
		$sql = "INSERT INTO `internals`(`internal_class_id`, `student_marks`) VALUES ($id,'$syllabus')";
		$result = mysqli_query($conn,$sql);
	}
	print_r(json_encode(array('text'=>$result)));
?>