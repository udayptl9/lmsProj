<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
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
                            <div class="navbar navbar-inner block-header">
                            	<label style='display:inline-block'>From: </label>
                            	<input type="date" class="date" style='display:inline-block ' >
                            	<label style='display:inline-block'>To:</label>
                            	<input type="date" class="date" style='display:inline-block ' >	
                            	<button class="btn btn-success submit "style='display:inline-block margin-top:10px' >Submit</button>

                                <div id="" class="muted pull-right">
					
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
										        <tr class='attendenecsHeading'>
										        <th>Roll No.</th>	
                            <th>First Name</th>
                            <th>Id Number</th>

												</tr>
										</thead>
										<tbody class="attendenceBody">
												<?php
														$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
														$teacher_id = $_SESSION['id'];
                    									$attendences = mysqli_query($conn, "SELECT * FROM attendence WHERE attendence.teacher_class_id = $get_id")or die(mysqli_error());
														while($row = mysqli_fetch_array($my_student)){
														$id = $row['teacher_class_student_id'];
														?>

										<tr class='studentTr' id="del<?php echo $id; ?>">
									
										 <td><?php  echo $row['rollno']; ?></td>
										 <td><?php echo $row['firstname']; echo $row['lastname']; ?></td>
                                         <td><?php  echo $row['username']; ?></td>         
                                </tr>
						 <?php } ?>
						   
                              
										</tbody>
									</table>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                    <div class="block-content collapse in pastAttendence">
              <div class="span12" style='width: 100%; max-width: 100%; overflow-x: auto;'>
                     
                  <?php
                    $teacher_id = $_SESSION['id'];
                    $attendences = mysqli_query($conn, "SELECT * FROM attendence WHERE attendence.teacher_class_id = $get_id")or die(mysqli_error());
                  ?>
                  <script>
                    let attendences = [];
                  </script>
                  <?php 
                    while($row=mysqli_fetch_array($attendences)) {
                  ?>
                  <script>
                    attendences.push(<?php print_r(json_encode($row)) ?>);
                  </script>
                  <?php }?>
                  <script>
                    let index1=0;
                    attendences.forEach(attend=>{
                      const data = JSON.parse(attend['attendence']);
                      document.querySelector('.attendenecsHeading').innerHTML += `<th>${attend['date']}</th>`
                      let index = 1;
                      let second = 0;
	                    data.forEach(i=>{
	                      document.querySelectorAll('.studentTr')[second].innerHTML += `<td>${i['attendence']}</td>`;
	                      second++;
	                    })
	                   })
                     document.querySelector('.excelLogo').colSpan = `${document.querySelector('.attendenecsHeading').querySelectorAll('th').length}`;
                  </script>
                  <script>
	  document.querySelector('.excelLogo').colSpan = `${document.querySelector('.headings').querySelectorAll('th').length}`;
	  document.querySelector('.excelLogo1').colSpan = `${document.querySelector('.headings').querySelectorAll('th').length+1}`;
</script>
              </div>
            </div>
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
	
    </body>
</html>