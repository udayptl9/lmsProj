<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('internal_sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('edit_internal_form.php'); ?>		   			
				</div>

                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Student List</div>
                            </div>
                            <div class="block-content collapse in">
									<div class="span12">
										
									<form action="delete_student.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
									<a data-toggle="modal" href="#student_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
									<?php include('modal_delete.php'); ?>
										<thead>
										  <tr>
												    <th></th>
												
													<th>Name</th>
													<th>ID Number</th>
													<th>Total</th>
											
													<th>Course Yr & Section</th>
													<th></th>
										   </tr>
										</thead>
										<tbody>
											
                                         <?php
                                    $my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
									LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
									INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
									while($row = mysqli_fetch_array($my_student)){
										$id = $row['teacher_class_student_id'];
                                        ?>

										<tr>
										<td width="30">
										<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
										</td>
         
                                        <td><?php echo $row['firstname'] . " " . $row['lastname']; ?></td> 
										<td><?php echo $row['username']; ?></td>
										<td><?php echo $row['dob']; ?></td> 
								 
										<td width="100"><?php echo $row['class_name']; ?></td> 

										<td width="30"><a href="edit_internal.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil"></i> </a></td>
									 
										</tr>
                                   <?php } ?>    
                              
										</tbody>
									</table>
									</form>
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