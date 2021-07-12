<?php

/**
 * Created by Dickson Msaky @ Ifakara Health Insitute (2018)
**/

include_once('includes/load.php');
//setting header to json
header('Content-Type: application/json');

$prefixtable = $_SESSION['expcode']."_";
 
$q = $_GET['q'];

		
if(isset($_POST['field1'])) {

    $_SESSION['f1'] = $_POST["field1"]; 
    $_SESSION['ind'] = $_POST["field2"];
    $_SESSION['FromDate'] =$_POST['FromDate'];
    $_SESSION['ToDate'] =$_POST['ToDate'];

}else{

    $wherecon = "";
  
}  

$wherecon = "";



if($_SESSION['f1'] != 0){

$wherecon .= " AND ea=".$_SESSION['f1'];

}
if($_SESSION['ind'] != 0){

$wherecon .= " AND ed1.ind=".$_SESSION['ind'];

}

if($_SESSION['FromDate'] != "" && $_SESSION['ToDate'] != ""){

 $wherecon .= " AND ed1.dt BETWEEN '".date('Y-m-d', strtotime($_SESSION['FromDate']))."' AND '".date('Y-m-d', strtotime($_SESSION['ToDate']))."' ";

}else if($_SESSION['FromDate'] != ""){

 $wherecon .= " AND ed1.dt >= '".date('Y-m-d', strtotime($_SESSION['FromDate']))."'";

}else if($_SESSION['ToDate'] != ""){

 $wherecon .= " AND ed1.dt <= '".date('Y-m-d', strtotime($_SESSION['ToDate']))."'";

}


$query="SELECT me, count(*) as frequency FROM ".$prefixtable."ed1 GROUP BY me";

        

//execute query
$result = $db->query($query);
//echo $query;
/*
//loop through the returned data
$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

//free memory associated with result
$result->close();


//now print the data
print json_encode($data); */

$label = array();
$datasets = array();

while ($row = $db->fetch_assoc($result)) {
   
      $label[] = $row["me"];
      $datasets[] = $row["frequency"];
  }

$final_array = array("labels" => $label,"datasets" => $datasets);
echo json_encode($final_array);