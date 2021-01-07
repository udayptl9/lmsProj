<?php
include('dbcon.php');
if (isset($_FILES["file"])) {
    if($_FILES["file"]["name"] != 'studentsSheet.xlsx') {
        print_r(json_encode(array('text'=>'false','data'=>'')));
    } else {
        $file = "files/".basename($_FILES["file"]["name"]);
        move_uploaded_file($_FILES["file"]["tmp_name"], $file);
        
        require_once "PHPExcel.php";
        $excelReader = PHPExcel_IOFactory::createReaderForFile($file);
        $excelObj = $excelReader->load($file);
        $sheetCount = $excelObj->getSheetCount();
        $sheetNames = $excelObj->getSheetNames();
        
        $result = [];
        for ($sheet = 0; $sheet < $sheetCount; $sheet++) {
            $worksheet = $excelObj->getSheet($sheet);
            $lastRow = $worksheet->getHighestRow();
            $lastCol = $worksheet->getHighestColumn();
            
            $data = [];
            for ($row = 2; $row <= $lastRow; $row++) {
                $output = Array();
                for ($col = 'A'; $col <= $lastCol; $col++) {
                    if ($worksheet->getCell($col.'1')->getValue() !== null && $worksheet->getCell($col.'1')->getValue() !== "") {
                        $output[$worksheet->getCell($col.'1')->getValue()] = $worksheet->getCell($col.$row)->getValue();
                    }
                }
                $data[] = $output;
            }
            $result[$sheetNames[$sheet]] = $data;
        }
        print_r(json_encode(array('text'=>'true','data'=>$result)));
    }
}
if(isset($_POST['action'])) {
    if($_POST['action'] === 'addStudents') {
        $data = json_decode($_POST['data']);
        foreach ($data as &$value) {
            $un = $value->usn;
            $fn = $value->fname;
            $ln = $value->lname;
            $class_id = $value->classId;
            $dob = $value->dob;
            $checkSql = mysqli_query($conn, "SELECT `username` FROM `student` WHERE (`username` = '$un')");
            $response = array();
            $result = true;
            if(mysqli_num_rows($checkSql) > 0) {
                array_push($response, $un);
            } else {
                $sql = "INSERT INTO `student`(`firstname`, `lastname`, `dob`, `class_id`, `username`, `password`, `location`, `status`, `per_no`, `gua_no`) VALUES ('$fn','$ln','$dob',$class_id,'$un','','','Unregistered','','')";
                $result = mysqli_query($conn,$sql);
            }
        }    
    }
    if(count($response)>0) {
        print_r(json_encode(array('text'=>$result, 'errors'=>$response)));
    } else {
        print_r(json_encode(array('text'=>$result, 'errors'=>$response)));
    }
}
?>