<?php
include('dbcon.php');
        
               $un = $_POST['un'];
               $fn = $_POST['fn'];
               $ln = $_POST['ln'];
               $zn = $_POST['zn'];
               $class_id = $_POST['class_id'];

               mysqli_query($conn,"insert into student (username,firstname,lastname,location,class_id,status)
		values ('$un','$fn','$ln','uploads/NO-IMAGE-AVAILABLE.jpg','$class_id','Unregistered')                                    
		") or die(mysqli_error()); ?>
               mysqli_query($conn,"insert into student (username,firstname,lastname,dob,location,class_id,status)
		values ('$un','$fn','$ln','$zn','uploads/NO-IMAGE-AVAILABLE.jpg','$class_id','Unregistered')                                    
		") or die(mysqli_error()); ?>
<?php    ?>
