<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body id="class_div">
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacher_add_assignment_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
					     <ul class="breadcrumb">
								<?php
								$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
								$school_year_query_row = mysqli_fetch_array($school_year_query);
								$school_year = $school_year_query_row['school_year'];
								?>
								<li><a href="#"><b>My Class</b></a><span class="divider">/</span></li>
								<li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a></li>
						</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="count_class" class="muted pull-right">

								</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span4">
										<form class="" id="add_downloadble" method="post" enctype="multipart/form-data" name="upload" >
												<div class="control-group">
													<label class="control-label" for="inputEmail">File</label>
													<div class="controls">
														<input name="uploaded_file"  class="input-file uniform_on" id="fileInput" type="file" >
														<input type="hidden" name="MAX_FILE_SIZE" value="1000000" />
														<input type="hidden" name="id" value="<?php echo $session_id ?>"/>
													</div>
												</div>
												<div class="control-group">
													<div class="controls">
														<input type="text" name="name" Placeholder="File Name"  class="input">
													</div>
												</div>
												<div class="control-group">
													<div class="controls">
													<textarea id="assigntextare" placeholder="Description" name="desc" required></textarea>
													</div>
												</div>
												<div class="control-group">
													<div class="controls">
														<input type="text" name="maxmarks" Placeholder="Max Marks"  class="input">
													</div>
												</div>
												<div class="control-group">
													<div class="controls">
														<input type="number" Placeholder="No Of Questions"  class="noOfQuestions">
														<a class='btn btn-info addMarks'>Go</a>
													</div>
												</div>
												<div class='questions'> 
            								</div>
												<div class="control-group">
													<div class="controls">
														<label>Set Deadline</label>
														<input type="date"   name="date" style=width:40%;>
														<input type="time"   name="time" style=width:20%;>
														
													</div>
												</div>
											<div class="control-group">
													<div class="controls">
														<input type="checkbox" id="checkbox" name="checkbox" >
														<label for="checkbox" style='display:inline;'>Stop taking responses after Deadline</label>

														
													</div>
												</div>

            								    
					
											<script>
			document.querySelector('.addMarks').addEventListener('click', function(event){
				event.preventDefault();
				let maindiv = document.querySelector('.questions');
				const noOfQuestions = Number(document.querySelector('.noOfQuestions').value);
				maindiv.innerHTML = "";
				for(let i=0;i<noOfQuestions;i++ ){
					maindiv.innerHTML+=`
							<div class='questionDiv'>
								<input class='questionNo' type="number" style='width: 40%; display: inline;' Placeholder="que No" value='${i+1}'>
								<input class='queMaxMarks' type="number" style='width: 40%; display: inline;' Placeholder="max marks">
							</div>
					`;
				} 
			})
			jQuery(document).ready(function($){
				$("#add_downloadble").submit(function(e){
					$.jGrowl("Uploading File Please Wait......", { sticky: true });
					e.preventDefault();
					var _this = $(e.target);
					let allQuestions = {'questions': []};
					document.querySelectorAll('.questionDiv').forEach(question=>{
						let questionDict = {};
						questionDict['questionNo'] = question.querySelector('.questionNo').value;
						questionDict['queMaxMarks'] = question.querySelector('.queMaxMarks').value;
						allQuestions['questions'].push(questionDict);
					})
					var formData = new FormData($(this)[0]);
					formData.append('questions', JSON.stringify(allQuestions));
					$.ajax({
						type: "POST",
						url: "add_assignment_save.php",
						data: formData,
						success: function(html){
							console.log(html);
							try {
								if(JSON.parse(html).text) {
									window.location.reload();
								}
							} catch (error) {
								console.log(error);
							}
							//$.jGrowl("Assignment Successfully Added", { header: 'Assignment Added' });
							//window.location = 'add_assignment.php';
						},
						cache: false,
						contentType: false,
						processData: false
					});
				});
			});
			</script>	
	
	
									</div>
									<div class="span8">
											
			<div class="alert alert-info">Check The Class you want to put this file.</div>
					
									<div class="pull-left">
							Check All <input type="checkbox"  name="selectAll" id="checkAll" />
								<script>
								$("#checkAll").click(function () {
									$('input:checkbox').not(this).prop('checked', this.checked);
								});
								</script>					
							</div>
											<table cellpadding="0" cellspacing="0" border="0" class="table" id="">

										<thead>
										        <tr>
												<th></th>
												<th>Class Name</th>
												<th>Subject Code</th>
												</tr>
												
										</thead>
										<tbody>
											
                              	<?php $query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_id = '$session_id' and school_year = '$school_year' ")or die(mysqli_error());
										$count = mysqli_num_rows($query);
										
									
										while($row = mysqli_fetch_array($query)){
										$id = $row['teacher_class_id'];
				
										?>                             
										<tr id="del<?php echo $id; ?>">
											<td width="30">
												<input id="" class="" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
											</td>
											<td><?php echo $row['class_name']; ?></td>
											<td><?php echo $row['subject_code']; ?></td>            
										</tr>
                         
						<?php } ?>
							
						   
                              
										</tbody>
									</table>
						
									
                                </div>
								<div class="span10">
								<hr>
									<center>
									<div class="control-group">
												<div class="controls">
													<button name="Upload" type="submit" value="Upload" class="btn btn-success" /><i class="icon-upload-alt"></i>&nbsp;Upload</button>
												</div>
									</div>
									</center>
             
						       </form>		
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
			

                </div>
							<?php/*  include('teacher_right_sidebar.php')  */?>
	
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>