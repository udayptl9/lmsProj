	<?php include('dbcon.php'); ?>
  <?php 
    $student_id = $_SESSION['id'];
    $student_username;
    $result = mysqli_query($conn, "SELECT `username` FROM `student` WHERE student_id=$student_id");
    while($row = mysqli_fetch_array($result)) {
      $student_username = $row['username'];
    }
  ?>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
		integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
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
        console.log(pastInternals);
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

		.graphContainer {
			grid-area: graph;
		}
		.internalGraph {
			font-size: 16px;
			cursor: pointer;
			color: green;
			opacity: 0.6;
		}
		.graphDisplay {
			position: fixed;
			width: 95vw;
			height: 95vh;
			background: white;
			border-radius: 20px;
			box-shadow: 1px 1px 3px 1px grey;
			top: 0;
			left: 0;
			left: 0;
			right: 0;
			margin: auto auto;
			z-index: 100000;
			transform: scale(0);
		}
		.graphShow {
			transform: scale(1);
			transition: 0.2s;
		}
		.graphHide {
			transform: scale(0);
			transition: 0.2s;
		}
		.closeButton {
			position: absolute;
			top: 50px;
			right: 20px;
			padding: 10px;
			cursor: pointer;
			border-radius: 5px;
			background: red;
			color: white;
			font-weight: bold;
			z-index: 10;
		}
		.graphContainer {
			position:absolute;
			top: 60px;
			bottom: 0;
			left: 0;
			right: 0;
			height: 50vh;
		}
		.internalDetails {
			top: 60px;
			margin-top: 60px;
			grid-area: details;
			max-height: 80vh;
			overflow-y: auto;
		}
		.internalDetails p {
			font-size: 20px;
		}
		.popUpMain {
			display: grid;
			grid-template-columns: 70% 30%;
			grid-template-areas: "graph details";
		}
	</style>
	<form action="delete_student.php" method="post">
		<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
			<thead>
				<tr class="headings">
					<th>Name</th>
					<th>ID Number</th>
					<th>Class</th>
					<th>Total</th>
					<th>Average</th>
				</tr>
			</thead>
			<tbody>

				<?php
		$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
		LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
		INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
		while($row = mysqli_fetch_array($my_student)){
      $id = $row['teacher_class_student_id'];
      if($row['username'] !== $student_username) {
        continue;
      }
		?>



				<tr class="studentrows">

					<td class='studentName'><?php echo $row['firstname'] . " " . $row['lastname']; ?></td>
					<td class='studentUSN'><?php echo $row['username']; ?></td>


					<td width="100"><?php echo $row['class_name']; ?></td>
					<td width="100" class='totalMarksTd'></td>
					<td class='averageMarks'></td>
				</tr>
				<?php } ?>




			</tbody>
		</table>
	</form>
	<script>
		let check = 1;
		let headingNumber = 0;
		pastInternals.forEach(internal => {
			const data = internal['students'];
			for (let i = 0; i < data.length; i++) {
				document.querySelectorAll('.studentUSN').forEach(row => {
					if (row.innerHTML == data[i]['USN']) {
						let totalIAs = 0;
						data[i]['IAs'].forEach(ia => {
							totalIAs++;
							if (check) {
								let th = document.createElement('th');
								th.innerHTML =
									`<span class='iaNameToEdit'>${ia['IAName']}</span>`;
								th.classList.add('thEditable');
								th.classList.add('IaNameTh');
								document.querySelector('.headings').appendChild(th);
								headingNumber++;
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
						row.parentElement.querySelector('.averageMarks').innerHTML = (Number(row.parentElement
								.querySelector('.totalMarksTd').innerHTML) / Number(totalIAs)).toFixed(1);
						check = 0;
					}
				})
      }
		})
	</script>