<?php
include('dbcon.php');
$output="";
$sql="SELECT * FROM subject where cid='".$_POST['classID']."' ORDER BY subject_code";
$result=mysqli_query($conn,$sql);

while($row=mysqli_fetch_array($result)){
$output .='<option value="'.$row["subject_id"].'">'.$row["subject_code"].'</option>';
	}
echo $output;	

?>











