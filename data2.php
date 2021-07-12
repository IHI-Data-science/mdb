<?php

/**
 * Created by Dickson Msaky @ Ifakara Health Insitute (2018)
 **/

include_once('includes/load.php');
//setting header to json
header('Content-Type: application/json');

$prefixtable=$_SESSION['expcode']."_";

$q=$_GET['q'];

if($_POST['action']=="1"){
   
   $daterange=$_POST['daterange'];
   
   $sdate=getsdate($daterange);
   $edate=getedate($daterange);
   
   $_SESSION['ea']       =$_POST["ea"];
   $_SESSION['ind']      =$_POST["ind"];
   $_SESSION['me']       =$_POST["me"];
   $_SESSION['FromDate'] =$sdate;
   $_SESSION['ToDate']   =$edate;
   $_SESSION['daterange']=$daterange;
   
} else{
   
   $wherecon="";
   
}

//clear

if($_POST['action']=="2"){
   
   $_SESSION['ea']       ="";
   $_SESSION['ind']      ="";
   $_SESSION['me']       ="";
   $_SESSION['FromDate'] ="";
   $_SESSION['ToDate']   ="";
   $_SESSION['daterange']="";
   
}

$wherecon="";

if($_SESSION['ea']!=0){
   
   $wherecon.=" AND ed1.ea=".$_SESSION['ea'];
   
}
if($_SESSION['ind']!=0){
   
   $wherecon.=" AND ed1.ind=".$_SESSION['ind'];
   
}
if($_SESSION['me']!=0){
   
   $wherecon.=" AND ed1.me=".$_SESSION['me'];
   
}

if($_SESSION['FromDate']!=""&&$_SESSION['ToDate']!=""){
   
   $wherecon.=" AND ed1.dt BETWEEN '".date('Y-m-d', strtotime($_SESSION['FromDate']))."' AND '".date('Y-m-d', strtotime($_SESSION['ToDate']))."' ";
   
} else if($_SESSION['FromDate']!=""){
   
   $wherecon.=" AND ed1.dt >= '".date('Y-m-d', strtotime($_SESSION['FromDate']))."'";
   
} else if($_SESSION['ToDate']!=""){
   
   $wherecon.=" AND ed1.dt <= '".date('Y-m-d', strtotime($_SESSION['ToDate']))."'";
   
}

