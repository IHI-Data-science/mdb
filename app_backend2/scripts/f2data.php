<?php include_once('../includes/load.php');

global $db;

if(isset($_POST['tag'])) {

	$tag = $_POST['tag'];

	$response = array("tag" => $tag, "success" => 0, "error" => 0);


	if ($tag == 'ed1') {

		$json = $_POST["ed1json"];

		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}

		$data = json_decode($json);

		$a=array();
		$b=array();

		$GLOBALS['pid'] = $_POST["projectid"];
		$GLOBALS['sid'] = $_POST["siteid"];

		for($i=0; $i<count($data) ; $i++)
		{
		        
			$res = ed1data($data[$i]->sen,$data[$i]->fr,$data[$i]->dt,$data[$i]->ea,$data[$i]->cr,$data[$i]->cp,$data[$i]->hh,$data[$i]->sid,$data[$i]->me,$data[$i]->ind,$data[$i]->ht,$data[$i]->st,$data[$i]->ft,$data[$i]->hp,$data[$i]->rnd,$data[$i]->blk,$data[$i]->shh,$data[$i]->stn,$data[$i]->vi,$data[$i]->tr,$data[$i]->dy,$data[$i]->tmp,$data[$i]->hmd,$data[$i]->ws,$data[$i]->oth,$data[$i]->vc,$data[$i]->notes,$data[$i]->dsen);
		          
			if($res){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);


			}else{


				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}

			}
		}

		echo json_encode($a);

	}

	else if ($tag == 'ed2') {

		$json = $_POST["ed2json"];

        
		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}

		$data = json_decode($json);

		$a=array();
		$b=array();

		$GLOBALS['pid'] = $_POST["projectid"];
		$GLOBALS['sid'] = $_POST["siteid"];
		

		for($i=0; $i<count($data) ; $i++)
		{
        
			$res = ed2data($data[$i]->sen,$data[$i]->fr,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->slc,$data[$i]->sbp,$data[$i]->sst,$data[$i]->ssid,$data[$i]->scc,$data[$i]->stx,$data[$i]->ssas,$data[$i]->age,$data[$i]->n,$data[$i]->sd,$data[$i]->st,$data[$i]->tr,$data[$i]->vi,$data[$i]->rep,$data[$i]->rnd,$data[$i]->dy,$data[$i]->oth1,$data[$i]->oth2,$data[$i]->oth3,$data[$i]->va,$data[$i]->dsen);
          
			if($res){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);

			}else{

				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				    $b["sen"] = (int)$data[$i]->sen;
				    $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				    $b["sen"] = (int)$data[$i]->sen;
				    $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}

			}
		}

		echo json_encode($a);

	}

//end ed2

	else if ($tag == 'ss1') {

		$json = $_POST["ss1json"];

        
		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}
        
		$data = json_decode($json);

		$a=array();
		$b=array();

		$GLOBALS['pidss'] = $_POST["projectid"];
		$GLOBALS['sidss'] = $_POST["siteid"];

		for($i=0; $i<count($data) ; $i++)
		{
        
			$res2 = ss1data($data[$i]->sen,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->bp,$data[$i]->fr,$data[$i]->tx,$data[$i]->sas,$data[$i]->n,$data[$i]->notes,$data[$i]->slc,$data[$i]->ni,$data[$i]->nb,$data[$i]->sid01,$data[$i]->sid02,$data[$i]->sid03,$data[$i]->sid04,$data[$i]->sid05,$data[$i]->sid06,$data[$i]->sid07,$data[$i]->nd);
          
			if($res2){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);

			}else{


				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}
			}
		}

		echo json_encode($a);

	} 

	else if ($tag == 'ss2') {

		$json = $_POST["ss2json"];

        
		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}
        
		$data = json_decode($json);

		$a=array();
		$b=array();

   
		$GLOBALS['pidss'] = $_POST["projectid"];
		$GLOBALS['sidss'] = $_POST["siteid"];

        //$sen,$ssen,$sfr,$hw,$hs,$fr,$tx,$bf,$ndi01,$ndi02,$ndi03,$ndi04,$ndi05,$ndi06,$ndi07,$ndi08,$ndi09,$ndi10,$n,$notes,$slc,$st,$ni,$nb,$sid01,$sid02,$sid03,$sid04,$sid05,$sid06,$sid07,$nd

		for($i=0; $i<count($data) ; $i++)
		{
        
			$res2 = ss2data($data[$i]->sen,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->hf,$data[$i]->hbt,$data[$i]->htr,$data[$i]->hw,$data[$i]->hs,$data[$i]->dnh,$data[$i]->fr,$data[$i]->fr,$data[$i]->dip,$data[$i]->tx,$data[$i]->bfEgg,$data[$i]->bfL1,$data[$i]->bfL2,$data[$i]->bfL3,$data[$i]->bfL4,$data[$i]->L1L2,$data[$i]->L3L4,$data[$i]->pu,$data[$i]->vl,$data[$i]->rl,$data[$i]->vt,$data[$i]->tlv,$data[$i]->no,$data[$i]->notes,$data[$i]->slc,$data[$i]->ni,$data[$i]->nb,$data[$i]->st2sid01,$data[$i]->st2sid02,$data[$i]->st2sid03,$data[$i]->st2sid04,$data[$i]->st2sid05,$data[$i]->st2sid06,$data[$i]->st2sid07,$data[$i]->nod

			);
          
			if($res2){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);

			}else{


				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}
			}
		}

		echo json_encode($a);

	} 



