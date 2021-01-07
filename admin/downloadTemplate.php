<?php 
    $path = "files/data/studentsSheet.xlsx";
    $filename = "studentsSheet.xlsx";
    header("Content-Disposition: attachment; filename=".$filename);
    header("Cache-control: private");
    header('X-Sendfile: '.$path);
    readfile($path);
?>