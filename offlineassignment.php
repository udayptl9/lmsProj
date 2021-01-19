<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>

    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid" style="display: inline;">
                <?php include('offlineassignment_sidebar.php'); ?>
                
                <div class="span8" id="">
                     <div class="row-fluid">
                     	<?php include('my_students_breadcrums.php'); ?>
                        <!-- block -->

                        <div  id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Student List</div>
                            </div>
                            
                            <div class="block-content collapse in">
								<div class="span12" id="studentTableDiv">
									<?php include('offlineassignent_table.php'); ?>
                                </div>
                            </div>

                        </div>
                        <!-- /block -->
                    </div>


                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
			
    </body>

</html>