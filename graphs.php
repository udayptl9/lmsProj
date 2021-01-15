<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<style>
.floagingWindow {
    position: absolute;
    top: 50px;
    right: 50px;
    background: white;
    border-radius: 8px;
    box-shadow: 1px 1px 3px 1px grey;
    padding: 8px;
}
</style>


    <body>
		<?php include('navbar_student.php'); ?>

                            <?php
$con  = mysqli_connect("localhost","root","","capstone");
 if (!$con) {
     # code...
    echo "Problem in database connection! Contact administrator!" . mysqli_error();
 }else{
        $assignment_id = $_GET['assignment_id'];
         $sql ="select * FROM student_assignment 
         LEFT JOIN student on student.student_id  = student_assignment.student_id
         RIGHT JOIN assignment on student_assignment.assignment_id  = assignment.assignment_id
         WHERE student_assignment.teacher_class_id = $get_id AND student_assignment.assignment_id=$assignment_id";
         $result = mysqli_query($con,$sql);
         $chart_data="";
         $logged_in = $_SESSION['id'];
         $allgrades = array();
         $allgradesNo = mysqli_num_rows($result);
         while ($row = mysqli_fetch_array($result)) { 
            $graphId = 'xyz';
            if($logged_in == $row['student_id']) {
                $graphId = $row['student_id'];
            }
            $productname[]  = $graphId;
            $currentGrade = $row['grade'];
            $sales[] = $currentGrade;
            array_push($allgrades, $currentGrade);
        }
        $minMark = min($allgrades);
        $maxMark = max($allgrades);
        $average = array_sum($allgrades) / $allgradesNo;
 }
?>
<!DOCTYPE html>
<html lang="en"> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=0.0">
        <title>Graph</title> 
    </head>
    <body><div class="container-fluid">
            <div class="row-fluid">
				<?php include('progress_link_student.php'); ?>
                <div class="span4" id="content">
                     <div class="row-fluid">
                     
					    
					 
                        <!-- block -->
                        <div id="block_bg" class="block" style="width:1000px; height:600px; position: relative;">
                        <div class="floagingWindow">
                            <h4>Max Marks: <?php echo $maxMark; ?></h4>
                            <h4>Min Marks: <?php echo $minMark; ?></h4>
                            <h4>Average (Red Line): <?php echo $average; ?></h4>
                        </div>
                            <div class="navbar navbar-inner block-header">
							    <div id="" class="muted pull-left"></div>
								
							</div>
        <div style="width:800px;hieght:20%;text-align:center; position: relative;">
            <h2 class="page-header" >Assignment Report </h2>
            <div>student details </div>
            <canvas  id="chartjs_bar"></canvas> 
        </div>    
    </body>
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript">
      var ctx = document.getElementById("chartjs_bar").getContext('2d');
      Chart.pluginService.register({
    afterDraw: function(chart) {
        if (typeof chart.config.options.lineAt != 'undefined') {
        	var lineAt = chart.config.options.lineAt;
            var ctxPlugin = chart.chart.ctx;
            var xAxe = chart.scales[chart.config.options.scales.xAxes[0].id];
            var yAxe = chart.scales[chart.config.options.scales.yAxes[0].id];
           	
            // I'm not good at maths
            // So I couldn't find a way to make it work ...
            // ... without having the `min` property set to 0
            if(yAxe.min != 0) return;
            
            ctxPlugin.strokeStyle = "red";
        	ctxPlugin.beginPath();
            lineAt = (lineAt - yAxe.min) * (100 / yAxe.max);
            lineAt = (100 - lineAt) / 100 * (yAxe.height) + yAxe.top;
            ctxPlugin.moveTo(xAxe.left, lineAt);
            ctxPlugin.lineTo(xAxe.right, lineAt);
            ctxPlugin.stroke();
        }
    }
});


                var myChart = new Chart(ctx, {
                    type:'bar',
                    data: {
                        labels:<?php echo json_encode($productname); ?>,
                        datasets: [{
                            label: 'student marks',
                            backgroundColor: [
                               "#5969ff",
                                "#ff407b",
                                "#25d5f2",
                                "#ffc750",
                                "#2ec551",
                                "#7040fa",
                                "#ff004e",
                                "#5969ff",
                                "#ff407b",
                                "#25d5f2",
                                "#ffc750",
                                "#2ec551",
                                "#7040fa"
                            ], 
                            data:<?php echo json_encode($sales); ?>,
                        }]
                    },
                    options: {
                        legend: {
                        display: false,
                        position: 'bottom',
                        labels: {
                            fontColor: '#71748d',
                            fontFamily: 'Circular Std Book',
                            fontSize: 14,
                        }
                    },
                    lineAt: <?php echo $average; ?>,
                        scales: {
                            yAxes: [{
                                ticks: {
                                    min: 0,
                                    beginAtZero: true
                                }   
                            }]
                        },
 
 
                }
                });
    </script>
</html>
                            
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
				
				
				
				                <div class="span5" id="content">
                     <div class="row-fluid">
					    
					 
                        
                    </div>


                </div>
				
				<?php /* include('downloadable_sidebar.php') */ ?>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>