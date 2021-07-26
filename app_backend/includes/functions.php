<?php

/**
* Created by Dickson Msaky @ Ifakara Health Insitute (2018)
**/

require_once('load.php');

function read_date($str)
{
    if ($str) {
        return date('F j, Y, g:i:s a', strtotime($str));
    } else {
        return null;
    }
}

function make_date()
{
    return strftime("%Y-%m-%d %H:%M:%S", time());
}


function ed1data($sen, $fr, $dt, $ea, $cr, $cp, $hh, $sid, $me, $ind, $ht, $st, $ft, $hp, $rnd, $blk, $shh, $stn, $vi, $tr, $dy, $tmp, $hmd, $ws, $oth, $vc, $notes, $dsen)
{
    global $db;
    $status = false;

    $projectid = $GLOBALS['pid'] ;
    $siteid = $GLOBALS['sid'] ;


    //table prefix
    $prefixtable = $projectid."_";
    $ed1 = $prefixtable."ed1";
    $ss1 = $prefixtable."ss1";
    $edss = $prefixtable."edss";


    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
  
    $result = $db->query($query_1);

    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            //Link found
            //echo "Link found  <br />";
            //hold value of projectregsite identification
            $projectregsite = $row["id"];
        }
        //check number if is equal to zero then insert those values to table projectregsite after that pull out id
        elseif ($num_row == 0) {
            //create query to insert data in projectregsite
            $query_2 ="INSERT INTO projectregsite (site_id, projectreg_id) VALUES ('$siteid','$projectid')";
            //execute query to insert data into projectregsite Entity
            $result = $db->query($query_2);
            //check if query execute successfull
            if ($result) {
                //query to databese using query_1
                $result = $db->query($query_1);
                //count number of row return
                $row = $db->fetch_assoc($result);
                //Link found
                // echo "Link found  <br />";
                //hold this value from result above in session
                $projectregsite = $row["id"];
            }
        }
    }
    $resultf = $db->mysqliquery("INSERT INTO  $ed1 ( projectregsite_id, sen, fr, dt, ea, cr, cp, hh, sid, me, ind, ht, st, ft, hp,  rnd, blk, shh, stn, vi, tr, dy, tmp, hmd, ws, vc, notes, dsen)
    VALUES($projectregsite,'$sen','$fr','$dt','$ea','$cr','$cp',
    '$hh','$sid','$me','$ind','$ht','$st',
    '$ft','$hp','$rnd','$blk','$shh','$stn','$vi','$tr','$dy','$tmp','$hmd','$ws','$vc','$notes','$dsen')");
    // check for successful store
    if ($resultf) {
        $query_insert_edss = "INSERT INTO $edss (ed1id)
   SELECT `ed1`.`id` FROM $edss as edss
   RIGHT JOIN $ed1 as ed1 
   ON (`edss`.`ed1id` = `ed1`.`id`)
   WHERE edss.ed1id IS NULL ORDER BY ed1.fr ASC";
        //execute query to insert into edss table from Ed1 Table
        $db->query($query_insert_edss);
    }

    return $resultf;
}