if($q==='one'){
   
   $query="SELECT
            MONTHNAME(ed1.dt) AS month,
            SUM(CASE WHEN ss1.tx = 1 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_gambiae,
            SUM(CASE WHEN ss1.tx = 2 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_funestus,
			SUM(CASE WHEN ss1.tx = 3 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_coustani,
            SUM(CASE WHEN ss1.tx = 4 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_pharoensis,
            SUM(CASE WHEN ss1.tx = 5 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_squamosus,
            SUM(CASE WHEN ss1.tx = 6 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_maculipalpis,
            SUM(CASE WHEN ss1.tx = 7 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_pretoriensis,
            SUM(CASE WHEN ss1.tx = 8 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_paludis,
            SUM(CASE WHEN ss1.tx = 9 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_wellcomei,
            SUM(CASE WHEN ss1.tx = 10 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_ziemanni,
            SUM(CASE WHEN ss1.tx = 11 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_rufipes,
            SUM(CASE WHEN ss1.tx = 12 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_implexus,				
				
				
            SUM(CASE WHEN ss1.tx > 70 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS Aedes_sp
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            LEFT JOIN method 
            ON (ed1.me = method.meth_code)
            LEFT JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code)
            LEFT JOIN bodypart 
            ON (ss1.bf = bodypart.body_code) where 1=1 $wherecon GROUP BY MONTH(ed1.dt) ORDER BY MONTH(ed1.dt),taxon.taxon_code ASC ";
   
}

if($q==='onec'){
   
   $query="SELECT
            MONTHNAME(ed1.dt) AS month,
             SUM(CASE WHEN ss1.tx = 50 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS culex,
            SUM(CASE WHEN ss1.tx = 60 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS mansonia,
			SUM(CASE WHEN ss1.tx = 70 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS aedes,
            SUM(CASE WHEN ss1.tx > 80 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS coquilettidia
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            LEFT JOIN method 
            ON (ed1.me = method.meth_code)
            LEFT JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code)
            LEFT JOIN bodypart 
            ON (ss1.bf = bodypart.body_code) where 1=1 $wherecon GROUP BY MONTH(ed1.dt) ORDER BY MONTH(ed1.dt),taxon.taxon_code ASC ";
   
}

if($q==='three'){
   
   $query="SELECT
            ed1.dt AS DT,
            SUM(CASE WHEN ss1.tx = 1 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_gambiae,
            SUM(CASE WHEN ss1.tx = 2 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_funestus,
			SUM(CASE WHEN ss1.tx = 3 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_coustani,
            SUM(CASE WHEN ss1.tx = 4 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_pharoensis,
            SUM(CASE WHEN ss1.tx = 5 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_squamosus,
            SUM(CASE WHEN ss1.tx = 6 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_maculipalpis,
            SUM(CASE WHEN ss1.tx = 7 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_pretoriensis,
            SUM(CASE WHEN ss1.tx = 8 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_paludis,
            SUM(CASE WHEN ss1.tx = 9 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_wellcomei,
            SUM(CASE WHEN ss1.tx = 10 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_ziemanni,
            SUM(CASE WHEN ss1.tx = 11 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_rufipes,
            SUM(CASE WHEN ss1.tx = 12 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_implexus,
            SUM(CASE WHEN ss1.tx > 70 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS Aedes_sp
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            LEFT JOIN method 
            ON (ed1.me = method.meth_code)
            LEFT JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code)
            LEFT JOIN bodypart 
            ON (ss1.bf = bodypart.body_code) where 1=1 $wherecon GROUP BY ed1.dt";
   
}
if($q==='threec'){
   
   $query="SELECT
            ed1.dt AS DT,
            SUM(CASE WHEN ss1.tx = 50 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS culex,
            SUM(CASE WHEN ss1.tx = 60 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS mansonia,
			SUM(CASE WHEN ss1.tx = 70 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS aedes,
            SUM(CASE WHEN ss1.tx > 80 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS coquilettidia
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            LEFT JOIN method 
            ON (ed1.me = method.meth_code)
            LEFT JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code)
            LEFT JOIN bodypart 
            ON (ss1.bf = bodypart.body_code) where 1=1 $wherecon GROUP BY ed1.dt";
   
}

if($q==='two'){
   
   $query="SELECT
            taxon.taxon_name AS TaxonName,
            SUM(CASE WHEN ss1.sas = 1 
                THEN ss1.n 
                ELSE 0 end) AS TotalMale,
            SUM(CASE WHEN ss1.sas = 2 
                THEN ss1.n 
                ELSE 0 end) AS Unfed,
            SUM(CASE WHEN ss1.sas = 3 
                THEN ss1.n 
                ELSE 0 end) AS PartlyFed,
            SUM(CASE WHEN ss1.sas = 4 
                THEN ss1.n 
                ELSE 0 end) AS Fed,
            SUM(CASE WHEN ss1.sas = 5 
                THEN ss1.n 
                ELSE 0 end) AS Gravid,
            SUM(CASE WHEN (ss1.sas = 6)
                THEN ss1.n 
                ELSE 0 end) AS TotalFemale
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            left JOIN method 
            ON (ed1.me = method.meth_code)
            left JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            left JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code) where 1=1 and ss1.tx < 50 
             $wherecon GROUP BY taxon.taxon_name HAVING TotalFemale > 0 or  TotalMale > 0 ORDER BY ss1.tx ASC";
}
if($q==='twoc'){
   
   $query="SELECT
            taxon.taxon_name AS TaxonName,
            SUM(CASE WHEN ss1.sas = 1 
                THEN ss1.n 
                ELSE 0 end) AS TotalMale,
            SUM(CASE WHEN ss1.sas = 2 
                THEN ss1.n 
                ELSE 0 end) AS Unfed,
            SUM(CASE WHEN ss1.sas = 3 
                THEN ss1.n 
                ELSE 0 end) AS PartlyFed,
            SUM(CASE WHEN ss1.sas = 4 
                THEN ss1.n 
                ELSE 0 end) AS Fed,
            SUM(CASE WHEN ss1.sas = 5 
                THEN ss1.n 
                ELSE 0 end) AS Gravid,
            SUM(CASE WHEN (ss1.sas = 6)
                THEN ss1.n 
                ELSE 0 end) AS TotalFemale
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            left JOIN method 
            ON (ed1.me = method.meth_code)
            left JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            left JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code) where 1=1 and ss1.tx > 49 
             $wherecon GROUP BY taxon.taxon_name HAVING TotalFemale > 0 or  TotalMale > 0 ORDER BY ss1.tx ASC";
}
if($q==='four'){
   
   $query="SELECT
            ed1.ea AS EA,
            SUM(CASE WHEN ss1.tx = 1 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_gambiae,
            SUM(CASE WHEN ss1.tx = 2 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_funestus,
			SUM(CASE WHEN ss1.tx = 3 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_coustani,
            SUM(CASE WHEN ss1.tx = 4 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_pharoensis,
            SUM(CASE WHEN ss1.tx = 5 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_squamosus,
            SUM(CASE WHEN ss1.tx = 6 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_maculipalpis,
            SUM(CASE WHEN ss1.tx = 7 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_pretoriensis,
            SUM(CASE WHEN ss1.tx = 8 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_paludis,
            SUM(CASE WHEN ss1.tx = 9 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_wellcomei,
            SUM(CASE WHEN ss1.tx = 10 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_ziemanni,
            SUM(CASE WHEN ss1.tx = 11 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_rufipes,
            SUM(CASE WHEN ss1.tx = 12 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_implexus,
            SUM(CASE WHEN ss1.tx > 70 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS Aedes_sp
			
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            LEFT JOIN method 
            ON (ed1.me = method.meth_code)
            LEFT JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code)
            LEFT JOIN bodypart 
            ON (ss1.bf = bodypart.body_code) where 1=1 $wherecon GROUP BY EA ORDER BY taxon.taxon_code ASC ";
   
}

if($q==='five'){
   
   $query="SELECT
            SUM(CASE WHEN ss1.sas = 1 THEN ss1.n ELSE 0 end) AS TotalMale,
            SUM(CASE WHEN ss1.sas = 2 THEN ss1.n ELSE 0 end) AS Unfed,
            SUM(CASE WHEN ss1.sas = 3 THEN ss1.n ELSE 0 end) AS PartlyFed,
            SUM(CASE WHEN ss1.sas = 4 THEN ss1.n ELSE 0 end) AS Fed,
            SUM(CASE WHEN ss1.sas = 5 THEN ss1.n ELSE 0 end) AS Gravid
            FROM projectregsite
            INNER JOIN projectreg ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1 ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 ON (ss1.edssid = edss.id)
            LEFT JOIN method ON (ed1.me = method.meth_code)
            LEFT JOIN taxon ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal ON (ss1.sas = sexabdominal.sex_code)
            WHERE 1=1 AND ss1.tx=1 $wherecon GROUP BY taxon.taxon_name ORDER BY taxon.taxon_code ASC; ";
   
}
if($q==='six'){
   
   $query="SELECT
            SUM(CASE WHEN ss1.sas = 1 THEN ss1.n ELSE 0 end) AS TotalMale,
            SUM(CASE WHEN ss1.sas = 2 THEN ss1.n ELSE 0 end) AS Unfed,
            SUM(CASE WHEN ss1.sas = 3 THEN ss1.n ELSE 0 end) AS PartlyFed,
            SUM(CASE WHEN ss1.sas = 4 THEN ss1.n ELSE 0 end) AS Fed,
            SUM(CASE WHEN ss1.sas = 5 THEN ss1.n ELSE 0 end) AS Gravid
            FROM projectregsite
            INNER JOIN projectreg ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1 ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 ON (ss1.edssid = edss.id)
            LEFT JOIN method ON (ed1.me = method.meth_code)
            LEFT JOIN taxon ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal ON (ss1.sas = sexabdominal.sex_code)
            WHERE 1=1 AND ss1.tx=2 $wherecon GROUP BY taxon.taxon_name ORDER BY taxon.taxon_code ASC; ";
   
}

if($q === 'seven'){
	
	$query="SELECT
            CONCAT(YEAR(ed1.dt), ' WK-', WEEK(ed1.dt)) AS weekyear,
			
            SUM(CASE WHEN ss1.tx = 1 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_gambiae,
            SUM(CASE WHEN ss1.tx = 2 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_funestus,
			SUM(CASE WHEN ss1.tx = 3 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_coustani,
            SUM(CASE WHEN ss1.tx = 4 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_pharoensis,
            SUM(CASE WHEN ss1.tx = 5 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_squamosus,
            SUM(CASE WHEN ss1.tx = 6 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_maculipalpis,
            SUM(CASE WHEN ss1.tx = 7 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_pretoriensis,
            SUM(CASE WHEN ss1.tx = 8 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_paludis,
            SUM(CASE WHEN ss1.tx = 9 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_wellcomei,
            SUM(CASE WHEN ss1.tx = 10 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_ziemanni,
            SUM(CASE WHEN ss1.tx = 11 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_rufipes,
            SUM(CASE WHEN ss1.tx = 12 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS An_implexus,
            SUM(CASE WHEN ss1.tx > 70 and (ss1.sas > 1 and ss1.sas < 6)
                THEN ss1.n 
                ELSE 0 end) AS Aedes_sp
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            LEFT JOIN method 
            ON (ed1.me = method.meth_code)
            LEFT JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code)
            LEFT JOIN bodypart 
            ON (ss1.bf = bodypart.body_code) where 1=1 $wherecon GROUP BY weekyear ORDER BY ed1.dt,taxon.taxon_code ASC ";	
	
	
}
if($q === 'sevenc'){
	
	$query="SELECT
            CONCAT(YEAR(ed1.dt), ' WK-', WEEK(ed1.dt)) AS weekyear,
            SUM(CASE WHEN ss1.tx = 50 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS culex,
            SUM(CASE WHEN ss1.tx = 60 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS mansonia,
			SUM(CASE WHEN ss1.tx = 70 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS aedes,
            SUM(CASE WHEN ss1.tx > 80 and (ss1.sas > 1 and ss1.sas < 7)
                THEN ss1.n 
                ELSE 0 end) AS coquilettidia
            FROM
            projectregsite
            INNER JOIN projectreg 
            ON (projectregsite.projectreg_id = projectreg.id)
            INNER JOIN site 
            ON (projectregsite.site_id = site.site_id)
            INNER JOIN ".$prefixtable."ed1 as ed1
            ON (ed1.projectregsite_id = projectregsite.id)
            INNER JOIN ".$prefixtable."edss as edss
            ON (ed1.id = edss.ed1id)
            INNER JOIN ".$prefixtable."ss1 as ss1 
            ON (ss1.edssid = edss.id)
            LEFT JOIN method 
            ON (ed1.me = method.meth_code)
            LEFT JOIN taxon 
            ON (ss1.tx = taxon.taxon_code)
            LEFT JOIN sexabdominal 
            ON (ss1.sas = sexabdominal.sex_code)
            LEFT JOIN bodypart 
            ON (ss1.bf = bodypart.body_code) where 1=1 $wherecon GROUP BY weekyear ORDER BY ed1.dt,taxon.taxon_code ASC ";	
	
	
}

if($q === 'hone'){
    
   $query="SELECT ea, count(*) as frequency FROM ".$prefixtable."ed1 where 1=1 $wherecon GROUP BY ea";   
        
}

if($q === 'htow'){
    
   $query="SELECT cr, count(*) as frequency FROM ".$prefixtable."ed1 where 1=1 $wherecon GROUP BY cr";   
        
}

if($q === 'hthree'){
    
   $query="SELECT cp, count(*) as frequency FROM ".$prefixtable."ed1 where 1=1 $wherecon GROUP BY cp";   
        
}
if($q === 'hfour'){
    
   $query="SELECT me, count(*) as frequency FROM ".$prefixtable."ed1 where 1=1 $wherecon GROUP BY me";   
        
}
if($q === 'hfive'){
    
   $query="SELECT ind, count(*) as frequency FROM ".$prefixtable."ed1 where 1=1 $wherecon GROUP BY ind";   
        
}

//execute query
$result = $db->query($query);
//echo $query;

//loop through the returned data
$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

//free memory associated with result
$result->close();


//now print the data
print json_encode($data); 

