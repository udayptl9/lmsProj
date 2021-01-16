<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacherinfo_sidebar.php'); ?>
                <div class="span6" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->
				
									
					     <ul class="breadcrumb">
						<?php
						$session_id = $_SESSION['id'];
						$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
						$school_year_query_row = mysqli_fetch_array($school_year_query);
						$school_year = $school_year_query_row['school_year'];
						?>
							<li><a href="#">Teachers</a><span class="divider">/</span></li>
							<li><a href="#"><b>Profile</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->


                        
                        <meta name="viewport" content="width=device-width, initial-scale=1">

                        <style>
                        	.popup {
                        		position: absolute;
                        		display:flex;
                        		cursor: pointer;
                        		margin-top: 450px;
                        		
                        	}

                        	.popup .popuptext {
                        		visibility: hidden;
                        		width: 500px;
                        		height: 500px;
                        		background-color: #fff;
                        		color: black;
                        		text-align: center;
                        		border-radius: 5px;
                        		
                        		position: absolute;
                        		z-index: 1;
                        		bottom: 125%
                        		left: 50%;
                        		

                        	}

                        	

							.popup .show{
								visibility: visible;
								-webkit-animation: fadeIn 1s;
  								animation: fadeIn 1s;

							}

							.popupclose{
								visibility: none;
								cursor: pointer;
								margin-left: 500px;
								margin-top:10px;
								-webkit-animation: fadeOut 1s;
  								animation: fadeOut 1s;

							}

							 

							@-webkit-keyframes fadeIn {
							  from {opacity: 0;} 
							  to {opacity: 1;}
							}

							@keyframes fadeIn {
							  from {opacity: 0;}
							  to {opacity:1 ;}
							}

							@-webkit-keyframes fadeOut {
							  from {opacity: 0;} 
							  to {opacity: 1;}
							}

							@keyframes fadeOut {
							  from {opacity: 0;}
							  to {opacity:1 ;}
							}



							 #close {
								float: left;
								margin-left: -20px;
								width: 70px;
								height: 30px;
								


							}
                        	
                        </style>
                        <div class="popup" onclick="myFunction()">EditProfile
                        	<span class="popuptext" id="myPopup">
                        		
                        		<div id="block_bg" class="block" >
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left">
                                	<img src="logo-removebg-preview.png"><h4>BLDEA's V P Dr PG Halakatti College of Engineering & Technology </h4>
                                </div>
                            </div>
                        </br>
                            <form class="form-horizontal" id="teacherinfo" enctype="multipart/form-data">
										<div class="control-group">
											
											<div class="controls">
												<?php $query= mysqli_query($conn,"select * from teacher where teacher_id = $session_id")or die(mysqli_error());
												$row = mysqli_fetch_array($query);
													?>
											<?php $teacherID = $row['teacher_id']; ?>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputName">Name</label>
											<div class="controls">
											<input type="text" name="inputName" id="inputName" placeholder="">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputDesig">Designation</label>
											<div class="controls">
												<select name="designation" id="designation">
													<option></option>
													<option>ASST.PROFESSOR</option>
													<option>SENIOR.PROFESSOR</option>
													<option>SENIOR.PROFESSOR AND HOD</option>
													
												</select>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputProficiency">Qualification</label>
											<div class="controls">
											<input type="text" name="qualificationName" id="qualificationName" placeholder="">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputProficiency">Proficiency</label>
											<div class="controls">
											<input type="text" name="inputProficiency" id="inputProficiency" placeholder="">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="teachingExperiece">Teaching Experience</label>
											<div class="controls">
											<input type="text" name="teachingExperiece" id="teachingExperiece" placeholder="">
										</div>
									</div>
										
									<div>
										<label class="control-label"  for="project">Project</label>
										<div class="form-group">
											
												<div class="projects">
													<input type="text" class="project" name="project" id="project" placeholder="" style="margin-left: 52px;"><button  style="background: green; color: white; font-weight: bold; margin-left: 10px;" class="addProject">+</button>
												</div>
											
												</br>
											
										</div>
									</div>
									
										<div class="control-group">
											<label class="control-label" for="publication">Publication</label>
											<div class="form-group">
											<table class="table table-bordered" id="dynamic_field">
											<div class='publications'>
												<input type="text" class="publication" name="publication" id="publication" placeholder="" style="margin-left: 52px;"><button  style="background: green; color: white; font-weight: bold; margin-left: 10px;" class="addInput">+</button>
											</div>
										</br>
											<div class="control-group">
											<label class="control-label" for="inputImage">Upload Image</label>
											<div class="controls">
											<input type="file" name="image" id="image" style="margin-left:45px;"  placeholder="">
											</div>
										</div>
										</br>
										</table>
										</div>
									</div>
									
										<div class="control-group">
                                          <div class="controls">
												<button type="submit" style="margin-left: -80px;" class="btn btn-success"><i class="icon-save"></i> Save</button>
												<button type="button" class="btn btn-danger" id= "close" onclick="closeForm()">Close</button>
                                          </div>
                                        </div>
								</form>
								<div id="response"></div>
						
                        		
							</div>
							
                        		
                        	</span>

                        </div>
                        	</div>

                        	






                        	
                        	
                        
                        
                        		<script>
                        			let index = 0;
                        			document.querySelector('.addProject').addEventListener('click', function(
                        				event){
                        				event.preventDefault();
                        				addProject();
                        			})
                        			function addProject() {
                        				var myDiv = document.createElement("div");
                        				myDiv.classList.add(`project_${index}`);
                        				myDiv.innerHTML = `
                        					<br>
                        					<input type="text" class="project" name="project"
                        					placeholder=""><button class="btn btn-danger" style="
                        					margin-left: 10px;" onclick="removeProject('${index}')">Delete</button>
                        					`;
                        					document.querySelector('.projects').appendChild(myDiv);
                        					index++;
                        					return false;
                        			}
                        			function removeProject(index) {
                        				document.querySelector(`.project_${index}`).remove();
                        				return false;
                        			}



									index = 0;
									document.querySelector('.addInput').addEventListener('click', function(event){
										event.preventDefault();
										addInput();
									})
									function addInput() {
										var myDiv = document.createElement("div");
										myDiv.classList.add(`publication_${index}`);
	 									myDiv.innerHTML = `
											<br>
											<input type="text" class="publication" name="publiation" placeholder=""><button class="btn btn-danger"  style="margin-left: 10px;" onclick="removeInput('${index}')">Delete</button>
										`;
										document.querySelector('.publications').appendChild(myDiv);
										index++;
										return false;
									}
									function removeInput(index) {
										document.querySelector(`.publication_${index}`).remove();
										return false;
									}
									document.querySelector('#teacherinfo').addEventListener('submit', function(event){
										event.preventDefault();
										let data = new FormData();
										const file = document.querySelector('#teacherinfo').querySelector('input[name="image"]');
										let publications = {publications: []};
										document.querySelectorAll('input[class="publication"]').forEach(publication=>{
											publications['publications'].push(publication.value);
										})
										let projects = {projects: []};
										document.querySelectorAll('input[class="project"]').forEach(project=>{
											projects['projects'].push(project.value);
										})
										data.append('teacherId', <?php echo $teacherID ?>);
										data.append('inputName', document.querySelector('#teacherinfo').querySelector('input[name="inputName"]').value);
										data.append('designation', document.querySelector('#teacherinfo').querySelector('select[name="designation"]').value);
										data.append('qualificationName', document.querySelector('#teacherinfo').querySelector('input[name="qualificationName"]').value);
										data.append('inputProficiency', document.querySelector('#teacherinfo').querySelector('input[name="inputProficiency"]').value);
										data.append('teachingExperiece', document.querySelector('#teacherinfo').querySelector('input[name="teachingExperiece"]').value);
										
										data.append('project', JSON.stringify(projects));
										data.append('publication', JSON.stringify(publications));
										data.append('image', [...file.files][0]);
										
										$.ajax({
									    url: "teacherInfoAction.php",
									    type: "POST",
									    data: data,
									    success: function (res) {
									    	console.log(res);
									      	document.getElementById("response").innerHTML = res; 
									    },
									    processData: false,
									    contentType: false,
									  });
								    });

								   /* jQuery('#teacherinfo').on('submit',function(e){
								    	jQuery.ajax({
								    		url: 'teacherInfoAction.php',
								    		type: POST,
								    		data:jQuery('#teacherinfo').serialize(),
								    		success:function(result){
								    			alert(result);
								    		}
								    	});
								    	e.preventDefault();
								    });*/
										

									function myFunction() {
										var popup = document.getElementById("myPopup");
										popup.classList.add("show")
										popup.classList.remove('hide');
										
									}
									
									function closeForm() {
									  document.getElementById("myPopup").style.display = "none";
									}

									$(document).ready(function(){
										$('#insert').click(function(){
											if(image_name== '')
											{
												alert("please select image");
												return false;
											}
											else
											{
												var extension =$('#image').val().split('.').pop().toLowerCase();
												if(jQuery.inArray(extension,['png','jpg','jpeg']) == -1)
												{
													alert('Invalid Image File');
													$('#image').val('');
													return false;
												}
											}
										});
									});
									
									
								</script>
								<style>
									

									#NAME {
									  border-bottom: 3px dotted #bbb;
									  padding: 1px;
									  width: 300px;

									  

									}
								</style>
								<div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left">
                                	<img src="bldeacet_header_logo_caps.png" style="margin-left: 70px;">
                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12 teacherInfo">
										<div class="alert alert-info"><i class="icon-info-sign"></i> About Me</div>
								<?php $query= mysqli_query($conn,"select * from edit_profile where teacher_id = $session_id")or die(mysqli_error());
								while($row = mysqli_fetch_array($query)) {
									?>
									<div class="pull-right"  style='position: relative;'>
										

										<div><h4><?php echo $row['name']; ?></h4></div>
	  									<div><h4><?php echo $row['designation']; ?></h4></div>
	  									<div><h4 id="NAME">Qualification: <?php echo $row['qualification']; ?></h4></div>
	  									<div><h4 id="NAME">Proficiency: <?php echo $row['proficiency']; ?></h4></div>
	  									<div><h4 id="NAME">Teaching Experience: <?php echo $row['teaching_exp']; ?></h4></div>
	  									
	  									<div><h4 id="NAME" class="projectsDisplay">Project Handled: </h4></div>
	  									<div><h4 id="NAME" class='publicationsDisplay'>Publication: </h4></div>
	  									<div  style='position: absolute;  top: 15px; margin-left: -300px;'><img src="<?php echo $row['image']; ?>" style="height:200px;" alt='profile Image'></div>
	  									<script>
	  										const publicationsObject = JSON.parse('<?php echo $row["publication"]; ?>');
	  										index = 1;
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
                            <?php } ?>
                            </div>
                        </div>
								

</div>
</div>

<?php include('footer.php'); ?>	
</div>
				
            
		
        </div>
		<?php include('script.php'); ?>
    
    </body>
</html>
