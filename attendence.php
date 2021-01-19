<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

<body>
  <style>
    .inline {
      display: inline !important;
    }
    .innerDiv {
      width: 70px;
      display: grid;
      grid-template-columns: repeat(1, 1fr);
      grid-template-rows: auto auto;
      grid-template-areas: "img" "rollNo"; 
    }
    .studentDiv {
      width: 70px;
      max-width: 70px;
      display: inline-block !important;
      margin: 10px;
    }
    .attendenceAvatar{
      opacity: 0.8;
      border-radius: 50%;
      background: green;
      width: 70px;
      grid-area: img;
      cursor: pointer;
    }
    .attendenceAvatar:hover {
      transform: scale(1.05);
    }
    .studentRollNo {
      grid-area: rollNo;
      text-align: center;
      font-weight: bold;
    }
    .absent {
      background: red !important;
    }
    .attendenceAvatar img {
      object-fit: cover;
      width: 70px;
      border-radius: 50%;
    }
    .rollNumberOverAvatar {
      position: absolute;
      top: 28px;
      bottom: 0;
      left: 0;
      right: 0;
      margin: auto auto;
      font-size: 40px; 
      font-weight: bold;
      color: white;
      text-align: center;
      opacity: 0.5;
    }
    .rollNumberOverAvatar:hover {
      opacity: 0.8;
    }
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
      <?php include('my_students_breadcrums.php'); ?>
      <div class="span9" id="content">
        <div class="row-fluid">
          <div class="pull-left">
            <h4 style='display: inline-block; bottom:30%;'>Attendence: <span class='attendenceOf'></span></h4>     
            <div class="pull-right">
            <span class='historyAttendenece' style='display:inline-block; margin-left:550px;'>
						  <input type="date" id="attendencecal" name="cal">
					</span>
            	<a onclick="window.open('print_attendence.php<?php echo '?id='.$get_id; ?>')"  class="btn btn-success print"style='display:inline-block;margin-left:5px;margin-bottom:10px; '><i class="icon-list"></i>  Print Report</a>


				</div>


          </div>
          
          <!-- block -->
          <br>
          <div id="block_bg" class="block">
          </br>
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

            <div class="block-content collapse in todayAttendence">
              <div class="span12 attendenceTableDiv inline">
                  <?php
                    while($row=mysqli_fetch_array($my_student)) {
                  ?>
                    <div class="studentDiv inline">
                      <div class='innerDiv'>
                        <div class='attendenceAvatar' style='display: inline-block; position: relative;'>
                          <img src="user-avatar.svg" style='width: 70px;' alt="">
                          <div class="rollNumberOverAvatar"><?php echo $row['student_id']; ?></div>
                          <span style="display: none;" class="class_id"><?php echo($row['class_id']); ?></span>
                          <span style="display: none;" class="first_name"><?php echo($row['firstname']); ?></span>
                          <span style="display: none;" class="last_name"><?php echo($row['lastname']); ?></span>
                        </div>
                      </div>
                    </div>
                  <?php } ?>
                  <div style="position: relative;">
                      <div style="position: absolute; right: 0;" class="pull-right">
                        <button class="btn btn-success saveAttendence">Save</button>
                      </div>
                  </div>
              </div>
              <div class="span12">
              </div>
            </div>
            <div class="block-content collapse in pastAttendence">
              <div class="span12" style='width: 100%; max-width: 100%; overflow-x: auto;'>
                      <table class='attendenceTable'>
                        <thead>
                          <tr class='attendenecsHeading'>
                            <th>Sl No</th>                          
                            <th>Name</th>
                            <th>Roll No</th>
                          </tr>
                        </thead>
                        <tbody class='attendenceBody'>
                        </tbody>
                      </table>
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
                      if(index1==0) {
                        data.forEach(i=>{
                          document.querySelector('.attendenceBody').innerHTML += `
                            <tr class="attendenceDate">
                              <td>${index}</td>
                              <td>${i['firstname']} ${i['lastname']}</td>
                              <td>${i['rollNo']}</td>
                              <td>${i['attendence']}</td>
                            </tr>
                          `;
                          index++;
                        })
                        index1++;
                      } else {
                        data.forEach(i=>{
                          document.querySelectorAll('.attendenceDate')[second].innerHTML += `<td>${i['attendence']}</td>`;
                          second++;
                        })
                      }
                    })
                  </script>
              </div>
            </div>
          </div>
          <!-- /block -->
        </div>
      </div>
    </div>
    <script>
      function changeDate(date){
      	document.querySelector('.attendenceOf').innerHTML = date;
      }
      var today = new Date();
      var date = today.getDate() + '/' + (today.getMonth() + 1) +'/' + today.getFullYear();
      changeDate(date);
      document.querySelector('#attendencecal').addEventListener('change', function(event) {
      	event.preventDefault();
      	const changedDate = event.target.value;
      	date = changedDate.split("-")[2] + '/' + changedDate.split("-")[1] + '/' + changedDate.split("-")[0]
      	changeDate(date); 
      })
      document.querySelectorAll('.attendenceAvatar').forEach(avatar=>{
        avatar.addEventListener('click', function(event) {
          event.preventDefault();
          avatar.classList.toggle('absent');
        })
      })
      document.querySelector('.saveAttendence').addEventListener('click', function(event) {
        event.preventDefault();
        const studentsAll = document.querySelectorAll('.attendenceAvatar');
        let attendenceFinal = {
          date: date,
          class_id: studentsAll[0].querySelector('.class_id').innerHTML,
          teacher_id: <?php echo $_SESSION['id']; ?>,
          teacher_class_id: <?php echo $_GET['id']; ?>,
          attendence: []
        };
        studentsAll.forEach(student=>{
          let studentAttendence = {};
          studentAttendence['rollNo'] = Number(student.querySelector('.rollNumberOverAvatar').innerHTML);
          studentAttendence['firstname'] = student.querySelector('.first_name').innerHTML;
          studentAttendence['lastname'] = student.querySelector('.last_name').innerHTML;
          if(student.classList.contains('absent')) {
            studentAttendence['attendence'] = 0;
          } else {
            studentAttendence['attendence'] = 1;
          }
          attendenceFinal['attendence'].push(studentAttendence);
        })
        $.ajax({
          url: 'attendenceAction.php',
          type: 'POST',
          data: {
            class_id: attendenceFinal['class_id'],
            teacher_id: attendenceFinal['teacher_id'],
            teacher_class_id: attendenceFinal['teacher_class_id'],
            date: attendenceFinal['date'],
            attendence: JSON.stringify(attendenceFinal['attendence']),
          }, beforeSend: function() {
            console.log("Saving Attendence");
          }, success: function(response) {
            if(JSON.parse(response).text) {
              window.location.reload();
            } else {
              console.log(response);
            }
          }
        })
      })
    </script>
    <?php include('footer.php'); ?>
  </div>
  <?php include('script.php'); ?>
</body>

</html>