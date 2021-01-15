<?php 
	include('dbcon.php');
	$id = $_POST['id'];
	$syllabus = $_POST['syllabus'];
	
	$sql="UPDATE internals (internal_class_id,student_marks) VALUES('$id','$syllabus') where internal_class_id='$id' ";
	$result = mysqli_query($conn,$sql);
	print_r(json_encode(array('text'=>$result)));
?>