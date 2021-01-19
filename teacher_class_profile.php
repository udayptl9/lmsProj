<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacher_profile_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					     <!-- breadcrumb -->
					<?php $query = mysqli_query($conn,"select * from teacher_class_student
					LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id 
					JOIN class ON class.class_id = teacher_class.class_id 
					JOIN subject ON subject.subject_id = teacher_class.subject_id
					where student_id = '$session_id'
					")or die(mysqli_error());
					$row = mysqli_fetch_array($query);
					$id = $row['teacher_class_student_id'];	
					?>
					     <ul class="breadcrumb">
							<li><a href="#"><?php echo $row['class_name']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><?php echo $row['subject_code']; ?></a> <span class="divider">/</span></li>
							<li><a href="#">Academic Year: <?php echo $row['school_year']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><b>My Classmates</b></a></li>
						</ul>
						
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <style>
                        	

                        	

                        	#NAME {
									  line-height: 20px;
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
                                <div class="span12 teacherInfo">
										<div class="alert alert-info"><i class="icon-info-sign"></i> About Teacher</div>
								




									<?php $query= mysqli_query($conn,"select * FROM edit_profile LEFT JOIN teacher_class on teacher_class.teacher_id = edit_profile.teacher_id where teacher_class_id = '$get_id' ")or die(mysqli_error());
								$row = mysqli_fetch_array($query);
									?>
									<div class="pull-right"  style="position: relative;">

										<div><h4><?php echo $row['name']; ?></h4></div>
	  									<div><h5><?php echo $row['designation']; ?></h5></div>
	  									<div id="NAME">Qualification: <?php echo $row['qualification']; ?></div>
	  									<div id="NAME">Proficiency: <?php echo $row['proficiency']; ?></div>
	  									<div id="NAME">Teaching Experience: <?php echo $row['teaching_exp']; ?></div>
	  									<div><h4 id="NAME" class="projectsDisplay">Project Handled: </h4></div>
	  									<div id="NAME" class='publicationsDisplay'>Publication:</div>
	  									<div  style='position: absolute;  top: 15px; margin-left: -300px;'><img src="<?php echo $row['image']; ?>" style="height:200px;" alt='profile Image'></div>
	  									<script type="text/javascript">
	  										const publicationsObject = JSON.parse('<?php echo $row["publication"]; ?>');
	  										let index = 1;
	  										publicationsObject['publications'].forEach(publication=>{
	  											if(index == publicationsObject['publications'].length) {
	  												document.querySelector('.publicationsDisplay').innerHTML += `• ${publication}<br>`;
	  											} else {
	  												document.querySelector('.publicationsDisplay').innerHTML += `<br>• ${publication} <br> `;
	  											}
	  											index++;
	  										})
	  									</script>
	  									<script>
	  										const projectsObject = JSON.parse('<?php echo $row["project"]; ?>');
	  										index = 1;
	  										projectsObject['projects'].forEach(project=>{
	  											if(index == projectsObject['projects'].length) {
	  												document.querySelector('.projectsDisplay').innerHTML
	  													+= `• ${project} <br>`;
	  											} else {
	  												document.querySelector('.projectsDisplay').innerHTML
	  													+= `<br>• ${project} <br>`;
	  											}
	  											index++
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