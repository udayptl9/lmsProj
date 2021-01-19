<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('studentinfo_sidebar.php'); ?>
               <div class="span6" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
					     <ul class="breadcrumb">
								<?php
								$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
								$school_year_query_row = mysqli_fetch_array($school_year_query);
								$school_year = $school_year_query_row['school_year'];
								?>
								
								<li><a href="#"><b>My Details</b></a><span class="divider">/</span></li>
								<li><a href="#">Academic Year: <?php echo $school_year_query_row['school_year']; ?></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <style>
									

									#NAME {
									  line-height: 15px;
									  padding: 5px;
									  width: 299px;
									  font-size: 16px;
									  font-weight: bold;
									  font-family: serif;
									  border-bottom: 3px solid #bbb;
									}
								</style>

						 <div id="block_bg" class="block" style="width:635px;">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left">
                                	<img src="bldeacet_header_logo_caps.png" style="margin-left: 100px;">
                                </div>
                            </div>
                        <div class="block-content collapse in">
                                <div class="span12 studentInfo">
										

                                <div class="alert alert-info"><i class="icon-info-sign"></i> About Me</div>
								<?php $query= mysqli_query($conn,"select * from student where student_id = $session_id")or die(mysqli_error());
										 $query= mysqli_query($conn,"select * from student where student_id = $session_id")or die(mysqli_error());
								while($row = mysqli_fetch_array($query)) {
									?>
									<div class="pull-right"  style='position: relative;'>
										

										<div><h4> <?php echo $row['firstname']; ?> <?php echo $row['lastname']; ?>  </h4></div>
										<div><h4> <?php echo "Student"; ?></h4></div>
	  									<div><h4 id="NAME">Date of Birth: <?php echo $row['dob']; ?></h4></div>
	  									<div><h4 id="NAME">USN: <?php echo $row['username']; ?></h4></div>
	  									<div><h4 id="NAME">Status: <?php echo $row['status']; ?></h4></div>
	  									<div><h4 id="NAME">Student Id: <?php echo $row['student_id']; ?></h4></div>
	  									<div><h4 id="NAME">Personal Number: <?php echo $row['per_no']; ?></h4></div>
	  									<div><h4 id="NAME">Guardian Number: <?php echo $row['gua_no']; ?></h4></div>
	  									
	  									<div  style='position: absolute;  top: 15px; margin-left: -300px;'><img src="admin/<?php echo $row['location']; ?>"" style="height:200px;" alt='profile Image'></div>
	  									
										
									</div>
                                </div>
                            <?php } ?>
                            </div>
                        </div>
                            
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
	            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>