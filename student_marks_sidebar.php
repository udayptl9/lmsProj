<style> 
	.progressBar {
		width: 100%;
		height: 5px;
		background: grey;
		opacity: 0.5;
	}
	.progress {
		height: 5px;
		width: 0%;
		background: green;
	}
</style>
<div class="span3" id="">
<?php $get_id = $_GET['id'];?>
<?php $student_id = $_GET['student_id'];
	$student_assignment_id = $_GET['student_assignment_id'];
?>
<?php 
	  $post_id = $_GET['post_id'];
	  if($post_id == ''){
	  ?>
		<script>
		window.location = "assignment_student.php<?php echo '?id='.$get_id; ?>";
		</script>
	  <?php
	  } else {
	  	$checkSql = mysqli_query($conn, "SELECT `fname`, `maxmarks` FROM `assignment` WHERE (`assignment_id` = $post_id)");
	  	while($row=mysqli_fetch_array($checkSql)) {
	  		$filename = $row['fname'];
	  		$maxmarks = $row['maxmarks'];
	  	}
	  	$checkSql = mysqli_query($conn, "SELECT `firstname`, `lastname`, `username`, `student_id` FROM `student` WHERE (`student_id` = $student_id)");
	  	while($row=mysqli_fetch_array($checkSql)) {
	  		$firstname = $row['firstname'];
	  		$lastname = $row['lastname'];
	  		$usn = $row['username'];
	  		$student_id = $row['student_id'];
	  	}
	  }
	
 ?>
 <?php
				  $checkSql = mysqli_query($conn, "SELECT `marks_alloc`, `totalmarks` FROM `student_assignment` WHERE (`student_assignment_id` = $student_assignment_id)");
				  while($row=mysqli_fetch_array($checkSql)) {
					  		$marksalloc = $row['marks_alloc'];
					  		$totalmarks = $row['totalmarks'];
					  		


		}
 ?>
 
	<div class="row-fluid">
				      <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"><h4><i class="icon-plus-sign"></i>Marks Obtained</h4></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form class="marksForm" enctype="multipart/form-data" name="upload" >
                        <div class="control-group">
                            <label class="control-label" for="input">File Name</label>
                            <div class="controls"> 
                            </div>
                        </div>
                        <div class="control-group">
                      
                            <div class="controls">
                                <input type="text"  name="name" Placeholder="File Name" value="<?php echo $filename; ?>" disabled class="input">
                            </div>
                        </div>
                        <div class="control-group">
                      		<label>Student Name:</label>
                            <div class="controls">
                                <input type="text"  name="name" disabled value="<?php echo $firstname." ".$lastname; ?>" Placeholder="File Name"  class="input">
                            </div>
                        </div>
                        <div class="control-group">
                      		<label>USN:</label>
                            <div class="controls">
                                <input type="text" name="name" disabled value="<?php echo $usn; ?>" Placeholder="File Name"  class="input">
                            </div>
                        </div>
                        <div class="control-group">
                      		<label>Roll No:</label>
                            <div class="controls">
                                <input type="text" name="name" disabled value="<?php echo $usn; ?>" Placeholder="File Name"  class="input">
                            </div>
                        </div>
                        <div class="control-group">
                      		<label>Max Marks:</label>
                            <div class="controls">
                                <input type="text" value="<?php echo $student_id; ?>" disabled name="name" Placeholder="File Name"  class="input">
                            </div>
                        </div>
                        <div class="control-group">
											<label class="control-label" for="marksobtained">Marks Obtained</label>
											<div class="progressBar"> 
												<div class="progress"></div>
											</div><div style="margin-bottom: 5px;"></div>
											<div class="form-group">
											<table class="table table-bordered" id="dynamic_field">
											<div class='marksobtained marksObtainedDiv'>
												<input type="number" value=0 class="marksobtained totalMarks" name="marksobtained" id="marksobtained" disabled placeholder="Total Marks">
											</div>
										</table>
										</div>
									</div>
                         	
                        <div class="control-group">
                            <div class="controls">

                            </div>
                        </div>
                    </form>
                    <script>
                    				const totolMarksObtained = <?php print_r(json_encode($totalmarks)); ?>;
                    				const marksAlloc = '<?php echo $marksalloc; ?>';
                    				if(totolMarksObtained != '' && marksAlloc != '' ) {
                    					document.querySelector('.progress').style.width = `${(Number(totolMarksObtained) / Number('<?php echo $maxmarks; ?>')) * 100}%`;
                    					document.querySelector('.totalMarks').value = Number(totolMarksObtained);

	                    				JSON.parse(marksAlloc).forEach(question=>{
	                    					addInput(question.questionNo, question.marksObtained);
	                    				}) 
										function addInput(questionNo, marksObtained) {
											var myDiv = document.createElement("div");
		 									myDiv.innerHTML = `
		 										<div class='marksobtained_div marksDiv'>
												<br>
												Q no. <input type="text" style="width: 25%; display: inline;"   class="marksobtained questionNo" size="30" disabled name="marksobtained" placeholder="Q.No" value='${questionNo}'>   Marks<input style="width: 25%; display: inline; margin-left:10px;" type="number" class="marksobtained enteredMarks" disabled name="marksobtained" placeholder="Marks" value='${marksObtained}'
												</div>
											`;
											document.querySelector('.marksobtained').appendChild(myDiv);
											false;
										}
                    				} else {
                    					document.querySelector('.marksObtainedDiv').innerHTML = `
                    						<p>Assignment not yet validated</p>
                    					`;
                    				}
								</script>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
						

	</div>
</div>
