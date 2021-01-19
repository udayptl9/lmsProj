<?php
include('dbcon.php');
$output="";
$output1="";
$sql="SELECT * FROM class where did='".$_POST['departmentID']."' ORDER BY class_name";
$result=mysqli_query($conn,$sql);
$output1 .='<option value="" disabled selected>-Select subject-</option>';
echo $output1;


while($row=mysqli_fetch_array($result)){
$output .='<option value="'.$row["class_id"].'">'.$row["class_name"].'</option>';
	}
echo $output;	


$output="";
$class_id = $_POST['classID'];
$sql="SELECT * FROM subject where cid=$class_id ORDER BY subject_code";
$result=mysqli_query($conn,$sql);

while($row=mysqli_fetch_array($result)){
$output .='<option value="'.$row["subject_id"].'">'.$row["subject_code"].'</option>';
	}
echo $output;	

?>