<?php
include('session.php');
include('dbcon.php');
$attendence = $_POST['attendence'];
$class_id = $_POST['class_id'];
$teacher_id = $_POST['teacher_id'];
$teacher_class_id = $_POST['teacher_class_id'];
$date = $_POST['date'];
$sql = "INSERT INTO `attendence`(`class_id`, `teacher_id`, `date`,`teacher_class_id`, `attendence`) VALUES ($class_id, $teacher_id, '$date','$teacher_class_id', '$attendence')";
$result = mysqli_query($conn, $sql);
print_r(json_encode(array('text'=>$result)));
?>