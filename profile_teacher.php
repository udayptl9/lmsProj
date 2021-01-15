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
                                	<img src="bldeacet_header_logo_caps.png">
                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12 teacherInfo">
										<div class="alert alert-info"><i class="icon-info-sign"></i> About Me</div>
								<?php $query= mysqli_query($conn,"select * from edit_profile where teacher_id = '$session_id'")or die(mysqli_error());
								$row = mysqli_fetch_array($query);
									?>
									<div class="info" style='position: relative;'>
										

										<div><h4>Name: <?php echo $row['name']; ?></h4></div>
	  									<div><h4>Designation: <?php echo $row['designation']; ?></h4></div>
	  									<div><h4>Qualification: <?php echo $row['qualification']; ?></h4></div>
	  									<div><h4>Proficiency: <?php echo $row['proficiency']; ?></h4></div>
	  									<div><h4>Teaching Experience: <?php echo $row['teaching_exp']; ?></h4></div>
	  									<div><h4>Projects: <?php echo $row['project']; ?></h4></div>
	  									<div><h4 class='publicationsDisplay'>Publication: </h4></div>
	  									<div style='position: absolute; top: 15px; right: 15px;'><img src="<?php echo $row['image']; ?>" style="width: 200px;" alt='profile Image'></div>
	  									<script type="text/javascript">
	  										const publicationsObject = JSON.parse('<?php echo $row["publication"]; ?>');
	  										let index = 1;
	  										publicationsObject['publications'].forEach(publication=>{
	  											if(index == publicationsObject['publications'].length) {
	  												document.querySelector('.publicationsDisplay').innerHTML += `${publication}`;
	  											} else {
	  												document.querySelector('.publicationsDisplay').innerHTML += `${publication}, `;
	  											}
	  											index++;
	  										})
	  									</script>
										
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