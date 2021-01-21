<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('about_teacher_link.php'); ?>
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
							<li><a href="#"><b>About Teacher</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                         <!-- block -->
						 <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left">
                                	<img src="admin/images/logo3.jpg" style="margin-left: 70px;">
                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12 teacherInfo">
								
  											<?php $query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										LEFT JOIN teacher ON teacher.teacher_id = teacher_class.teacher_id
										
										where teacher_class_id = '$get_id'")or die(mysqli_error());
										$row = mysqli_fetch_array($query);
										$id = $row['teacher_class_id'];
				
										?>
										
										
										Instructor: <strong><?php echo $row['firstname']; ?> <?php echo $row['lastname']; ?></strong>
															<br>
															<img id="avatar" class="img-polaroid" src="admin/<?php echo $row['location']; ?>">
															
															</br>
											<?php 
												$teacher_id = $row['teacher_id'];
												$query= mysqli_query($conn, "select * from teacher where teacher_id=$teacher_id") or die(mysqli_error());
												$row = mysqli_fetch_array($query);
											?>
											<div class="info" style='position: relative;'>
										

										<div><h4>Name: <?php echo $row['firstname']; ?><?php echo $row['lastname']; ?></h4></div>
	  									<div><h4>Designation: <?php echo $row['designation']; ?></h4></div>
	  									<div><h4>Qualification: <?php echo $row['qualification']; ?></h4></div>
	  									<div><h4>Proficiency: <?php echo $row['prof']; ?></h4></div>
	  									<div><h4>Teaching Experience: <?php echo $row['experience']; ?></h4></div>
										<div><h4>Projects: <?php echo $row['projects']; ?></h4></div>
										<div><h4>Publications: <?php echo $row['publication']; ?></h4></div>
									
							
									
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