function ed2data($sen, $fr, $ssen, $sfr, $slc, $sbp, $sst, $ssid, $scc, $stx, $ssas, $ag, $n, $sd, $st, $tr, $vi, $rep, $rnd, $dy, $oth1, $oth2, $oth3, $va, $dsen)
{
    global $db;

    $projectid = $GLOBALS['pid'] ;
    $siteid = $GLOBALS['sid'] ;

    //table prefix
    $prefixtable = $projectid."_";
    $ed = $prefixtable."ed2";
    $ss1 = $prefixtable."ss1";
    $edss = $prefixtable."edss";


    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
    //execute query above
    $result = $db->mysqliquery($query_1);

    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            //Link found
            // echo "Link found  <br />";
            //hold value of projectregsite identification
            $projectregsite = $row["id"];
        }
        //check number if is equal to zero then insert those values to table projectregsite after that pull out id
        elseif ($num_row == 0) {
            //create query to insert data in projectregsite
            $query_2 ="INSERT INTO projectregsite (site_id, projectreg_id) VALUES ('$siteid','$projectid')";
            //execute query to insert data into projectregsite Entity
            $result = $db->mysqliquery($query_2);
            //check if query execute successfull
            if ($result) {
                //query to databese using query_1
                $result = $db->mysqliquery($query_1);
                //count number of row return
                $row = $db->fetch_assoc($result);
                //Link found
                // echo "Link found  <br />";
                //hold this value from result above in session
                $projectregsite = $row["id"];
            }
        }
    }
    $resultf = $db->mysqliquery("INSERT INTO  $ed (projectregsite_id,sen,fr,ssen,sfr,slc,sbp,sst,ssid,scc,stx,ssas,ag,n,sd,st,tr,vi,rep,rnd,dy,oth1,oth2,oth3,va,dsen)
    VALUES($projectregsite,'$sen','$fr','$ssen','$sfr','$slc','$sbp','$sst','$ssid','$scc','$stx','$ssas','$ag','$n','$sd','$st','$tr','$vi','$rep','$rnd','$dy','$oth1','$oth2','$oth3','$va','$dsen')");
    // check for successful store
    if ($resultf) {
        $query_insert_edss = "INSERT INTO $edss (ed2id)
   SELECT `ed1`.`id` FROM $edss as edss
   RIGHT JOIN $ed as ed1 
   ON (`edss`.`ed2id` = `ed1`.`id`)
   WHERE edss.ed1id IS NULL ORDER BY ed1.fr ASC";
        //execute query to insert into edss table from Ed1 Table
        $db->mysqliquery($query_insert_edss);
    }

    return $resultf;
}

function ss1data(
    $sen,
    $ssen,
    $sfr,
    $bf,
    $fr,
    $tx,
    $sas,
    $n,
    $notes,
    $slc,
    $nd,
    $No_Batches,
    $st2sid01,
    $st2sid02,
    $st2sid03,
    $st2sid04,
    $st2sid05,
    $st2sid06,
    $st2sid07,
    $No_Discarded
)
{
    global $db;
  
    $projectid = $GLOBALS['pidss'] ;
    $siteid = $GLOBALS['sidss'] ;

    //table prefix
    $prefixtable = $projectid."_";
    $ed1 = $prefixtable."ed1";
    $ss1 = $prefixtable."ss1";
    $edss = $prefixtable."edss";
    $ssso = $prefixtable."ssso";

    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
    //execute query above
    $result = $db->mysqliquery($query_1);
    //fetching link
    //echo "Fetching link <br />";
    //check if query execute successfull
    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            $projectregsite = $row["id"];
        }


        $query_fetch="SELECT edss.id FROM $edss as edss
    INNER JOIN $ed1 as ed1  ON (edss.ed1id = ed1.id)
    WHERE ed1.sen=$ssen AND ed1.dsen=$sen AND ed1.projectregsite_id='$projectregsite' AND ed1.fr=$sfr";

        $result2 = $db->mysqliquery($query_fetch);

        $row = $db->fetch_assoc($result2);

        $edssid = $row["id"];

        $senfr = $sen.$fr;
    }

    $resultft = $db->mysqliquery("INSERT INTO  $ss1 ( edssid, ssen,sfr,sen, bf, fr,tx, sas, n, notes, slc, ni, nb, sid01, sid02, sid03,  sid04,sid05, sid06, sid07,nd,senfr)
    VALUES('$edssid','$ssen','$sfr','$sen','$bf','$fr','$tx','$sas',
    '$n','$notes','$slc','$nd','$No_Batches','$st2sid01',
    '$st2sid02','$st2sid03','$st2sid04','$st2sid05','$st2sid06','$st2sid07',
    '$No_Discarded','$senfr')");

    // check for successful store
    if ($resultft) {
        $query_insert_edss2 = "INSERT INTO $ssso (ss1id) SELECT `ss1`.`id`
    FROM $ssso as ssso RIGHT JOIN $ss1 as ss1 ON (`ssso`.`ss1id` = `ss1`.`id`)
    WHERE ssso.ss1id IS NULL      
    ";

        //execute query to insert into EdSs table from Ed1 Table
        $db->mysqliquery($query_insert_edss2);
    }

    return $resultft;
}




