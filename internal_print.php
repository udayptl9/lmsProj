<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
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
	<script>let totalIAs = pastInternals[0]['students'][0]['IAs'].length;
</script>
	
    <body>
    	<style> 
    		.historyAttendenece {
		      cursor: pointer;
		      text-decoration: underline;
		    }
		    .todayAttendence {
		      display: inline-block;
		    }
		    .pastAttendence {
		      display: inline-block;
		      max-width: 95%;
		      overflow-x: auto;
		    }
		    .attendenceTable {
		      min-width: 100%;
		    }
		    .attendenceTable th, .attendenceTable td {
		      padding: 10px;
		      text-align: center;
		    }
    	</style>
    		<script>    
				function exportTableToExcel(tableID, filename = ''){
    var downloadLink;
    var dataType = 'application/vnd.ms-excel';
    var tableSelect = document.getElementById(tableID);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
    // Specify file name
    filename = filename?filename+'.xls':'excel_data.xls';
    
    // Create download link element
    downloadLink = document.createElement("a");
    
    document.body.appendChild(downloadLink);
    
    if(navigator.msSaveOrOpenBlob){
        var blob = new Blob(['\ufeff', tableHTML], {
            type: dataType
        });
        navigator.msSaveOrOpenBlob( blob, filename);
    }else{
        // Create a link to the file
        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
        // Setting the file name
        downloadLink.download = filename;
        
        //triggering the function
        downloadLink.click();
    }
}
		 	</script>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('class_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
						<div class="pull-right">
						
							<button onclick="exportTableToExcel('tblData')"   class="btn btn-success"><i class="icon-print"></i> Print Student List</button>
						</div>
						<?php include('my_students_breadcrums.php'); ?>
                        <!-- block -->

                        <div id="block_bg" class="block">
                        		  <div class="navbar navbar-inner block-header">
              <div id="" class="muted pull-right">
              	<?php $class_query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										LEFT JOIN department ON department.department_id = teacher_class.department_id
										where teacher_class_id = '$get_id'")or die(mysqli_error());
										$class_row = mysqli_fetch_array($class_query);
								?>
                <?php 
								$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
                $count_my_student = mysqli_num_rows($my_student);
                $rr = mysqli_fetch_array($my_student)
                ?>
                Number of Students: <span class="badge badge-info"><?php echo $count_my_student; ?></span>
              </div>
            </div>
                            
                            <div class="block-content collapse in">
                                <div class="span12">
											
												<table id="tblData" cellpadding="0" cellspacing="0" border="0" class="table" >
													
										 
										  
										 	<tr>
										 	<th style=" margin:0px;padding:0px;display:none;" class='excelLogo'><h2> B.L.D.E.A's V.P. Dr.P.G.Halakatti College of Engineering and Technology</h2></th></tr>
										 	<tr><th style="display:none;" class='excelLogo1'><h4>Department:<?php echo $class_row['department_name']; ?></h4></th></tr>
										 	<tr><td style="display:none;" class='excelLogo2'><h5>subject:<?php echo $class_row['subject_code']; ?></h5></td><td style="display:none;" class='excelLogo'style="margin-left:35px;"><h5>Class:<?php echo $rr['class_name']; ?></h5></td></tr>
										 	<tr>
										 		</tr>
										 
										 

										 
										 
										 
										                
							
										<thead>
				<tr class="headings">
					<th>Roll No</th>
					<th>Name</th>
					<th>ID Number</th>
					<th>Class</th>
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
		?>



				<tr class="studentrows">
					<td width="100"><?php echo $row['rollno']; ?></td>
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
							td.innerHTML = `${ia['IAMark']}`;
							row.parentElement.appendChild(td);
							row.parentElement.querySelector('.totalMarksTd').innerHTML = (Number(row.parentElement
															.querySelector('.totalMarksTd').innerHTML) + Number(ia['IAMark']) / totalIAs).toFixed(2);
						})
						check = 0;
					}
				})
			}
		})
	</script>
	<script>
	  document.querySelector('.excelLogo').colSpan = `${document.querySelector('.headings').querySelectorAll('th').length}`;
	  document.querySelector('.excelLogo1').colSpan = `${document.querySelector('.headings').querySelectorAll('th').length+1}`;
</script>
										
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                    
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
	
    </body>
</html>