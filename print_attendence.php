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
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('class_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
						<div class="pull-right">
						
							<button id="print"   class="btn btn-success"><i class="icon-print"></i> Print Student List</button>
						</div>
						<?php include('my_students_breadcrums.php'); ?>
                        <!-- block -->

                        <div id="block_bg" class="block">
                        		  <div class="navbar navbar-inner block-header">
              <div id="" class="muted pull-right">
                <?php 
								$my_student = mysqli_query($conn,"SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysqli_error());
                $count_my_student = mysqli_num_rows($my_student);
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
						
												<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
							
										<thead>
										        <tr class='attendenecsHeading'>
										        <th>Roll No.</th>	
												<th>Firstname</th>
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
                  </script>
              </div>
            </div>
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
		<script type="text/javascript" src="jquery.min.js"></script>
		<script type="text/javascript" src="jquery.table2excel.js"></script>
		<script>    
				$('$btn').click(function(){
					$('.table').table2excel({
						exclude: ".noExl",
						name: "My attendence",
						filename: "Data"
					});
				});
		 	</script>
    </body>
</html>