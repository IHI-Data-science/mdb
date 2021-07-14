<?php include_once('../includes/load.php');

if(isset($_GET['staffid'])) {
	$pin = $_GET['staffid'];
} 

if(isset($_GET['pn'])) {
	$pn = $_GET['pn'];
} 

if(isset($_GET['expno'])) {
	$expno = $_GET['expno'];
} 

if(isset($_GET['projectid'])) {
	$projectid = $_GET['projectid'];
} 


if(isset($_GET['q'])) {

	$q = $_GET['q'];


	if($q == 'site'){

		$query="SELECT * FROM site ";	
		$nodata = "No site found";

	}

	else if($q == 'projects'){

		$query="SELECT * FROM grantproject INNER JOIN projectreg ON (grantproject.pid = projectreg.id) WHERE grantproject.staff_id='$pin' ORDER BY projectreg.id DESC";	
		$nodata = "No project found";

	}

	else if($q == 'projectinfo'){

		$query="SELECT * FROM grantproject INNER JOIN projectreg ON (grantproject.pid = projectreg.id) WHERE grantproject.staff_id='$pin' and pn='$pn' and expno='$expno' ORDER BY projectreg.id DESC";	
		$nodata = "No project found";
	}

	else if($q == 'ed1template'){

		$prefixtable = $projectid."_";
		$ed1temp = $prefixtable."ed1template";

		$query="SELECT * FROM $ed1temp";
		$nodata = "No Data found";

	}
	
	else if($q == 'method'){

		$prefixtable = $projectid."_";
		$method = $prefixtable."method";

		$query="SELECT * FROM $method";
		$nodata = "No Data found";

	}
	
	else if($q == 'enumerationarea'){

		$prefixtable = $projectid."_";
		$enumerationarea = $prefixtable."enumerationarea";

		$query="SELECT * FROM $enumerationarea";
		$nodata = "No Data found";

	}

        else if($q == 'habitattype'){

		$prefixtable = $projectid."_";
		$habitattype= $prefixtable."habitattype";

		$query="SELECT * FROM $habitattype";
		$nodata = "No Data found";

	}


	
	else if($q == 'treatment'){

		$prefixtable = $projectid."_";
		$treatment = $prefixtable."treatment";

		$query="SELECT * FROM $treatment";
		$nodata = "No Data found";

	}

	else if($q == 'domesticWildanimals'){

		$prefixtable = $projectid."_";
		$domesticWildanimals = $prefixtable."domesticWildanimals";

		$query="SELECT * FROM $domesticWildanimals";
		$nodata = "No Data found";

	}

        else if($q == 'activities'){

		$prefixtable = $projectid."_";
		$activities= $prefixtable."activities";

		$query="SELECT * FROM $activities";
		$nodata = "No Data found";

	}
	else if($q == 'substracte'){

		$prefixtable = $projectid."_";
		$substracte = $prefixtable."substracte";

		$query="SELECT * FROM $substracte";
		$nodata = "No Data found";

	}

        
	else if($q == 'taxon'){

		$prefixtable = $projectid."_";
		$taxon = $prefixtable."taxon";

		$query="SELECT * FROM $taxon";
		$nodata = "No Data found";

	}

	else if($q == 'custed'){

		$query="SELECT * FROM custed WHERE pc = '$projectid' ";
		$nodata = "No Data found";

	}

	else if($q == 'custss'){

		$query="SELECT * FROM custss WHERE pc = '$projectid' ";
		$nodata = "No Data found";

	}

	else if($q == 'custso'){

		$query="SELECT * FROM custso WHERE pc = '$projectid' ";
		$nodata = "No Data found";

	}

	else if($q == 'custst'){

		$query="SELECT * FROM custst WHERE pc = '$projectid' ";
		$nodata = "No Data found";

	}

	else if($q == 'ed1'){

		$prefixtable = $projectid."_";
		$ed1 = $prefixtable."ed1";

		$query="SELECT * FROM $ed1";
		$nodata = "No Data found";

	}

	else if($q == 'ss1'){

		$prefixtable = $projectid."_";
		$ss1 = $prefixtable."ss1";

		$query="SELECT * FROM $ss1";
		$nodata = "No Data found";

	}
	else if($q == 'ss2'){

		$prefixtable = $projectid."_";
		$ss2 = $prefixtable."ss2";

		$query="SELECT * FROM $ss2";
		$nodata = "No Data found";

	}

	else if($q == 'ss4'){

		$prefixtable = $projectid."_";
		$ss4 = $prefixtable."ss4";

		$query="SELECT * FROM $ss4";
		$nodata = "No Data found";

	}

	else{

		echo "IEBS App";

	}


	$result = $db->query($query);

	$numrow = $db->num_rows($result);

	if($numrow > 0){
		$data = array();
		foreach ($result as $row) {
			$data[] = $row;
		}
	}else{
		$data[] = $nodata;
	}

	$result->close();
	header('Content-Type: application/json');
	print json_encode($data); 

}

?>
