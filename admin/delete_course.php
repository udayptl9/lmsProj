<?php
include('dbcon.php');
if (isset($_POST['delete_course'])){
$id=$_POST['selector'];
$N = count($id);
for($i=0; $i < $N; $i++)
{
	$result = mysqli_query($conn,"DELETE FROM course where course_id='$id[$i]'");
}
header("location: school_year.php");
}
?>