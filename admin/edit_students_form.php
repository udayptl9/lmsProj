   <div class="row-fluid">
   <?php
   if($_SESSION['department']!=0)
   {
      echo' <a href="students.php" class="btn btn-info"><i class="icon-plus-sign icon-large"></i> Add Student</a>';
   }
   ?>
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                            
                            <div class="muted pull-left">Edit Student</div>
                            
                            </div>
                            <div class="block-content collapse in">
							<?php
							$query = mysqli_query($conn,"select * from student LEFT JOIN class ON class.class_id = student.class_id where student_id = '$get_id'")or die(mysqli_error());
							$row = mysqli_fetch_array($query);
							?>
                                <div class="span12">
								<form method="post">
								
								        <div class="control-group">
                                   
                                          <div class="controls">
                                            <select  name="cys" class="" required>
                                             	<option value="<?php echo $row['class_id']; ?>"><?php echo $row['class_name']; ?></option>
											<?php
											$cys_query = mysqli_query($conn,"select * from class order by class_name");
											while($cys_row = mysqli_fetch_array($cys_query)){
											
											?>
											<option value="<?php echo $cys_row['class_id']; ?>"><?php echo $cys_row['class_name']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
								
										<div class="control-group">
                                          <div class="controls">
                                            <input name="un" value="<?php echo $row['username']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "ID Number" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input name="fn"  value="<?php echo $row['firstname']; ?>"  class="input focused" id="focusedInput" type="text" placeholder = "Firstname" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input  name="ln"  value="<?php echo $row['lastname']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "Lastname" required>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <div class="controls">
                                            
                                            <input  name="zn" value="<?php echo $row['dob']; ?>" class="input focused" id="focusedInput" type="number" pattern="/^-?\d+\.??\d*$/" onkeyup="this.value = this.value.replace(/[^0-9]/,'')"  placeholder = "DDMMYYYY" onKeyPress="if(this.value.length==8) return false;" >
                                          </div>
                                        </div>
                      <div class="control-group">
                                          <div class="controls">
                                            <input  name="pwd"  value="<?php echo $row['password']; ?>" class="input focused" id="focusedInput" type="password"  placeholder = "password">
                                          </div>
                                        </div>
										
											<div class="control-group">
                                          <div class="controls">
												<button name="update" class="btn btn-success"><i class="icon-save icon-large"></i></button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
					
		
	      <?php
                            if (isset($_POST['update'])) {
                               
                                $un = $_POST['un'];
                                $fn = $_POST['fn'];
                                $ln = $_POST['ln'];
                                $zn = $_POST['zn'];
                                $cys = $_POST['cys'];
                                $pwd = $_POST['pwd'];
                      

								mysqli_query($conn,"update student set username = '$un' , firstname ='$fn' , lastname = '$ln' , class_id = '$cys', password = '$pwd' where student_id = '$get_id' ")or die(mysqli_error());

								?>
 
								<script>
								window.location = "students.php"; 
								</script>

                       <?php     }  ?>
	