function ss2data($sen, $ssen, $sfr, $hf, $htc, $htr, $hw, $hs, $fr, $tx, $bf, $pu, $vl, $vt, $ndi01, $ndi02, $ndi03, $ndi04, $ndi05, $ndi06, $ndi07, $ndi08, $ndi09, $ndi10, $n, $notes, $slc, $ni, $nb, $sid01, $sid02, $sid03, $sid04, $sid05, $sid06, $sid07, $nd)
{
    global $db;
  
    $projectid = $GLOBALS['pidss'] ;
    $siteid = $GLOBALS['sidss'] ;

    //table prefix
    $prefixtable = $projectid."_";
    $ed1 = $prefixtable."ed1";
    $ss1 = $prefixtable."ss2";
    $edss = $prefixtable."edss";
    $ssso = $prefixtable."ssso";

    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
    //execute query above
    $result = $db->mysqliquery($query_1);
    //fetching link
    //echo "Fetching link <br />";
    //check if query execute successfull
    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            $projectregsite = $row["id"];
        }


        $query_fetch="SELECT edss.id FROM $edss as edss
    INNER JOIN $ed1 as ed1  ON (edss.ed1id = ed1.id)
    WHERE ed1.sen=$ssen AND ed1.dsen=$sen AND ed1.projectregsite_id='$projectregsite' AND ed1.fr=$sfr";

        $result2 = $db->mysqliquery($query_fetch);

        $row = $db->fetch_assoc($result2);

        $edssid = $row["id"];

        $senfr = $sen.$fr;
    }

    $resultft = $db->mysqliquery("INSERT INTO  $ss1 ( edssid, sen,ssen,sfr,hw,hs,fr,tx,bf,ndi01,ndi02,ndi03,ndi04,ndi05,ndi06,ndi07,ndi08,ndi09,ndi10,n,notes,slc,st,ni,nb,sid01,sid02,sid03,sid04,sid05,sid06,sid07,nd,senfr)
    VALUES('$edssid','$sen','$ssen','$sfr','$hw','$hs','$fr','$tx','$bf','$ndi01','$ndi02','$ndi03','$ndi04','$ndi05','$ndi06','$ndi07','$ndi08','$ndi09','$ndi10','$n','$notes','$slc','$st','$ni','$nb','$sid01','$sid02','$sid03','$sid04','$sid05','$sid06','$sid07','$nd','$senfr')");

        
    if ($resultft) {
        $query_insert_edss2 = "INSERT INTO $ssso (ss2id) SELECT `ss1`.`id`
    FROM $ssso as ssso RIGHT JOIN $ss1 as ss1 ON (`ssso`.`ss2id` = `ss1`.`id`)
    WHERE ssso.ss1id IS NULL      
    ";

        //execute query to insert into EdSs table from Ed1 Table
        $db->mysqliquery($query_insert_edss2);
    }

    return $resultft;
}


