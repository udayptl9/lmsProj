<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<?php 
	  $post_id = $_GET['post_id'];
	  if($post_id == ''){
	  ?>
		<script>
		window.location = "assignment_student.php<?php echo '?id='.$get_id; ?>";
		</script>
	  <?php
	  }
	
 ?>
 

    <body id="studentTableDiv">
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('assignment_link.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					   
					   <!-- breadcrumb -->
				
										<?php $class_query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_class_id = '$get_id'")or die(mysqli_error());
										$class_row = mysqli_fetch_array($class_query);
										?>
				
					     <ul class="breadcrumb">
							<li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><?php echo $class_row['subject_code']; ?></a> <span class="divider">/</span></li>
							<li><a href="#">School Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><b>Uploaded Assignments</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
						
						
                        <!-- block -->

                        
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                            	  <div id="" class="muted pull-right">
                <?php 
								$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
                $count_my_student = mysqli_num_rows($my_student);
                $show1 = mysqli_fetch_array($my_student);
                ?>
                Number of Students: <span class="badge badge-info"><?php echo $count_my_student; ?></span>
              </div>

                                <div id="" class="muted pull-left"><a href="assignment.php<?php echo '?id='.$get_id; ?>"><i 	class="icon-arrow-left"></i> Back</a></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
									<?php
										$query1 = mysqli_query($conn,"select * FROM assignment where assignment_id = '$post_id'")or die(mysqli_error());
										$row1 = mysqli_fetch_array($query1);
									
									?>
									<div class="alert alert-info"> Assignment Name : <?php echo $row1['fname']; ?><br>Uploaded Date : <?php echo $row1['fdatein']; ?></br>DeadLine : <?php echo $row1['deadline_date']; ?>   <?php echo $row1['deadline_time']; ?></div>

									
									<div id="">
  											
												
				<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
						
										<thead>
										        <tr>
										        <th>Roll No.</th>
										        <th>Name</th>
										        <th>USN</th>
										        <th>Status</th>
												<th>Date Upload</th>
												<th>Grade</th>
												<th></th>
												<th></th>
												</tr>
												
										</thead>
										<tbody>
											<?php 
										$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
										LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
										INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
								        while($show = mysqli_fetch_array($my_student)){
								        	

								        ?>
								        <tr>
								        		<td><?php echo $show['rollno']; ?></td>
								        		<td><?php echo $show['firstname']." ".$show['lastname']; ?></td>
								        		<td><?php echo $show['username']; ?></td>
								        		<?php if($row['assig_status'] == 0){?>
										 	 		<td class='assignmentSubmit_<?php echo $show['student_id']; ?>'><?php echo "Pending";?></td>	
										 	 <?php }else if($row['assig_status'] == 1){
										 	 	
										 	 } ?>
								        		

										 	 


								        
											<?php } ?>
											
                              		<?php
                              		    
										$query = mysqli_query($conn,"select * FROM student_assignment 
										LEFT JOIN student on student.student_id  = student_assignment.student_id
										where assignment_id = '$post_id'  order by assignment_fdatein  DESC")or die(mysqli_error());

										while($row = mysqli_fetch_array($query)){
										$id  = $row['student_assignment_id'];
									?> 
										 	 <td><?php if($row['status_assignment'] == 0){
										 	 		echo "<script>document.querySelector('.assignmentSubmit_".$row['student_id']."').innerHTML = 'Pending';</script>";
										 	 }else if($row['status_assignment'] == 1){
										 	 	echo "<script>document.querySelector('.assignmentSubmit_".$row['student_id']."').innerHTML = 'Submitted';</script>";
										 	 } ?></td>
										 	 <?php if($row['status_assignment'] == 1){?>
										 	 			<td><?php echo $row['assignment_fdatein']; ?></td>
										 	 <?php }else if($row['status_assignment'] == 0){?>
										 	 	<?php } ?>
										 	 	<?php if($row['status_assignment'] == 1){?>
										 				<td><?php echo $row['grade'] ?></td>	 			
										 	 <?php }else if($row['status_assignment'] == 0){?>
										 	 	<?php } ?>
										 	 	
										 
										 
                                       <!--  <td><a href="assignment_pdf.php?id=<?php echo $get_id ?>&post_id=<?php echo $post_id ?>&student_id=<?php echo $row['student_id'];?>&student_assignment_id=<?php echo $row['student_assignment_id']; ?>"><?php  echo $row['fname']; ?></a></td> -->
                                       <!--  <td><?php  echo $row['fname']; ?></td>
                                         <td><?php echo $row['fdesc']; ?></td> -->
										                                                                                                                 
                                         <!--<td><?php echo $row['firstname']." ".$row['lastname']; ?></td>                                                        -->                
                                                                                                                 
                                         
										 
										 <input type="hidden" class="span4" name="id" value="<?php echo $id; ?>">
										 <input type="hidden" class="span4" name="post_id" value="<?php echo $post_id; ?>">
										 <input type="hidden" class="span4" name="get_id" value="<?php echo $get_id; ?>">
										 
										 	<?php if($row['status_assignment'] == 1){?>
										 	 		<td><a href="<?php echo $row['floc']; ?>"><i class="icon-download icon-large"></i></a></td>	
										 	 <?php }else if($row['status_assignment'] == 0){?>
										 	 	<td></td>
										 	 	
										 	 <?php } ?>
										 <?php if($row['status_assignment'] == 1){?>
										 	 		<td><a class="btn btn-success" style='margin-right:0px;'  href="assignment_pdf.php?id=<?php echo $get_id ?>&post_id=<?php echo $post_id ?>&student_id=<?php echo $row['student_id'];?>&student_assignment_id=<?php echo $row['student_assignment_id']; ?>"><i class="icon-upload icon-large"></i>View Submitted Assignment</a></td>	
										 	 <?php }else if($row['status_assignment'] == 0){?>
										 	 	<td></td>
										 	 	
										 	 <?php
										 	 	
										 	 } ?>
										 	
										 
										 
										 
										                                                                        
                                </tr>
                         
						 <?php } ?>
					
                              
										</tbody>
									</table>
									</div>
								
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>

				
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>