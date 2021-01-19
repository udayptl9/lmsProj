<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id'];
	$student_assignment_id = $_GET['student_assignment_id'];
?>
<?php 
	  $post_id = $_GET['post_id'];
	  if($post_id == ''){
	  ?>
		<script>
		window.location = "assignment_student.php<?php echo '?id='.$get_id; ?>";
		</script>
	  <?php
	  } else {
	  	$checkSql = mysqli_query($conn, "SELECT `fname`, `maxmarks` FROM `assignment` WHERE (`assignment_id` = $post_id)");
	  	while($row=mysqli_fetch_array($checkSql)) {
	  		$filename = $row['fname'];
	  		$maxmarks = $row['maxmarks'];
	  	}
	  }
	
 ?>
 <?php

			 $checkSql = mysqli_query($conn, "SELECT `floc` FROM `student_assignment` WHERE (`student_assignment_id` = $student_assignment_id)");
				  	while($row=mysqli_fetch_array($checkSql)) {
				  		$fileloc = $row['floc'];
				  	}
				  		

	  		?>
<style> 
	#pdfdisplay {
		max-width: 100%;
		max-height: 95vh;
		overflow: auto;
	}

	
	
</style>
<script src="assets/pdf.js"></script>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('assignment_link.php'); ?>
                <div class="span6" id="content">
                     <div class="row-fluid">
					   <!-- breadcrumb -->
										<?php $class_query = mysqli_query($conn,"select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_class_id = '$get_id'")or die(mysqli_error());
										$class_row = mysqli_fetch_array($class_query);
										?>
					     <ul class="breadcrumb">
							<li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><?php echo $class_row['subject_code']; ?></a> <span class="divider">/</span></li>
							<li><a href="#">School Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><b>Uploaded Assignments</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                        <div id="pdfdisplay" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="block" class="mutted-left"></div>
                            </div>
                            <script>
                            	let pdfDoc = null,
                                        pageNum = 1,
                                        pageIsRendering = false,
                                        pageNumIsPending = null;
                                        const renderPage = num => {
                                            pageIsRendering = true;
                                            while(pageNum <= pdfDoc.numPages) {
                                                const scale = 0.8,
                                                canvas = document.createElement('canvas'),
                                                ctx = canvas.getContext('2d');
                                                if(pageNum < pdfDoc.numPages) {
                                                    canvas.style.marginBottom = "20px";
                                                }
                                                pdfDoc.getPage(pageNum).then(page => {
                                                    const viewport = page.getViewport({ scale });
                                                    canvas.height = viewport.height;
                                                    canvas.width = viewport.width;
                                                    const renderCtx = {
                                                    canvasContext: ctx,
                                                    viewport
                                                    };
                                                    document.getElementById('pdfdisplay').appendChild(canvas);
                                                    page.render(renderCtx).promise.then(() => {
                                                    pageIsRendering = false;

                                                    if (pageNumIsPending !== null) {
                                                        renderPage(pageNumIsPending);
                                                        pageNumIsPending = null;
                                                    }
                                                    });
                                                });
                                                pageNum++;
                                            }
                                        };
                                        pdfjsLib
                                        .getDocument('<?php echo $fileloc;?>')
                                        .promise.then(pdfDoc_ => {
                                            pdfDoc = pdfDoc_;
                                            renderPage(pageNum);
                                        })
                                        .catch(err => {
                                            console.log(err);
                                        });

                            </script>
                            
                            <!-- -->
                        </div>
                        <!-- /block -->
                    </div>
                </div>
				<?php include('marks_sidebar.php') ?>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>