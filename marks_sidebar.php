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
 
	<div class="row-fluid">
				      <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"><h4><i class="icon-plus-sign"></i> Input Marks</h4></div>
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
											<div class="form-group">
											<table class="table table-bordered" id="dynamic_field">
											<div class='marksobtained'>
												<input type="number" value=0 class="marksobtained totalMarks" name="marksobtained" id="marksobtained" placeholder="Total Marks"><button  style="background: green; color: white; font-weight: bold; margin-left:6px;" class="detail_add">Add Detail</button>
											</div>
										</table>
										</div>
									</div>
                         	
                        <div class="control-group">
                            <div class="controls">

                                <button name="Upload" type="submit" value="Upload" class="btn btn-success" /><i class="icon-upload-alt"></i>&nbsp;Upload</button>
                            </div>
                        </div>
                    </form>
                    <script>
									let index = 0;
									var inputs = [];
									document.querySelector('.detail_add').addEventListener('click', function(event){
										event.preventDefault();
										addInput();
									})
									document.querySelector('.marksForm').addEventListener('submit', function(event) {
										event.preventDefault();
										const student_assignment_id = <?php echo $student_assignment_id ?>;
										let marksFinal = [];
										document.querySelectorAll('.marksDiv').forEach(mark=>{
											let student = {};
											student['questionNo'] = mark.querySelector('.questionNo').value;
											student['marksObtained'] = mark.querySelector('.enteredMarks').value;
											marksFinal.push(student);
										})
										$.ajax({
											url: 'marks_save.php',
											type: 'POST',
											data: {
												marks: JSON.stringify(marksFinal),
												student_assignment_id: student_assignment_id,
												marksObtained: Number(document.querySelector('.totalMarks').value),
											}, beforeSend: function() {
												console.log("Assinging Marks");
											}, success: function(response) {
												try {
													if(JSON.parse(response).text) {
														window.location.reload();
													}
												} catch(error) {
													console.log(error);
													console.log(response);
												}
											}
										})
									})
									function addInput() {
										var myDiv = document.createElement("div");
	 									myDiv.innerHTML = `
	 										<div class='marksobtained_${index} marksDiv'>
											<br>
											<input type="text" style="width: 25%; display: inline;"   class="marksobtained questionNo" size="30" name="marksobtained" placeholder="Q.No"><input style="width: 25%; display: inline; margin-left:10px;" type="number" class="marksobtained enteredMarks" name="marksobtained" placeholder="Marks" value=0><button style="margin-left:10px;"class='removeIcon' onclick="removeInput('${index}')">Delete</button>
											</div>
										`;
										document.querySelector('.marksobtained').appendChild(myDiv);
										index++;
										inputs = document.querySelectorAll('.enteredMarks');
										inputs.forEach((enter)=>{
											enter.addEventListener('keyup', function(event) {
												event.preventDefault();
												document.querySelector('.totalMarks').value = 0;
												document.querySelectorAll('.enteredMarks').forEach(temp=>{
													document.querySelector('.totalMarks').value = Number(document.querySelector('.totalMarks').value) + Number(temp.value);
												})
											})
										})
										return false;

									}
									function removeInput(index) {
										document.querySelector(`.marksobtained_${index}`).remove();
										inputs = document.querySelectorAll('.enteredMarks');
										document.querySelector('.totalMarks').value = 0;
										document.querySelectorAll('.enteredMarks').forEach(temp=>{
											document.querySelector('.totalMarks').value = Number(document.querySelector('.totalMarks').value) + Number(temp.value);
										})
										return false;
									}
									document.querySelector('.marksForm').addEventListener('submit', function(event){
										event.preventDefault();
										console.log("DO IT Tomorrow");
									})
								</script>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
						

	</div>
</div>
