<?php
include('dbcon.php');
$output="";
$sql="SELECT * FROM class where did='".$_POST['departmentID']."' ORDER BY class_name";
$result=mysqli_query($conn,$sql);

while($row=mysqli_fetch_array($result)){
$output .='<option value="'.$row["class_id"].'">'.$row["class_name"].'</option>';
	}
echo $output;	


$output="";
$sql="SELECT * FROM subject where cid='".$_POST['classID']."' ORDER BY subject_code";
$result=mysqli_query($conn,$sql);

while($row=mysqli_fetch_array($result)){
$output .='<option value="'.$row["subject_id"].'">'.$row["subject_code"].'</option>';
	}
echo $output;	

?>