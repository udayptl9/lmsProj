<?php
include('admin/dbcon.php');
session_start();
$username = $_POST['username'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$number1 = $_POST['number1'];
$number2 = $_POST['number2'];
$class_id = $_POST['class_id'];

$query = mysqli_query($conn,"select * from student where username='$username' and firstname='$firstname' and lastname='$lastname' and class_id = '$class_id'")or die(mysqli_error());
$row = mysqli_fetch_array($query);
$id = $row['student_id'];

$count = mysqli_num_rows($query);
if ($count > 0 && $number1 != $number2 && $row['status']!='Registered'){
	mysqli_query($conn,"update student set per_no = '$number1', gua_no = '$number2', password = '$password', status = 'Registered' where student_id = '$id'")or die(mysqli_error());
	$_SESSION['id']=$id;
	echo 'true';
}else{
echo 'false';
}
?>