<div class="span3" id="">
	<div class="row-fluid">
				      <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"><h4><i class="icon-plus-sign"></i> Add Assigment</h4></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
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