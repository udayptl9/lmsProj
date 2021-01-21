<style> 
	#sidebar ul li:hover {
		transform: scale(1.08);
	}
	#sidebar {
		position: fixed;
		background: #3b5998;
		min-width: 0 !important;
		max-width: 250px;
		margin: 0 auto;
		z-index: 10;
		top: 40px;
		left: -250px;
		max-height: 100vh;
		overflow-y: auto;
	}
	.sidebar ul {
		width: 100% !important;

	}
	.sidebarIn {
		left: 0px !important;
		transition: 0.2s;
	}
	.sidebarOut {
		left: -250px !important;
		transition: 0.2s;
	}
	#sidebarMini {
		background: #3b5998;
		min-width: 0 !important;
		max-width: 100px;
		margin: 0 auto;
		text-align: center;
		margin-right: 15px;
		height: 100vh;
		z-index: 9;
		padding-top: 15px;
		margin-top: 0px;
	}
	#sidebarMini {
		width: 100%;
	}
	#sidebarMini ul {
		text-align: center;
	}
	#sidebarMini ul li:hover {
		transform: scale(1.08);
	}
	#sidebarMini img {
		margin: 0 auto;
		height: 70px;
		border-radius: 50%;
		width: 70px;
		border: 1px solid white !important;
	}
	
	.expand {
		padding: 5px;
		text-align: center;
		margin-bottom: 10px;
		border-radius: 0px;
		border: 0;
		box-shadow: 1px 1px 3px 1px grey;
		cursor: pointer; 
		color: #3b5998;
		background: white;

	}
	#avatar {
		margin: 0 auto;
		height: 70px;
		border-radius: 50%;
		width: 70px;
		border: 1px solid white !important;
	}
	.prepand {
		padding: 5px;
		text-align: center;
		margin-bottom: 10px;
		border-radius: 4px;
		border: 0;
		box-shadow: 1px 1px 3px 1px grey;
		cursor: pointer; 
		background:white;		
	}
	.notificatoinNumber {
		position: absolute;
		top: 0;
		right: 0;
	}
	.container-fluid {
		padding: 0 !important;
	}
	.active {
		color: white;
		border: 1px solid white;
	}
	</style>

<div id='sidebarMini' class='span3'> 
	<div class='expand' style="width:60px;text-align: left; margin: 10px auto;"> <i class="icon-list"></i> Menu</div>
	<img id="avatar" class="img-polaroid" src="admin/<?php echo $row['location']; ?>">
	<?php include('teacher_count.php'); ?>
	<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
		<li class=""><a title="Back To Dashboard" href="dasboard_teacher.php"><i class="icon-chevron-left"></i></a></li>
		<li class=""><a title="My Students" href="my_students.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-group"></i>&nbsp;</a></li>
				<li class=""><a title="Attendence" href="attendence.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-group"></i>&nbsp;</a></li>
				<li class=""><a title="Subject Overview" href="subject_overview.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-file"></i>&nbsp;</a></li>
				<li class=""><a title="Class Internals" href="class_internal.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-file"></i>&nbsp;</a></li>
				<li class=""><a title="Downloadable Materials" href="downloadable.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-download"></i>&nbsp;</a></li>
				<li class=""><a title="Assignments" href="assignment.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-book"></i>&nbsp;</a></li>
				<li class=""><a title="Offline Assignments" href="offlineassignment.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-file"></i>&nbsp;</a></li>
				<li class=""><a title="Announcements" href="announcements.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-info-sign"></i>&nbsp;</a></li>
				<li class=""><a title="Class Calendar" href="class_calendar.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-calendar"></i>&nbsp;</a></li>
				<li class="active"><a title="Quiz" href="class_quiz.php<?php echo '?id='.$get_id; ?>"></i><i class="icon-list"></i>&nbsp;</a></li>
		
		
	</ul>
</div>
<div class="span3" id="sidebar">
	<div class='prepand'style="width:60px;text-align: left;"><i class="icon-chevron-left"> Back </i></div>
	<div style='text-align: center;'>
		<img id="avatar" class="img-polaroid" src="admin/<?php echo $row['location']; ?>">
		<div style='color:white; font-weight: bold; text-transform: uppercase; margin-top:5px;'> 
			<?php $query= mysqli_query($conn,"select * from teacher where teacher_id = '$session_id'")or die(mysqli_error());
					$row = mysqli_fetch_array($query);
			?>
			<?php echo"H<span style='text-transform: lowercase;'>i</span>,<br>". $row['firstname']." ".$row['lastname'];  ?>
		</div>
	</div>
	<?php include('teacher_count.php'); ?>
	<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
				<li class=""><a href="dasboard_teacher.php"><i class="icon-chevron-right"></i><i class="icon-chevron-left"></i>&nbsp;Back</a></li>
				<li class=""><a href="my_students.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;My Students</a></li>
				<li class=""><a href="attendence.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;Attendence</a></li>
				<li class=""><a href="subject_overview.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-file"></i>&nbsp;Subject Overview</a></li>
				<li class=""><a href="class_internal.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-file"></i>&nbsp;Class Internals</a></li>
				<li class=""><a href="downloadable.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-download"></i>&nbsp;Downloadable Materials</a></li>
				<li class=""><a href="assignment.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-book"></i>&nbsp;Assignments</a></li>
				<li class=""><a href="offlineassignment.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-file"></i>&nbsp;Offline Assignments</a></li>
				<li class=""><a href="announcements.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-info-sign"></i>&nbsp;Announcements</a></li>
				<li class=""><a href="class_calendar.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-calendar"></i>&nbsp;Class Calendar</a></li>
				<li class="active"><a href="class_quiz.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-list"></i>&nbsp;Quiz</a></li>
			</ul>
	<?php include('search_other_class.php'); ?>	
</div>

<script>  
document.querySelector('.expand').addEventListener('click', function(event) {
	event.preventDefault();
	document.querySelector('#sidebar').classList.add('sidebarIn');
	document.querySelector('#sidebar').classList.remove('sidebarOut');
})
document.querySelector('.prepand').addEventListener('click', function(event) {
	event.preventDefault();
	document.querySelector('#sidebar').classList.remove('sidebarIn');
	document.querySelector('#sidebar').classList.add('sidebarOut');
})
</script>