<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> ss3-to-main
	else if ($tag == 'ss3') {

		$json = $_POST["ss3json"];

        
		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}
        
		$data = json_decode($json);

		$a=array();
		$b=array();


		$GLOBALS['pidss'] = $_POST["projectid"];
		$GLOBALS['sidss'] = $_POST["siteid"];

        //$sen,$ssen,$sfr,$sd,$fd,$fr,$dd,$tx,$sas,$mt,$ch,$la,$ft,$bf,$hp,$oth5,$oth6,$oth7,$oth8,$n,$slc,$st,$ni,$nb,$sid01,$sid02,$sid03,$sid04,$sid05,$sid06,$sid07,$nd

		for($i=0; $i<count($data) ; $i++){
        
			$res2 = ss3data($data[$i]->sen,$data[$i]->fr,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->sd,$data[$i]->dd,$data[$i]->tx,$data[$i]->sas,$data[$i]->mt,$data[$i]->ch,$data[$i]->replicate_no,$data[$i]->control_no,$data[$i]->exposuretreatment,$data[$i]->st,$data[$i]->duration);
          
			if($res2){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);

			}else{


				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}
			}
		}

		echo json_encode($a);

	}



		// adding for ss4 snail

		else if ($tag == 'ss4') {

			$json = $_POST["ss4json"];
	
			
			if (get_magic_quotes_gpc()){
				$json = stripslashes($json);
			}
			
			$data = json_decode($json);
	
			$a=array();
			$b=array();
	
	   
			$GLOBALS['pidss'] = $_POST["projectid"];
			$GLOBALS['sidss'] = $_POST["siteid"];
	
			
	
			for($i=0; $i<count($data) ; $i++)
			{
			
				$res2 = ss4data($data[$i]->sen,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->fr,$data[$i]->hc,$data[$i]->su,$data[$i]->sa,$data[$i]->dso,$data[$i]->dr,$data[$i]->ph,$data[$i]->co,$data[$i]->wda,$data[$i]->act,
				$data[$i]->wn,$data[$i]->wl,$data[$i]->de,$data[$i]->ret,$data[$i]->wt,$data[$i]->lwt,$data[$i]->sp,$data[$i]->spc,$data[$i]->n,$data[$i]->sps,$data[$i]->tc,$data[$i]->nc
	
				);
			  
				if($res2){
	
					$b["id"] = (int)$data[$i]->id;
					$b["sen"] = (int)$data[$i]->sen;
					$b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["success"] = 1;
					$b["error"] = 0;
	
					array_push($a,$b);
	
				}else{
	
	
					if ($db->mysqlierrorno() == 1062){
	
						$b["id"] = (int)$data[$i]->id;
							$b["sen"] = (int)$data[$i]->sen;
							$b["fr"] = (int)$data[$i]->fr;
						$b["status"] = 'yes';
						$b["error"] = 1062;
						$b["success"] = 1;
						$b["error_msg"] = "error:".$db->mysqlierror();
	
						array_push($a,$b);
	
					}  else{
	
						$b["id"] = (int)$data[$i]->id;
							$b["sen"] = (int)$data[$i]->sen;
							$b["fr"] = (int)$data[$i]->fr;
						$b["status"] = 'no';
						$b["error"] = 1;
						$b["success"] = 0;
						$b["error_msg"] = "error:".$db->mysqlierror();
	
						array_push($a,$b);
	
					}
				}
			}
	
			echo json_encode($a);
	
		} 


//end ss

