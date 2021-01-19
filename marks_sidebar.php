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
	  	$checkSql = mysqli_query($conn, "SELECT `fname`, `maxmarks`, `qmaxmarks` FROM `assignment` WHERE (`assignment_id` = $post_id)");
	  	while($row=mysqli_fetch_array($checkSql)) {
	  		$filename = $row['fname'];
	  		$maxmarks = $row['maxmarks'];
	  		$queMarks = $row['qmaxmarks'];
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
											<div class='marksobtained'>
												<input type="number" disabled value=0 class="marksobtained totalMarks" name="marksobtained" id="marksobtained" placeholder="Total Marks">
											</div>
										</div>
									</div>
                         	
                        <div class="control-group">
                            <div class="controls">

                                <button name="Upload" type="submit" value="Upload" class="btn btn-success uploadInternal" /><i class="icon-upload-alt"></i>&nbsp;Upload</button>
                            </div>
                        </div>
                    </form>
                    <script>
									let index = 0;
									var inputs = [];
									const qMarks = JSON.parse('<?php print_r($queMarks); ?>');
									document.querySelector('.marksobtained').innerHTML += `
										<table style="text-align: center; border-collapse: coolapse;" border=1>
											<thead>
												<tr>
													<th style='padding: 5px;'>Question No</th>
													<th style='padding: 5px;'>Marks Obtained</th>
												</tr>
											</thead>
											<tbody class='marksObtainedTable'></tbody>
										</table>
									`;
									qMarks['questions'].forEach(question=>{
										addInput(question.questionNo, question.queMaxMarks);
									})
									document.querySelector('.marksForm').addEventListener('submit', function(event) {
										event.preventDefault();
										const student_assignment_id = <?php echo $student_assignment_id ?>;
										let marksFinal = {questions: []};
										document.querySelectorAll('.marksDiv').forEach(mark=>{
											let student = {};
											student['questionNo'] = mark.querySelector('.questionNo').innerHTML;
											student['marksObtained'] = mark.querySelector('.enteredMarks').value;
											marksFinal['questions'].push(student);
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
									function addInput(questionNo=1, maxmarks=0) {
										var myDiv = document.createElement("tr");
										myDiv.classList.add('marksDiv');
	 									myDiv.innerHTML = `
	 										<td class='questionNo'>${questionNo}</td>
	 										<td><input type='text' class='enteredMarks' value='0' style='width: 25px;'>   /<span class='maxmarks'>${maxmarks}</span></td>
										`;
										document.querySelector('.marksObtainedTable').appendChild(myDiv);
										index++;
										inputs = document.querySelectorAll('.enteredMarks');
										inputs.forEach((enter)=>{
											enter.addEventListener('keyup', function(event) {
												event.preventDefault();
												if(event.target.value > Number(event.target.parentElement.querySelector('.maxmarks').innerHTML)) {
													event.target.style.border = '3px solid red';
													document.querySelector('.uploadInternal').style.display = 'none';
												} else {
													event.target.style.border = '1px solid #ccc';
													document.querySelector('.uploadInternal').style.display = 'block';
												}
												document.querySelector('.totalMarks').value = 0;
												document.querySelectorAll('.enteredMarks').forEach(temp=>{
													document.querySelector('.totalMarks').value = Number(document.querySelector('.totalMarks').value) + Number(temp.value);
												})
											})
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