function ss5data($sen,$ssen, $sfr,$fr,
$dot,$ga,$gds,$sgds,$ndis,$mo,$mst,$ma,
$tb,$bia,$it,
$SynT,$ic,$sc,$SRTemp,$ETMax,$ETMin,$HTMax,$HTMin,
$EHMax,$EHMin,$HHMax,$HHMin, $mti1,$mti2,$mti3,$mti4,$mti5,$mti6,
$mts,$mtisy1,$mtisy2, $mtisy3,$mtisy4,$mtisy5, $mtisy6,

 $mtsy, $btci1,  $btci2, $btci3, $btci4, $btci5, $btci6,
 $bc_s,

 $btcsy_i1, $btcsy_i2, $btcsy_i3, $btcsy_i4, $bc_sy,
 $dbc_i1,$dbc_i2,$dbc_i3,$dbc_i4,$dbc_i5,$dbc_i6,$dbc_s,


 $dbc_syi1, $dbc_syi2,$dbc_syi3, $dbc_syi4,
 $dbc_sy,$tbc_i1, $tbc_i2,$tbc_i3,$tbc_i4, $tbc_i5,$tbc_i6,
 $tbc_s, $tbc_syi1,$tbc_syi2,$tbc_syi3, $tbc_syi4, $tbc_sy,

 $kd_d0,$kd_d15, $kd_d30,$kd_d45, $kd_d60,$kd_d75,
 $kd_d90, $kd_d105,$kd_d120,$kd_d24, $kd_d72,

 $kd_d1d, $kd_d2d, $kd_d3d, $kd_d4d, $kd_d5d, $kd_d6d, $k_d7d,



$rt,$spd,$liu,$elcm,$mt1,$mt2, $mt3,
$mt4,$mkd1,$mkd2,$mkd3,$mkd4,$mkd5,$mkd6,$mkd7,
$mkd8, $mkd9, $mkd10,
$mkd11, $mkd12, $mkd13, $mkd14,
$mkd15, $mkd16,$mkd17,$mkd18, $mkd19,$mkd20,


$O1, $O2, $O3,



$mtir1,$mtir2, $mtir3, $mtir4,$mtir5, $mtir6,
$mtsr1, $mtsr2, $mtsr3, $mtsr4,
$mtisyr1, $mtisyr2, $mtisyr3,$mtisyr4,
$mtsyr1, $mtsyr2, $mtsyr3, $mtsyr4,
$tcir1, $tcir2,$tcir3, $tcir4, $tcir5, $tcir6,

$tc_sr1, $tc_sr2, $tc_sr3, $tc_sr4,
$tc_syir1, $tc_syir2,  $tc_syir3,  $tc_syir4,
$tc_sy1r,$tc_sy2r,$tc_sy3r,$tc_sy4r,

$id_ir1, $id_ir2, $id_ir3,$id_ir4,$id_ir5, $id_ir6,
$id_sr1,$id_sr2,$id_sr3,$id_sr4,$id_syr1,
$id_syr2, $id_syr3, $id_syr4,

$edi1,$edi2,$edi3,$edi4,$edi5,$edi6,
$eds1, $eds2, $eds3, $eds4,
$edisy1, $edisy2, $edisy3, $edisy4,
$edsy1,$edsy2,$edsy3,$edsy4,


$senfr)
 
