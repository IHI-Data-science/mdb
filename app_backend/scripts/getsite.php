<?php include_once('../includes/load.php');

$query = "SELECT * FROM  site";

$result = $db->query($query);

$numrow = $db->num_rows($result);

if($numrow > 0){
    $data = array();
    foreach ($result as $row) {
	    $data[] = $row;
    }
}else{
	$data[] = 'No Site found';
}


$result->close();

header('Content-Type: application/json');

print json_encode($data); 


?>