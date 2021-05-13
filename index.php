<?php
$con = mysqli_connect("localhost","root","","excel");
// if($con){
//     echo "success";
// }
//else throw exception(e) e->message();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excel to mysql</title>
</head>
<body>
    <form action="#" method="POST" enctype="multipart/form-data">
        <input type="file" name="excel">
        <input type="submit" name="submit" id="sub">
    </form>
    <?php 
    if(isset($_FILES['excel']['name'])){
        include "xlsx.php";
        if($con){
            $excel=SimpleXLSX::parse($_FILES['excel']['tmp_name']);
            echo "<pre>";	
            // print_r($excel->rows(1));
            print_r($excel->dimension(2));
            print_r($excel->sheetNames());
            for ($sheet=0; $sheet < sizeof($excel->sheetNames()) ; $sheet++) { 
            $rowcol=$excel->dimension($sheet);
            $i=0;
            if($rowcol[0]!=1 &&$rowcol[1]!=1){
            foreach ($excel->rows($sheet) as $key => $row) {
                //print_r($row);
                $q="";
                foreach ($row as $key => $cell) {
                    //print_r($cell);echo "<br>";
                    if($i >0){
                        if($cell == "+")
                        {
                            $q.="1,";
                            
                        }else if($cell =="-") {
                            $q.="0,";
                        }
                        else if($cell !==""){
                            $q.="'".$cell. "',";

                        }
                        

                    }

                    
                }
                // if($i==0){
                    $query="";
                // }else{
                //     $query.= "INSERT INTO ".$excel->sheetName($sheet)." values (".rtrim($q,",").");";
                // }
$i !==0 ? ($query= "INSERT INTO ".$excel->sheetName($sheet)." values (".rtrim($q,",").");") :"";
                echo $query;

                $i++;
                if($query !==""){
                if(mysqli_query($con,$query))
                {
                    echo "true";
                }
                echo "<br>";
            }
            }
        }
            }
        }
    }
    
    ?>
    </body>
    </html>