{
    global $db;
  
    $projectid = $GLOBALS['pidss'] ;
    $siteid = $GLOBALS['sidss'] ;

    //table prefix
    $prefixtable = $projectid."_";
    $ed1 = $prefixtable."ed1";
    $ss5 = $prefixtable."ss5";
    $edss = $prefixtable."edss";
    $ssso = $prefixtable."ssso";

    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
    //execute query above
    $result = $db->mysqliquery($query_1);
    //fetching link
    //echo "Fetching link <br />";
    //check if query execute successfull
    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            $projectregsite = $row["id"];
        }


        /*$query_fetch="SELECT edss.id FROM $edss as edss
        INNER JOIN $ed1 as ed1  ON (edss.ed1id = ed1.id)
        WHERE ed1.sen=$ssen AND ed1.dsen=$sen AND ed1.projectregsite_id='$projectregsite' AND ed1.fr=$sfr";

        $result2 = $db->mysqliquery($query_fetch);

        $row = $db->fetch_assoc($result2);*/

        $edssid = 0;

        $senfr = $sen.$fr;
    }


    
   $resultft = $db->mysqliquery("INSERT INTO  $ss5 (edssid,sen,ssen,sfr,fr,
   dot,ga,gds,sgds,ndis,mo,mst,ma,tb,bia,it,synt,
   ic,sc,SRTemp,ETMax,ETMin,HTMax,HTMin,EHMax,EHMin,HHMax,HHMin, mti1,mti2,mti3,
   mti4, mti5, mti6, mts,mtisy1,mtisy2, mtisy3,mtisy4,mtisy5, mtisy6,
   mtsy, btci1, btci2, btci3, btci4, btci5, btci6,
   bc_s, btcsy_i1, btcsy_i2, btcsy_i3, btcsy_i4, bc_sy,
   dbc_i1,dbc_i2,dbc_i3,dbc_i4,dbc_i5,dbc_i6,
   dbc_s,
   
   dbc_syi1, dbc_syi2,dbc_syi3, dbc_syi4,
   dbc_sy,tbc_i1, tbc_i2,tbc_i3,tbc_i4, tbc_i5,tbc_i6,
   tbc_s, tbc_syi1,tbc_syi2,tbc_syi3, tbc_syi4, tbc_sy, 




   kd_d0,kd_d15, kd_d30,kd_d45, kd_d60, kd_d75,
   kd_d90,kd_d105, kd_d120, kd_d24,kd_d72,


   
   kd_d1d, kd_d2d, kd_d3d, kd_d4d, kd_d5d, kd_d6d,k_d7d,


   rt,spd,liu,elcm,mt1,mt2, mt3,mt4,
   mkd1,mkd2,mkd3,mkd4,mkd5,mkd6,mkd7,
   mkd8, mkd9, mkd10,
   mkd11,mkd12, mkd13,mkd14,
   mkd15, mkd16,mkd17,mkd18, mkd19,mkd20,
   
   mtir1,mtir2, mtir3, mtir4,mtir5, mtir6,
 mtsr1, mtsr2, mtsr3, mtsr4,
mtisyr1, mtisyr2, mtisyr3,mtisyr4,
mtsyr1, mtsyr2, mtsyr3, mtsyr4, tcir1, tcir2,tcir3, tcir4, tcir5, tcir6,


tc_sr1, tc_sr2, tc_sr3, tc_sr4,
tc_syir1, tc_syir2, tc_syir3, tc_syir4,
tc_sy1r,tc_sy2r,tc_sy3r,tc_sy4r,

id_ir1, id_ir2, id_ir3,id_ir4,id_ir5, id_ir6,
id_sr1,id_sr2,id_sr3,id_sr4,

edi1,edi2,edi3,edi4,edi5,edi6,
eds1, eds2, eds3, eds4,
edisy1, edisy2, edisy3, edisy4,
edsy1,edsy2,edsy3,edsy4,

senfr)

   VALUES('$edssid','$sen','$ssen','$sfr', '$fr',
   '$dot','$ga','$gds','$sgds','$ndis','$mo','$mst','$ma',
   '$tb','$bia','$it','$SynT','$ic','$sc','$SRTemp','$ETMax','$ETMin','$HTMax','$HTMin',
   '$EHMax','$EHMin','$HHMax','$HHMin', '$mti1','$mti2',
   '$mti3','$mti4','$mti5','$mti6','$mts','$mtisy1','$mtisy2', '$mtisy3','$mtisy4',
   '$mtisy5', '$mtisy6','$mtsy', '$btci1',  '$btci2', '$btci3', '$btci4', '$btci5', '$btci6',
   '$bc_s',
   '$btcsy_i1', '$btcsy_i2', '$btcsy_i3', '$btcsy_i4', '$bc_sy',
   '$dbc_i1','$dbc_i2','$dbc_i3','$dbc_i4','$dbc_i5','$dbc_i6',
   '$dbc_s',  
  
   '$dbc_syi1', '$dbc_syi2','$dbc_syi3', '$dbc_syi4',
   '$dbc_sy','$tbc_i1', '$tbc_i2','$tbc_i3','$tbc_i4', '$tbc_i5','$tbc_i6',
   '$tbc_s', '$tbc_syi1','$tbc_syi2','$tbc_syi3', '$tbc_syi4', '$tbc_sy',


   '$kd_d0','$kd_d15', '$kd_d30','$kd_d45', '$kd_d60','$kd_d75',
             '$kd_d90','$kd_d105','$kd_d120','$kd_d24', '$kd_d72',

             '$kd_d1d', '$kd_d2d', '$kd_d3d', '$kd_d4d', '$kd_d5d', '$kd_d6d', '$k_d7d',



   '$liu','$elcm','$mt1','$mt2', '$mt3','$mt4',
   '$mkd1','$mkd2','$mkd3','$mkd4','$mkd5','$mkd6','$mkd7',
   '$mkd8', '$mkd9', '$mkd10',
   '$mkd11', '$mkd12', '$mkd13','$mkd14',
   '$mkd15', '$mkd16','$mkd17','$mkd18', '$mkd19','$mkd20',    


   '$mtir1','$mtir2', '$mtir3', '$mtir4','$mtir5', '$mtir6',
'$mtsr1', '$mtsr2', '$mtsr3', '$mtsr4',
'$mtisyr1', '$mtisyr2', '$mtisyr3','$mtisyr4',
'$mtsyr1', '$mtsyr2', '$mtsyr3', '$mtsyr4',
'$tcir1', '$tcir2','$tcir3', '$tcir4', '$tcir5', '$tcir6',


'$tc_sr1', '$tc_sr2', '$tc_sr3', '$tc_sr4',
'$tc_syir1', '$tc_syir2',  '$tc_syir3', '$tc_syir4',
'$tc_sy1r','$tc_sy2r','$tc_sy3r','$tc_sy4r',


'$id_ir1', '$id_ir2', '$id_ir3','$id_ir4','$id_ir5', '$id_ir6',
'$id_sr1','$id_sr2','$id_sr3','$id_sr4','$id_syr1',
'$id_syr2', '$id_syr3', '$id_syr4',

'$edi1','$edi2','$edi3','$edi4','$edi5','$edi6',
'$eds1', '$eds2', '$eds3', '$eds4',
'$edisy1', '$edisy2', '$edisy3', '$edisy4',
'$edsy1','$edsy2','$edsy3','$edsy4',




'$senfr')");

 
        // check for successful store
        if ($resultft) {

            $query_insert_edss5 = "INSERT INTO $ssso (ss5id) SELECT `ss1`.`id`
            FROM $ssso as ssso RIGHT JOIN $ss1 as ss1 ON (`ssso`.`ss5id` = `ss1`.`id`)
            WHERE ssso.ss1id IS NULL      
            ";
        
           //execute query to insert into EdSs table from Ed1 Table
            $db->mysqliquery($query_insert_edss5);
        
          } 
        
           return $resultft;
        
        
        }


