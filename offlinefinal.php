<?php 
	include('dbcon.php');
	$id = $_POST['id'];
	$syllabus = $_POST['syllabus'];
	$checkSql = mysqli_query($conn, "SELECT * FROM `offlineassignment` WHERE offline_class_id=$id");
	if(mysqli_num_rows($checkSql) > 0) {
		$result = mysqli_query($conn, "UPDATE `offlineassignment` SET `offline_marks`='$syllabus' WHERE `offline_class_id`=$id");
	} else {
		$sql = "INSERT INTO `offlineassignment`(`offline_class_id`, `offline_marks`) VALUES ($id,'$syllabus')";
		$result = mysqli_query($conn,$sql);
	}
	print_r(json_encode(array('text'=>$result)));
?>