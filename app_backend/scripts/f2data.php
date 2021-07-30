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
        
			$res2 = ss1data($data[$i]->sen,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->hw,$data[$i]->hs,$data[$i]->fr,$data[$i]->tx,$data[$i]->bf,$data[$i]->ndi01,$data[$i]->ndi02,$data[$i]->ndi03,$data[$i]->ndi04,$data[$i]->ndi05,$data[$i]->ndi06,$data[$i]->ndi07,$data[$i]->ndi08,$data[$i]->ndi09,$data[$i]->ndi10,$data[$i]->n,$data[$i]->notes,$data[$i]->slc,$data[$i]->st,$data[$i]->nd,$data[$i]->No_Batches,$data[$i]->st2sid01,$data[$i]->st2sid02,$data[$i]->st2sid03,$data[$i]->st2sid04,$data[$i]->st2sid05,$data[$i]->st2sid06,$data[$i]->st2sid07,$data[$i]->No_Discarded

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
        
			        
			$res2 = ss3data($data[$i]->sen,$data[$i]->ssen, $data[$i]->sfr,$data[$i]->fr,

			$data[$i]->dot, $data[$i]->ga,$data[$i]->gds,
			$data[$i]->sgds, $data[$i]->ndis, $data[$i]->mo, $data[$i]->mst, $data[$i]->ma,


		    $data[$i]->tb,
			 $data[$i]->bia,$data[$i]->it, $data[$i]->SynT, $data[$i]->ic, $data[$i]->sc, $data[$i]->SRTemp,
			 $data[$i]->etmax, $data[$i]->etmin, $data[$i]->htmax,
			 $data[$i]->htmin, $data[$i]->ehmax, $data[$i]->ehmin, $data[$i]->HHMax, $data[$i]->HHMin,
			 $data[$i]->mti1, $data[$i]->mti2, $data[$i]->mti3, $data[$i]->mti4, $data[$i]->mti5, 
			 $data[$i]->mti6,
			 
			 $data[$i]->mts,$data[$i]->mtisy1,$data[$i]->mtisy2, $data[$i]->mtisy3,
			 $data[$i]->mtisy4,$data[$i]->mtisy5, $data[$i]->mtisy6,
			 $data[$i]->mtsy, $data[$i]->btci1,$data[$i]->btci2, $data[$i]->btci3, $data[$i]->btci4,
			 $data[$i]->btci5, $data[$i]->btci6,
			 $data[$i]->bc_s,
			
			 $data[$i]->btcsy_i1, $data[$i]->btcsy_i2, $data[$i]->btcsy_i3, 
			 $data[$i]->btcsy_i4, $data[$i]->bc_sy,
			 $data[$i]->dbc_i1,$data[$i]->dbc_i2,$data[$i]->dbc_i3,$data[$i]->dbc_i4,$data[$i]->dbc_i5,
			 $data[$i]->dbc_i6,
			 $data[$i]->dbc_s,

			 $data[$i]->dbc_syi1, $data[$i]->dbc_syi2,$data[$i]->dbc_syi3, 
			 $data[$i]->dbc_syi4,
			 $data[$i]->dbc_sy,$data[$i]->tbc_i1, $data[$i]->tbc_i2,$data[$i]->tbc_i3,$data[$i]->tbc_i4,
			 $data[$i]->tbc_i5,$data[$i]->tbc_i6,
			 $data[$i]->tbc_s, $data[$i]->tbc_syi1,$data[$i]->tbc_syi2,$data[$i]->tbc_syi3,
			 $data[$i]->tbc_syi4, $data[$i]->tbc_sy, 

             $data[$i]->kd_d0, $data[$i]->kd_d15, $data[$i]->kd_d30,$data[$i]->kd_d45, $data[$i]->kd_d60,
			 $data[$i]->kd_d75,
             $data[$i]->kd_d90,$data[$i]->kd_d105, $data[$i]->kd_d120,$data[$i]->kd_d24, $data[$i]->kd_d72,


			 $data[$i]->kd_d1d, $data[$i]->kd_d2d, $data[$i]->kd_d3d, $data[$i]->kd_d4d,
			  $data[$i]->kd_d5d, $data[$i]->kd_d6d, $data[$i]->k_d7d,


			 $data[$i]->rt,$data[$i]->spd,$data[$i]->liu,$data[$i]->elcm,$data[$i]->mt1,$data[$i]->mt2, $data[$i]->mt3,
			 $data[$i]->mt4,

			 $data[$i]->mkd1, $data[$i]->mkd2, $data[$i]->mkd3, $data[$i]->mkd4, $data[$i]->mkd5,
			 $data[$i]->mkd6, $data[$i]->mkd7,
			 $data[$i]->mkd8, $data[$i]->mkd9, $data[$i]->mkd10,
			 $data[$i]->mkd11, $data[$i]->mkd12, $data[$i]->mkd13,    
			 $data[$i]->mkd14,
			 $data[$i]->mkd15, $data[$i]->mkd16,$data[$i]->mkd17,$data[$i]->mkd18,
			 $data[$i]->mkd19,$data[$i]->mkd20,

			 $data[$i]->O1, $data[$i]->O2, $data[$i]->O3,




			 $data[$i]->mtir1,$data[$i]->mtir2, $data[$i]->mtir3, 
			 $data[$i]->mtir4,$data[$i]->mtir5, $data[$i]->mtir6,
			 $data[$i]->mtsr1, $data[$i]->mtsr2, $data[$i]->mtsr3, $data[$i]->mtsr4,
			 $data[$i]->mtisyr1, $data[$i]->mtisyr2, $data[$i]->mtisyr3,$data[$i]->mtisyr4,
			 $data[$i]->mtsyr1, $data[$i]->mtsyr2, $data[$i]->mtsyr3, $data[$i]->mtsyr4,
			
			 $data[$i]->tcir1, $data[$i]->tcir2,$data[$i]->tcir3, $data[$i]->tcir4, 
			 $data[$i]->tcir5, $data[$i]->tcir6,
			
			
			 $data[$i]->tc_sr1, $data[$i]->tc_sr2, $data[$i]->tc_sr3, $data[$i]->tc_sr4,
			 $data[$i]->tc_syir1, $data[$i]->tc_syir2,  $data[$i]->tc_syir3,  $data[$i]->tc_syir4,
			 $data[$i]->tc_sy1r,$data[$i]->tc_sy2r,$data[$i]->tc_sy3r,$data[$i]->tc_sy4r,


			 $data[$i]->id_ir1, $data[$i]->id_ir2, $data[$i]->id_ir3,$data[$i]->id_ir4,$data[$i]->id_ir5, 
			 $data[$i]->id_ir6,
			 $data[$i]->id_sr1,$data[$i]->id_sr2,$data[$i]->id_sr3,$data[$i]->id_sr4,
			
			 $data[$i]->id_syr1,
			 $data[$i]->id_syr2, $data[$i]->id_syr3, $data[$i]->id_syr4,
			 $data[$i]->edi1,$data[$i]->edi2,$data[$i]->edi3,$data[$i]->edi4,$data[$i]->edi5,$data[$i]->edi6,
			 $data[$i]->eds1, $data[$i]->eds2, $data[$i]->eds3, $data[$i]->eds4,
			 $data[$i]->edisy1, $data[$i]->edisy2, $data[$i]->edisy3, $data[$i]->edisy4,
			 $data[$i]->edsy1,$data[$i]->edsy2,$data[$i]->edsy3,$data[$i]->edsy4);
			  
		
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
        
			$res2 = ss1data($data[$i]->sen,$data[$i]->ssen,$data[$i]->sfr,$data[$i]->hf,$data[$i]->htc,$data[$i]->htr,$data[$i]->hw,$data[$i]->hs,$data[$i]->fr,$data[$i]->tx,$data[$i]->bf,$data[$i]->pu,$data[$i]->vl,$data[$i]->vt,$data[$i]->ndi01,$data[$i]->ndi02,$data[$i]->ndi03,$data[$i]->ndi04,$data[$i]->ndi05,$data[$i]->ndi06,$data[$i]->ndi07,$data[$i]->ndi08,$data[$i]->ndi09,$data[$i]->ndi10,$data[$i]->n,$data[$i]->notes,$data[$i]->slc,$data[$i]->st,$data[$i]->nd,$data[$i]->No_Batches,$data[$i]->st2sid01,$data[$i]->st2sid02,$data[$i]->st2sid03,$data[$i]->st2sid04,$data[$i]->st2sid05,$data[$i]->st2sid06,$data[$i]->st2sid07,$data[$i]->No_Discarded
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
