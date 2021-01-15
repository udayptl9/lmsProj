	<?php include('dbcon.php'); ?>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		let pastInternals = [];
	</script>
	<?php 
		$get_id = $_GET['id'];
		$sql = "SELECT * FROM `internals` WHERE internal_class_id=$get_id";
		$result = mysqli_query($conn, $sql);
		while($row=mysqli_fetch_array($result)) {
			echo '<script>
				pastInternals.push('.$row["student_marks"].');
			</script>';
		}
	?>
	<style>
		.addinternalpopup {
			position: fixed;
			width: 20vw;
			height: 20vh;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			margin: auto auto;
			z-index: 10;
			background: white;
			border: 0;
			border-radius: 12px;
			box-shadow: 1px 1px 3px 1px grey;
			transform: scale(0);
			overflow-y: auto;
		}

		.internalIn {
			transform: scale(1);
			transition: 0.2s;
		}

		.inputDisabledEvent {
			cursor: not-allowed;
		}

		/* Chrome, Safari, Edge, Opera */
		.previousMarks::-webkit-outer-spin-button,
		.previousMarks::-webkit-inner-spin-button {
			-webkit-appearance: none;
		}

		/* Firefox */
		.previousMarks[type=number] {
			-moz-appearance: textfield;
		}

		.internalOut {
			transform: scale(0);
			transition: 0.2s;
		}
	</style>
	<div class="addinternalpopup">
		<button class="btn btn-danger closeinternalpopup">X</button>
		<div class="form-group modules">
			<div class='module_0 module'>
				<p style='display: inline;'>Internal: </p><input style='display: inline;' class='internalName'
					placeholder="Internal-Name" type="text"><input style='display: inline; width:80px;' class='internalName1'
					placeholder="Max Marks" type="text"><br><button class="btn btn-success addinternalsubmit"
					style=margin-right;>Submit</button></br>
			</div>
		</div>
	</div>
	<form action="delete_student.php" method="post">
		<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
			<a data-toggle="x" href="#student_delete" id="delete" class="btn btn-danger" name=""><i
					class="icon-trash icon-large"></i></a>


			<div class="pull-right">

				<input class='topic' style='display: none;' placeholder="Internal Name" type="text"><button
					class="btn btn-danger" onclick="" style='display: none;'>X</button>

				<a class="btn btn-info addinternal"><i class="icon-pencil"></i>Add Internal</a>
				<a class="btn btn-info submit saveinternal"><i class="icon-save icon-large"></i> Save</a>
				<a onclick="window.open('print_internal.php<?php echo '?id='.$get_id; ?>')" class="btn btn-success"><i
						class="icon-list"></i> Report</a>
			</div>
			<script>
				function create_UUID(){
					var dt = new Date().getTime();
					var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
							var r = (dt + Math.random()*16)%16 | 0;
							dt = Math.floor(dt/16);
							return (c=='x' ? r :(r&0x3|0x8)).toString(16);
					});
					return uuid;
			}
				let totalIAs = 0;
				document.querySelector('.addinternalsubmit').addEventListener('click', function (event) {
					event.preventDefault();
					let th = document.createElement('th');
					th.classList.add('IaNameTh');
					th.innerHTML =
						`${document.querySelector('.internalName').value} (${document.querySelector('.internalName1').value})`;
					document.querySelector('.headings').appendChild(th);
					document.querySelectorAll('.studentrows').forEach(row => {
						let td = document.createElement('td');
						td.classList.add('newMark');
						td.innerHTML =
							`<input type='number' placeholder='marks' class='marksEdited' style='width: 50px;'><span class='newIA' style='display: None;'>${document.querySelector('.internalName').value} (${document.querySelector('.internalName1').value})</span>`;
						row.appendChild(td);
					})
					totalIAs++;
					let index = 0;
					let studentrows = document.querySelectorAll('.studentrows');
					for (let i = 0; i < studentrows.length; i++) {
						studentrows[i].addEventListener('keyup', function (event) {
							event.preventDefault();
							let totalMarks = 0;
							studentrows[i].querySelectorAll('.marksEdited').forEach(row1 => {
								totalMarks += Number(row1.value);
							})
							document.querySelectorAll('.totalMarksTd')[i].innerHTML = totalMarks;
						})
					}
					document.querySelector('.closeinternalpopup').click();
					document.querySelector('.internalName').value = '';
					document.querySelector('.internalName1').value = '';
				})
			</script>

			<script>
				//popup menu 

				document.querySelector('.addinternal').addEventListener('click', function (event) {
					event.preventDefault();
					document.querySelector('.addinternalpopup').classList.add('internalIn');
					document.querySelector('.addinternalpopup').classList.remove('internalOut');
				})
				document.querySelector('.closeinternalpopup').addEventListener('click', function (event) {
					event.preventDefault();
					document.querySelector('.addinternalpopup').classList.add('internalOut');
					document.querySelector('.addinternalpopup').classList.remove('internalIn');
				})
				document.querySelector('.saveinternal').addEventListener('click', function (event) {
					event.preventDefault();
					let students = {
						'students': []
					};
					const totalStudentsDiv = document.querySelectorAll('.studentrows');
					for (let i = 0; i < totalStudentsDiv.length; i++) {
						let student = {};
						student['Name'] = totalStudentsDiv[i].querySelector('.studentName').innerHTML;
						student['USN'] = totalStudentsDiv[i].querySelector('.studentUSN').innerHTML;
						student['class'] = '<?php echo $get_id; ?>';
						student['IAs'] = [];
						const IAs = totalStudentsDiv[i].querySelectorAll('.newMark');
						for (let j = 0; j < IAs.length; j++) {
							let studentIA = {};
							studentIA['IAName'] = document.querySelectorAll('.IaNameTh')[j].innerHTML;
							studentIA['IAMark'] = IAs[j].querySelector('.marksEdited').value;
							student['IAs'].push(studentIA);
						}
						students['students'].push(student);
					}
					$.ajax({
						url: 'internalfinal.php',
						type: 'POST',
						data: {
							syllabus: JSON.stringify(students),
							id: <?php echo $get_id ?>,
						},
						beforeSend: function () {
							console.log(students);
						},
						success: function (response) {
							try {
								if (JSON.parse(response).text) {
									window.location.reload();
								} else {
									console.log(JSON.parse(response));
								}
							} catch (error) {
								console.log(error);
							}
						}
					})
				})
			</script>

			<?php include('modal_delete.php'); ?>
			<thead>
				<tr class="headings">
					<th></th>
					<th>Name</th>
					<th>ID Number</th>
					<th>Class</th>
					<th>Total</th>
				</tr>
			</thead>
			<tbody>

				<?php
		$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
		LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
		INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
		while($row = mysqli_fetch_array($my_student)){
			$id = $row['teacher_class_student_id'];
		?>



				<tr class="studentrows">
					<td width="30">
						<input id="optionsCheckbox" class="uniform_on test" name="selector[]" type="checkbox"
							value="<?php echo $id; ?>">
					</td>

					<td class='studentName'><?php echo $row['firstname'] . " " . $row['lastname']; ?></td>
					<td class='studentUSN'><?php echo $row['username']; ?></td>


					<td width="100"><?php echo $row['class_name']; ?></td>
					<td width="100" class='totalMarksTd'></td>
				</tr>
				<?php } ?>

				<?php

