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
	<div class='expand' style="width:60px;text-align: left; margin: 10px auto;">Menu <i class="icon-list"></i></div>
	<img id="avatar" class="img-polaroid" src="admin/<?php echo $row['location']; ?>">
	<?php include('teacher_count.php'); ?>
	<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
		<li class=""><a title="Dashboard" href="dasboard_teacher.php"><i class="icon-group"></i></a></li>
		
		<li class=""><a title="Notification" href="notification_teacher.php" style='position: relative;'><i class="icon-info-sign"></i>
			<div class='notificatoinNumber'>
			<?php if($not_read == '0'){
				}else{ ?>
					<span class="badge badge-important"><?php echo $not_read; ?></span>
				<?php } ?>
			</div>
		</a></li>
		<li class="active"><a title="Messages" href="teacher_message.php"><i class="icon-envelope-alt"></i></a></li> 
		<li class=""><a title="Backpack" href="teacher_backack.php"><i class="icon-suitcase"></i></a></li> 
		<li class=""><a title="Downloadables" href="add_downloadable.php"><i class="icon-plus-sign"></i></a></li> 
		<li class=""><a title="Announcements" href="add_announcement.php"><i class="icon-plus-sign"></i></a></li> 
		<li class=""><a title="Assignments" href="add_assignment.php"><i class="icon-plus-sign"></i></a></li>
		<li class=""><a title="Quiz" href="teacher_quiz.php"><i class="icon-list"></i></a></li>
		<li class=""><a title="Shared Files" href="teacher_share.php"><i class="icon-file"></i></a></li>
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
	<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse ">
		<li class=""><a href="dasboard_teacher.php"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;My Class</a></li>
		
		<li class=""><a href="notification_teacher.php"><i class="icon-chevron-right"></i><i class="icon-info-sign"></i>&nbsp;Notification
			<?php if($not_read == '0'){
				}else{ ?>
					<span class="badge badge-important"><?php echo $not_read; ?></span>
				<?php } ?>
		</a></li>
		<li class="active"><a href="teacher_message.php"><i class="icon-chevron-right"></i><i class="icon-envelope-alt"></i>&nbsp;Message</a></li> 
		<li class=""><a href="teacher_backack.php"><i class="icon-chevron-right"></i><i class="icon-suitcase"></i>&nbsp;Backpack</a></li> 
		<li class=""><a href="add_downloadable.php"><i class="icon-chevron-right"></i><i class="icon-plus-sign"></i>&nbsp;Add Downloadables</a></li> 
		<li class=""><a href="add_announcement.php"><i class="icon-chevron-right"></i><i class="icon-plus-sign"></i>&nbsp;Add Announcement</a></li> 
		<li class=""><a href="add_assignment.php"><i class="icon-chevron-right"></i><i class="icon-plus-sign"></i>&nbsp;Add Assignment</a></li>
		<li class=""><a href="teacher_quiz.php"><i class="icon-chevron-right"></i><i class="icon-list"></i>&nbsp;Quiz</a></li>
		<li class=""><a href="teacher_share.php"><i class="icon-chevron-right"></i><i class="icon-file"></i>&nbsp;Shared Files</a></li>
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