function s01data($id, $sen, $ssen, $sfr, $fr, $rc, $sbf, $sslc, $sst, $ssid, $stx, $species, $kdr, $pf, $pv, $po, $pm, $human, $chicken, $goat, $bovine, $dog, $cat, $rat, $bps)
{
    global $db;
  
    $projectid = $GLOBALS['pidss'] ;
    $siteid = $GLOBALS['sidss'] ;

    $prefixtable = $projectid."_";

    $ed1 = $prefixtable."ed1";
    $ss1 = $prefixtable."ss1";
    $so1 = $prefixtable."so1";
    $edss = $prefixtable."edss";
    $ssso = $prefixtable."ssso";

    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
    //execute query above
    $result = $db->mysqliquery($query_1);
    //fetching link
    //echo "Fetching link <br />";
    //check if query execute successfull
    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            $projectregsite = $row["id"];
        }


        $query_fetch="SELECT distinct
          ssso.id
          FROM
          $ssso as ssso
          INNER JOIN 
          $ss1 as ss1 
          ON (ssso.ss1id = ss1.id)
          WHERE ss1.sen=$ssen AND ss1.fr=$sfr";

        $result2 = $db->mysqliquery($query_fetch);

        $row = $db->fetch_assoc($result2);

        $edssid = $row["id"];
    }

    $resultft = $db->mysqliquery("INSERT INTO  $so1 (id_,sssoid,sen,ssen,sfr,fr,rc,sbf,sslc,sst,ssid,stx,species,kdr,pf,pv,po,pm,human,chicken,goat,bovine,dog,cat,rat,bps)
    VALUES('$id,','$edssid','$sen','$ssen','$sfr','$fr','$rc','$sbf','$sslc','$sst','$ssid','$stx','$species','$kdr','$pf','$pv','$po','$pm','$human','$chicken','$goat','$bovine','$dog','$cat','$rat,'$bps')");



    return $resultft;
}


function s02data($id, $sen, $ssen, $sfr, $fr, $sbf, $sslc, $sst, $ssid, $stx, $ssas, $ms, $pr, $inf, $os, $wl, $bps)
{
    global $db;
  
    $projectid = $GLOBALS['pidss'] ;
    $siteid = $GLOBALS['sidss'] ;

    $prefixtable = $projectid."_";

    $ed1 = $prefixtable."ed1";
    $ss1 = $prefixtable."ss1";
    $so1 = $prefixtable."so2";
    $edss = $prefixtable."edss";
    $ssso = $prefixtable."ssso";

    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
    //execute query above
    $result = $db->mysqliquery($query_1);
    //fetching link
    //echo "Fetching link <br />";
    //check if query execute successfull
    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            $projectregsite = $row["id"];
        }


        $query_fetch="SELECT distinct
          ssso.id
          FROM
          $ssso as ssso
          INNER JOIN 
          $ss1 as ss1 
          ON (ssso.ss1id = ss1.id)
          WHERE ss1.sen=$ssen AND ss1.fr=$sfr";

        $result2 = $db->mysqliquery($query_fetch);

        $row = $db->fetch_assoc($result2);

        $edssid = $row["id"];
    }

    $resultft = $db->mysqliquery("INSERT INTO  $so1 (id_,sssoid,sen,ssen,sfr,fr,sbf,sslc,sst,ssid,stx,ssas,ms,pr,inf,os,wl,bps)
    VALUES('$id','$edssid','$sen','$ssen','$sfr','$fr','$sbf','$sslc','$sst','$ssid','$stx','$ssas','$ms','$pr','$inf','$os','$wl','$bps')");

    return $resultft;
}