if (isset($_POST['submit'])){

	$test = $_POST['test'];
	for($b = 1; $b <=  $test; $b++){
	

		
		
	$test1 = "studentName".$b;
	$test2 = "studentUSN".$b;
	$test3 = "teacher_id".$b;
	$test4 = "totalMarksTd".$b;
	
	$id = $_POST[$test1];
	$class_id = $_POST[$test2];
	$teacher_id = $_POST[$test3];
	$Add = $_POST[$test4];
	
 	$query = mysqli_query($conn,"select * from teacher_class_student where student_id = '$id' and teacher_class_id = '$class_id' ")or die(mysqli_error());
	$count = mysqli_num_rows($query); 
	
 	if ($count > 0){ ?>
				<script>
					alert('Student Already in the class');
				</script>
				<script>
					window.location = "add_student.php<?php echo '?id='.$get_id; ?>";
				</script>

				<?php
	}else  
	if($Add == 'Add'){
	
	
	mysqli_query($conn,"insert into teacher_class_student (student_id,teacher_class_id,teacher_id) values('$id','$class_id','$teacher_id') ")or die(mysqli_error());
	
	
	}
}}	

	
?>



			</tbody>
		</table>
	</form>
	<script>
		let check = 1;
		pastInternals.forEach(internal => {
			const data = internal['students'];
			for (let i = 0; i < data.length; i++) {
				document.querySelectorAll('.studentUSN').forEach(row => {
					if (row.innerHTML == data[i]['USN']) {
						data[i]['IAs'].forEach(ia => {
							if (check) {
								let th = document.createElement('th');
								th.innerHTML = `${ia['IAName']}`;
								th.classList.add('thEditable');
								th.classList.add('IaNameTh');
								document.querySelector('.headings').appendChild(th);
							}
							let td = document.createElement('td');
							td.classList.add('newMark');
							td.innerHTML = `<div style="display:inline-block; position:relative;">
									<input value='${ia['IAMark']}' type='number' disabled placeholder='marks' class='marksEdited previousMarks'
										style='width: 50px;'>
									<div class='inputDisabledEvent' style="position:absolute; left:0; right:0; top:0; bottom:0;"></div>
								</div>​
								`;
							row.parentElement.appendChild(td);
							row.parentElement.querySelector('.totalMarksTd').innerHTML = Number(row.parentElement
								.querySelector('.totalMarksTd').innerHTML) + Number(ia['IAMark']);
						})
						check = 0;
					}
				})
			}
			document.querySelectorAll('.inputDisabledEvent').forEach(mark => {
				mark.addEventListener('dblclick', function (event) {
					event.preventDefault();
					mark.parentElement.querySelector('.previousMarks').disabled = false;
					mark.style.display = 'none';
					mark.parentElement.querySelector('.previousMarks').focus();
				})
			})
			document.querySelectorAll('.previousMarks').forEach(mark => {
				mark.addEventListener('focusout', function (event) {
					event.preventDefault();
					mark.parentElement.querySelector('.previousMarks').disabled = true;
					mark.parentElement.querySelector('.inputDisabledEvent').style.display = 'inline-block';
				})
			})
			let studentrows = document.querySelectorAll('.studentrows');
			for (let i = 0; i < studentrows.length; i++) {
				totalIAs++;
				studentrows[i].addEventListener('keyup', function (event) {
					event.preventDefault();
					let totalMarks = 0;
					studentrows[i].querySelectorAll('.marksEdited').forEach(row1 => {
						totalMarks += Number(row1.value);
					})
					document.querySelectorAll('.totalMarksTd')[i].innerHTML = totalMarks;
				})
			}
			document.querySelectorAll('.thEditable').forEach(editable => {
				editable.addEventListener('dblclick', function (event) {
					event.preventDefault();
					editable.innerHTML = `<input type='text' class='thedit' value='${editable.innerHTML}'>`;
					document.querySelector('.thedit').focus();
					document.querySelector('.thedit').addEventListener('focusout', function (event) {
						event.preventDefault();
						event.target.parentElement.innerHTML = `${event.target.value}`;
					})
				})
			})
		})
	</script>