<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body>
    <?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
        <?php include('cgpa_table_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
              <!-- breadcrumb -->
        
                  
               <ul class="breadcrumb">
            <?php
            $school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
            $school_year_query_row = mysqli_fetch_array($school_year_query);
            $school_year = $school_year_query_row['school_year'];
            ?>
              <li><a href="#"><b>My Class</b></a><span class="divider">/</span></li>
              <li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a></li>
            </ul>
             <!-- end breadcrumb -->
           



        
           
                        <!-- block -->
                        <div class="block" style="width:100%;">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-center" style="width: 100%;">
                  
                                
                               		<?php

									/*require_once('calcclass.php');

									if(isset($_GET['sem']) && isset($_GET['dep'])) {
										$sem = $_GET['sem'];
										$dep = $_GET['dep']; }
									else echo "enter both choises";

									table($sem, $dep);
									print_r($creditlist);*/

									require_once('tstclass.php');
									$sem = $_GET['sem'];
									$dep = $_GET['dep'];

									$tab = new Gpa;
									$tab->cgpa_table($sem,$dep);

									?>

									<script type="text/javascript">
										document.querySelector('.mainForm').addEventListener('submit', function(event) {
											event.preventDefault();
											let mainTables = document.querySelectorAll('.mainTable');
											let index = 0;
											let allSemSGPA = 0;
											let subjectCreditsCGPA = 0;
											mainTables.forEach(table=>{
												let allGradePoints = 0;
												let subjectCredits = 0;
												let mainrows = table.querySelectorAll('.subRows');
												mainrows.forEach(row=>{
													const subjectCredit = Number(row.querySelector('.subcredit').innerHTML);
													const subjectGrade = row.querySelector('.subgrade').value;
													if(subjectGrade == 'u') {
														row.querySelector('.subcredit').style.color = 'red';
													}
													subjectCreditsCGPA+= subjectCredit;
													subjectCredits += subjectCredit;
													let gradePoint;
													switch(subjectGrade) {
													  case 'a':
													    gradePoint = 9;
													    break;
													  case 'b':
													    gradePoint = 8;
													    break;
												      case 'c':
												        gradePoint = 7;
												        break;
												      case 'd':
												        gradePoint = 6;
												        break;
												      case 'e':
												        gradePoint = 5;
												        break;
												      case 'u':
												        gradePoint = 0;
												        break;
												      case 's':
												        gradePoint = 10;
												        break;
													  default:
													}
													allGradePoints += gradePoint*subjectCredit;
												})
												allSemSGPA += allGradePoints;
												document.querySelectorAll('.gradeResult')[index].innerHTML += '   ' + (allGradePoints / subjectCredits).toFixed(2);
												index++;
											})
											document.querySelector('.CGPA').innerHTML = 'CGPA: ' + (allSemSGPA/subjectCreditsCGPA);
										})
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
 



































