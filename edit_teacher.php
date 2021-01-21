<?php
 include('admin/dbcon.php');
 include('session.php');
 
 
							if (isset($_POST['save']))
							 {
                               

								$quali=$_POST['quali'];
								$exp=$_POST['exp'];
								$pub=$_POST['pub'];
                                $proj=$_POST['proj'];
                                $prof=$_POST['prof'];
                                $desig=$_POST['desig'];
								mysqli_query($conn,"update  teacher set qualification = '$quali', publication='$pub', experience='$exp', projects='$proj',prof='$prof',designation='$desig' where teacher_id  = '$session_id' ")or die(mysqli_error());
								
								?>
 
								<script>
								window.location = "profile_teacher.php";  
								</script>
								<?php
							 }
							 ?>
