<?php 
  include('dbcon.php');
  $sql = "SELECT * FROM student";
  $result = mysqli_query($conn, $sql);
  $studentsArray = array();
  while($row = mysqli_fetch_array($result)) {
    array_push($studentsArray, $row);
  }
  usort($studentsArray, function($a, $b){
    return strcmp(strtoupper($a['firstname']), strtoupper($b['firstname']));
  });
  $index = 1;
  foreach ($studentsArray as $value) {
    $student_id = $value['student_id'];
    $sqlToUpdate = "UPDATE `student` SET `rollno`=$index WHERE student_id=$student_id";
    $result = mysqli_query($conn, $sqlToUpdate);
    if($result) {
      $index++;
    } else {
      die();
    }
  }
?>