function st1data($id, $sen, $ssen, $sfr, $fr, $rc, $sbf, $sslc, $sst, $ssid, $stx)
{
    global $db;
  
    $projectid = $GLOBALS['pidss'] ;
    $siteid = $GLOBALS['sidss'] ;

    $prefixtable = $projectid."_";

    $st1 = $prefixtable."st1";

    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
    //execute query above
    $result = $db->mysqliquery($query_1);
    //fetching link
    //echo "Fetching link <br />";
    //check if query execute successfull
    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            $projectregsite = $row["id"];
        }
    }

    $resultft = $db->mysqliquery("INSERT INTO  $st1 (id_,projectregsite_id,sen,ssen,sfr,fr,rc,sbf,sslc,sst,ssid,stx)
    VALUES('$id','$projectregsite','$sen',$ssen','$sfr','$fr','$rc','$sbf','$sslc','$sst','$ssid','$stx')");

    // check for successful store
    return $resultft;
}


function st2data($id, $sen, $fr, $ssen, $ns, $fst, $ff, $rcn)
{
    global $db;
  
    $projectid = $GLOBALS['pidss'] ;
    $siteid = $GLOBALS['sidss'] ;

    $prefixtable = $projectid."_";

    $st1 = $prefixtable."st2";

    $query_1 = "SELECT id FROM projectregsite WHERE site_id='$siteid' AND projectreg_id='$projectid'";
    //execute query above
    $result = $db->mysqliquery($query_1);
    //fetching link
    //echo "Fetching link <br />";
    //check if query execute successfull
    if ($result) {
        //check number of row`s found in table projectregsite
        //count number of row return
        $num_row = $db->num_rows($result);
        //fetch data from database
        $row = $db->fetch_assoc($result);
        //check if number of row is equal to one
        if ($num_row == 1) {
            $projectregsite = $row["id"];
        }
    }

    $resultft = $db->mysqliquery("INSERT INTO  $st1 (id_,projectregsite_id,sen,fr,ssen,ns,fst,ff,rcn)
    VALUES('$id','$projectregsite','$sen','$fr','$ssen','$ns','$fst','$ff','$rcn')");

    return $resultft;
}






?>

