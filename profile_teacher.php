<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacher_sidebar.php'); ?>
                <div class="span6" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->
				
									
					     <ul class="breadcrumb">
						<?php
						$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
						$school_year_query_row = mysqli_fetch_array($school_year_query);
						$school_year = $school_year_query_row['school_year'];
						?>
							<li><a href="#">Teachers</a><span class="divider">/</span></li>
							<li><a href="#"><b>Profile</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left">
                                	<img src="bldeacet_header_logo_caps.png" style="margin-left: 70px;">
                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12 teacherInfo">
										<div class="alert alert-info">About Me</div>
										<?php $query= mysqli_query($conn,"select * from teacher where teacher_id = '$session_id'")or die(mysqli_error());
										$row = mysqli_fetch_array($query);
						?>
								<form method="post" action="edit_teacher.php" id="profile_teacher">
									<table>
  									<tr>
									  <th><h5>Full Name:</h5></th><th><h5><?php echo $row['firstname']." ";echo $row['lastname'];?></h5></th>
									</tr>
									<tr>
									  <th><h5>Qualifications:</h5></th><th><h5><input type="text" name="quali" value="<?php echo $row['qualification']." ";?>"></h5></th>
									</tr>
									<img src="admin/<?php echo $row['location']; ?>" width="200" height="200" style="float:right" alt='profile Image'>
									<tr>
									  <th><h5>Experience:</h5></th><th><h5><input type="text" name="exp" value="<?php echo $row['experience']." ";?>"></h5></th>
									</tr>
									<tr>
									  <th><h5>Proficiency:</h5></th><th><h5><input type="text" name="prof" value="<?php echo $row['prof']." ";?>"></h5></th>
									</tr>
									<tr>
									  <th><h5>Designation:</h5></th><th><h5><select name="desig" id="designation">
													<option></option>
													<option>ASST.PROFESSOR</option>
													<option>SENIOR.PROFESSOR</option>
													<option>SENIOR.PROFESSOR AND HOD</option>
													
												</select></h5></th>
									</tr>
									<tr>
									  <th><h5>Publications:</h5></th><th><h5><textarea name="pub" ><?php echo $row['publication']." ";?></textarea></h5></th>
									</tr>
									<tr>
									  <th><h5>projects:</h5></th><th><h5><textarea type="text" name="proj"><?php echo $row['projects']." ";?></textarea></h5></th>
									</tr>
									</table>
									<button name="save" type="submit" class="btn btn-success"><i class="icon-save" ></i> Save</button>
								</form>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
				<?php include('teacher_right_sidebar.php') ?>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>