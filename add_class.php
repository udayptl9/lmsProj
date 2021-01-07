						<!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"><h4><i class="icon-plus-sign"></i> Add class</h4></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post" id="add_class">
									<div class="control-group">
											

										<div class="container">
												
													<div class="form-group">
													<label>Department:</label>
														<select name="department_id" class="form-control form-control-lg department_id" id="department"  required>
															<option value="" disabled selected>-Select department-</option>
															<?php
															$query = mysqli_query($conn,"select * from department order by department_name");
															while($row = mysqli_fetch_array($query)){
															
															?>
											<option value="<?php echo $row['department_id']; ?>"><?php echo $row['department_name']; ?></option>
											<?php } ?>
														</select>
													</div>



													<div class="form-group">
													<label>Class Name:</label>
													<input type="hidden" name="session_id" class="session_id" value="<?php echo $session_id; ?>">
														<select name="class_id" class="form-control form-control-lg class_id" id="class_name" required>
															<option value="" disabled selected>-Select class-</option>

															
															
														</select>
													</div>
													<div class="form-group">
													<label>Subject:</label>
														<select name="subject_id" class="form-control form-control-lg subject_id" id="subject_code" required>
															<option value="" disabled selected>-Select subject-</option>

																													
														</select>
													</div>
												
										</div>

									 	
										<div class="control-group">
											<label>School Year:</label>
                                          <div class="controls">
											<?php
											$query = mysqli_query($conn,"select * from school_year order by school_year DESC");
											$row = mysqli_fetch_array($query);
											?>
											<input id="" type="text" name="school_year" class="span5 school_year" value="<?php  echo $row['school_year']; ?>"disabled >
                                          </div>
                                        </div>
											<div class="control-group">
                                          <div class="controls">
												<button name="save" class="btn btn-success"><i class="icon-save"></i> Save</button>
                                          </div>
                                        </div>
                                </form>
								
            <script>
			jQuery(document).ready(function($){
				$("#add_class").submit(function(e){
					e.preventDefault();
					const department_id = document.querySelector('.department_id').value;
					const class_id = document.querySelector('.class_id').value;
					const session_id = document.querySelector('.session_id').value;
					const subject_id = document.querySelector('.subject_id').value;
					const school_year = document.querySelector('.school_year').value;
					$.ajax({
						type: "POST",
						url: "add_class_action.php",
						data: {
							department_id: department_id,
							class_id: class_id,
							subject_id: subject_id,
							session_id: session_id,
							school_year: school_year,
						}, beforeSend: function() {
							console.log("Adding Class");
						},
						success: function(html){
							window.location.reload();
						}
					});
				});
			});

			$(document).ready(function(){
				$("#department").change(function(){
					var department_id=$(this).val();
					$.ajax({
						url:"action.php",
						type:"POST",
						data:{departmentID:department_id},
						success:function(data){
							$("#class_name").html(data);
						}
					});
				});
			});

			$(document).ready(function(){
				$("#class_name").change(function(){
					var class_id=$(this).val();
					$.ajax({
						url:"actionclass.php",
						type:"POST",
						data:{classID:class_id},
						success:function(data){
							$("#subject_code").html(data);
						}
					});
				});
			});
			</script>		

								</div>
                            </div>
                        </div>
                        <!-- /block -->
						
