   <div class="row-fluid">
	   <style>
		   .infoContent {
			   position: absolute;
			   width: 500px;
			   height: 100px;
			   right: -480px;
			   top: 60px;
			   background: white;
			   border: 0;
			   box-shadow: 1px 1px 3px 1px grey;
			   border-radius: 15px;
			   display: none;
			   z-index: 5;
		   }
		   .tabs {
			   width: 100%;
			   display: grid;
			   grid-template-columns: repeat(2, 1fr);
			   grid-gap: 5px;
			   height: 20px;
		   }
		   .tabs div {
			   background: lightgreen;
			   text-align: center;
			   cursor: pointer;
			   opacity: 0.5;
		   }
		   .active {
			   background: cornflowerblue !important;
			   color: white;
			   font-weight: bold;
			   opacity: 1 !important;
		   }
		   table {
			   max-height: 100px;
			   overflow-y: auto;
		   }
	   </style>
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Student</div>
							</div>
							<div style="padding: 8px;">
								<div class="tabs">
									<div class="singleTab active" onclick="document.querySelector('.single').style.display = 'block'; document.querySelector('.multiple').style.display = 'none';">Single</div>
									<div class="multipleTab" onclick="document.querySelector('.multiple').style.display = 'block'; document.querySelector('.single').style.display = 'none';">Multiple</div>
								</div>
							</div>
							<div>
								<div class="block-content collapse in single">
									<div class="span12">
									<form id="add_student" method="post">
									
											<div class="control-group">
									
											<div class="controls">
												<label>Class</label>
												<select  name="class_id" class="" required>
													<option></option>
												<?php
												$cys_query = mysqli_query($conn,"select * from class order by class_name");
												while($cys_row = mysqli_fetch_array($cys_query)){
												
												?>
												<option value="<?php echo $cys_row['class_id']; ?>"><?php echo $cys_row['class_name']; ?></option>
												<?php } ?>
												</select>
											</div>
											</div>
									
											<div class="control-group">
											<div class="controls">
												<input name="un" class="input focused" id="focusedInput" type="text" placeholder = "ID Number" required>
											</div>
											</div>
											
											<div class="control-group">
											<div class="controls">
												<input name="fn" class="input focused" id="focusedInput" type="text" placeholder = "Firstname" required>
											</div>
											</div>
											
											<div class="control-group">
											<div class="controls">
												<input  name="ln" class="input focused" id="focusedInput" type="text" placeholder = "Lastname" required>
											</div>
											</div>
									
											
												<div class="control-group">
											<div class="controls">
													<button name="save" class="btn btn-info"><i class="icon-plus-sign icon-large"></i></button>

											</div>
											</div>
									</form>
									</div>
								</div>
								<div style="padding: 5px; display: none;" class="block-content in multiple">
									<div style="position: relative;">
										<p class="info"
											style="position: absolute; right: 25px; text-align:center; cursor: pointer; border-radius: 50%; background: blue; color: white; font-weight: bold; width: 15px;">
											i</p>
										<div>
											<label>Class</label>
											<select name="class_id_sheet" class="class_id_sheet" required>
												<option></option>
												<?php
																										$cys_query = mysqli_query($conn,"select * from class order by class_name");
																										while($cys_row = mysqli_fetch_array($cys_query)){
																										
																										?>
												<option value="<?php echo $cys_row['class_id']; ?>">
													<?php echo $cys_row['class_name']; ?>
												</option>
												<?php } ?>
											</select>
										</div>
										<div class='infoContent'>
											<img src="static/images/example.jpg" alt="">
										</div>
									</div>
									<form method="POST" action="downloadTemplate.php">
										<button class="template">Download Template</button>
									</form>
									<form method='post' class='addStudentSpreadSheet' enctype="multipart/form-data">
										<div>
											<input type="file" name="file" id="fileSheet" accept=".xls,.xlsx">
										</div>
									</form>
									<div class="result">
								
									</div>
								</div>
							</div>
                        </div>
						
                        <!-- /block -->
					</div>
			<script>
			let showAdd = true;
			document.querySelector('.singleTab').addEventListener('click', function(event) {
				event.preventDefault();
				console.log("Single clicked");
				document.querySelector('.singleTab').classList.add('active');
				document.querySelector('.multipleTab').classList.remove('active');
			})
			document.querySelector('.multipleTab').addEventListener('click', function(event) {
				event.preventDefault();
				document.querySelector('.multipleTab').classList.add('active');
				document.querySelector('.singleTab').classList.remove('active');
			})
			document.querySelector('.info').addEventListener('mouseenter', function(event) {
				event.preventDefault();
				document.querySelector('.infoContent').style.display = 'inline';
			})
			document.querySelector('.info').addEventListener('mouseleave', function(event) {
				event.preventDefault();
				document.querySelector('.infoContent').style.display = 'none';
			})
			document.getElementById('fileSheet').addEventListener('change', function(event) {
				event.preventDefault();
				var data = new FormData();
				data.append('file', document.getElementById('fileSheet').files[0]);
				var request = new XMLHttpRequest();
				request.open('post', 'addStudentsAction.php?action=filedata');
				request.addEventListener('load', function (e) {
					var obj = JSON.parse(this.responseText);
					if(obj.text == 'false') {
						alert("File Name is not valid");
					} else {
						output(obj.data);
					}
				});
				request.send(data);
			})
			function output(json) {
				if (showAdd) {
					let objectKeys = Object.keys(json['Sheet1'][0]);
					if (objectKeys[0] != 'FirstName' || objectKeys[1] != 'LastName' || objectKeys[2] != 'USN' || objectKeys[3] != 'DOB') {
						showAdd = false;
					} else {
						document.querySelector('.result').innerHTML = `
							<table style="width: 100%; border-collapse: collapse;" border=1>
								<thead>
									<tr>
										<th><input onchange="checkAll()" class='checkAll' type="checkbox" checked></th>
										<th>First Name</th>	
										<th>Last Name</th>	
										<th>USN</th>	
										<th>DOB</th>	
									</tr>
								</thead>
								<tbody class='studentsList'>
								
								</tbody>	
							</table>
						`;
					}
				}
				json['Sheet1'].forEach(student=>{
					if(showAdd) {
						showAdd = (student.DOB.toString().length < 7) ? false : true;
						document.querySelector('.studentsList').innerHTML += `
						<tr>
							<td>
								<input class='studentCheckBox' type="checkbox" checked>	
							</td>
							<td class='fname'>
								${student.FirstName}
							</td>
							<td class='lname'>
								${student.LastName}
							</td>
							<td class='usn'>
								${student.USN}
							</td>
							<td class='dob' ${(student.DOB.toString().length < 7) ? ("style='border: 8px solid red;'") : ('')} ${(student.DOB.toString().length == 7) ? ("style='border: 8px solid orange;'") : ('')}>
								${(student.DOB.toString().length == 7) ? ('0' + student.DOB) : (student.DOB)}
							</td>
						</tr>
					`;
					}
				})
				if(showAdd) {
					document.querySelector('.result').innerHTML += `
						<button onclick='addStudents()' class="addStudentsFinal">Add Students</button>
					`;
				} else {
					alert("Excel Sheet Doesn't have a valid data!!");
				}
			}
			function checkAll() {
				let checkboxs = document.querySelectorAll('.studentCheckBox');
				checkboxs.forEach(check=>{
					(document.querySelector('.checkAll').checked)?(check.checked=true):(check.checked=false);
				})
			}
			function addStudents() {
				var students = [];
				let checkboxs = document.querySelectorAll('.studentCheckBox');
				checkboxs.forEach(check=>{
					if(check.checked) {
						let student = {}
						const fname = check.parentElement.parentElement.querySelector('.fname').innerHTML.trim();
						const lname = check.parentElement.parentElement.querySelector('.lname').innerHTML.trim();
						const usn = check.parentElement.parentElement.querySelector('.usn').innerHTML.trim();
						const dob = check.parentElement.parentElement.querySelector('.dob').innerHTML.trim();
						student['fname'] = fname;
						student['lname'] = lname;
						student['usn'] = usn;
						student['did'] = <?php echo $_SESSION['department']; ?>,
						student['dob'] = Number(dob);
						student['classId'] = Number(document.querySelector('.class_id_sheet').value);
						students.push(student);
					}
				})
				$.ajax({
					url: 'addStudentsAction.php',
					type: 'post',
					data: {
						action: 'addStudents',
						data: JSON.stringify(students),
					}, beforeSend: function() {
						console.log("Adding Students");
						console.log(students);
					}, success: function(response) {
						console.log(response);
						try {
							const responseObj = JSON.parse(response);
							if(responseObj.text === true) {
								document.querySelector('#fileSheet').style.display = 'none';
								if(responseObj.errors.length > 0) {
									var p = document.createElement("p");
									p.classList.add('errorMessage');
									p.style.color = 'red';
									p.innerHTML = "Students already exists USNs: ";
									responseObj.errors.forEach(error=>{
										p.innerHTML += `${error} `;
									})
									p.innerHTML += `<a onclick='window.location.reload()' style='cursor: pointer;'>Refresh</a>`;
									document.querySelector('.result').appendChild(p); 
								} else {
									window.location.reload();
								}
							} else {
								console.log(responseObj);
							}
						} catch (error) {
							console.log('response ',response);
							console.log('error', error);
						}
					}

				})
			}
			jQuery(document).ready(function($){
				$("#add_student").submit(function(e){
					e.preventDefault();
					var _this = $(e.target);
					var formData = $(this).serialize();
					$.ajax({
						type: "POST",
						url: "save_student.php",
						data: formData,
						success: function(html){
							$.jGrowl("Student Successfully  Added", { header: 'Student Added' });
							$('#studentTableDiv').load('student_table.php', function(response){
								$("#studentTableDiv").html(response);
								$('#example').dataTable( {
									"sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
									"sPaginationType": "bootstrap",
									"oLanguage": {
										"sLengthMenu": "_MENU_ records per page"
									}
								} );
								$(_this).find(":input").val('');
								$(_this).find('select option').attr('selected',false);
								$(_this).find('select option:first').attr('selected',true);
							});
						}
					});
				});
			});
			</script>		
