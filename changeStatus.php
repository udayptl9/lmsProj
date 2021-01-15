<?php 
	include('dbcon.php');
	$id = $_POST['id'];
	$currentStatus = $_POST['currentStatus'];
	$status = ($currentStatus==0)?(1):(0);
	echo $status;
	$sql = "UPDATE `assignment` SET `status`=$status WHERE assignment_id = $id";
	$result = mysqli_query($conn, $sql);
	echo $result;
 ?>