<<<<<<< HEAD
>>>>>>> 18d49522400a28739f1e8f2152f70487bb62aed2
=======
=======
>>>>>>> Njire-C
>>>>>>> ss3-to-main

	else if ($tag == 'so1') {

		$json = $_POST["so1json"];

        
		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}
        
		$data = json_decode($json);

		$a=array();
		$b=array();

		$GLOBALS['pidss'] = $_POST["projectid"];
		$GLOBALS['sidss'] = $_POST["siteid"];

       
        //$id,$sen,$ssen,$sfr,$fr,$rc,$sbf,$sslc,$sst,$ssid,$stx,$species,$kdr,$pf,$pv,$po,$pm,$human,$chicken,$goat,$bovine,$dog,$cat,$rat,$bps

		for($i=0; $i<count($data) ; $i++)
		{
        
			$res2 = ss1data($data[$i]->id,$data[$i]->sen,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->fr,$data[$i]->rc,$data[$i]->sbf,$data[$i]->sslc,$data[$i]->sst,$data[$i]->ssid,$data[$i]->stx,$data[$i]->species,$data[$i]->kdr,$data[$i]->pf,$data[$i]->pv,$data[$i]->po,$data[$i]->pm,$data[$i]->human,$data[$i]->chicken,$data[$i]->goat,$data[$i]->bovine,$data[$i]->dog,$data[$i]->cat,$data[$i]->rat,$data[$i]->bps);
          
			if($res2){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);

			}else{


				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}
			}
		}

		echo json_encode($a);

	} 


	else if ($tag == 'so2') {

		$json = $_POST["so2json"];

        
		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}
        
		$data = json_decode($json);

		$a=array();
		$b=array();

		$GLOBALS['pidss'] = $_POST["projectid"];
		$GLOBALS['sidss'] = $_POST["siteid"];

       

        //$id,$sen,$ssen,$sfr,$fr,$sbf,$sslc,$sst,$ssid,$stx,$ssas,$ms,$pr,$inf,$os,$wl,$bps

		for($i=0; $i<count($data) ; $i++)
		{
        
			$res2 = ss1data($data[$i]->id,$data[$i]->sen,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->fr,
				$data[$i]->sbf,$data[$i]->sslc,$data[$i]->sst,$data[$i]->ssid,$data[$i]->stx,
				$data[$i]->ssas,$data[$i]->ms,$data[$i]->pr,$data[$i]->inf,$data[$i]->os,
				$data[$i]->wl,$data[$i]->bps

			);
          
			if($res2){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);

			}else{


				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}
			}
		}

		echo json_encode($a);

	}

//end so


	else if ($tag == 'st1') {

		$json = $_POST["st1json"];

        
		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}
        
		$data = json_decode($json);

		$a=array();
		$b=array();

        // $GLOBALS['pidss'] = "5";
        // $GLOBALS['sidss'] = "12";

		$GLOBALS['pidss'] = $_POST["projectid"];
		$GLOBALS['sidss'] = $_POST["siteid"];

       
        // $id,$sen,$ssen,$sfr,$fr,$rc,$sbf,$sslc,$sst,$ssid,$stx
		for($i=0; $i<count($data) ; $i++)
		{
        
			$res2 = ss1data($data[$i]->id,$data[$i]->sen,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->fr,$data[$i]->rc,$data[$i]->sbf,$data[$i]->sslc,$data[$i]->sst,$data[$i]->ssid,$data[$i]->stx);
          
			if($res2){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);

			}else{


				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}
			}
		}

		echo json_encode($a);

	} 

	else if ($tag == 'st2') {

		$json = $_POST["st2json"];

        
		if (get_magic_quotes_gpc()){
			$json = stripslashes($json);
		}
        
		$data = json_decode($json);

		$a=array();
		$b=array();


		$GLOBALS['pidss'] = $_POST["projectid"];
		$GLOBALS['sidss'] = $_POST["siteid"];

       
		for($i=0; $i<count($data) ; $i++)
		{
        
          //$id,$sen,$fr,$ssen,$ns,$fst,$ff,$rcn

			$res2 = ss1data($data[$i]->id,$data[$i]->sen,$data[$i]->fr,$data[$i]->ssen,$data[$i]->ns,
				$data[$i]->fst,$data[$i]->ff,$data[$i]->rcn);
          
			if($res2){

				$b["id"] = (int)$data[$i]->id;
				$b["sen"] = (int)$data[$i]->sen;
				$b["fr"] = (int)$data[$i]->fr;
				$b["status"] = 'yes';
				$b["success"] = 1;
				$b["error"] = 0;

				array_push($a,$b);

			}else{


				if ($db->mysqlierrorno() == 1062){

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'yes';
					$b["error"] = 1062;
					$b["success"] = 1;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}  else{

					$b["id"] = (int)$data[$i]->id;
				        $b["sen"] = (int)$data[$i]->sen;
				        $b["fr"] = (int)$data[$i]->fr;
					$b["status"] = 'no';
					$b["error"] = 1;
					$b["success"] = 0;
					$b["error_msg"] = "error:".$db->mysqlierror();

					array_push($a,$b);

				}
			}
		}

		echo json_encode($a);

	}  


}

?>
