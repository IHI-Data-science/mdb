<?php

include_once('../../includes/load.php');


$limit = $_GET['limit'];
$offset = $_GET['offset'];

// $limit = 100;
// $offset = 20;


$table = "custed";
$table2 ="ED1" ;

$prefixtable = $_SESSION['expcode']."_";

$ed1 = $prefixtable."ed1";
$ss1 = $prefixtable."ss1";
$ss2 = $prefixtable."ss2";
$ss3 = $prefixtable."ss3";
$ss4 = $prefixtable."ss4";
$ss5 = $prefixtable."ss5";
$edss = $prefixtable."edss";
$ssso = $prefixtable."ssso";
$so1 = $prefixtable."so1_sk";

$tablelabel = $prefixtable."custlabel";
$location = $prefixtable."location";
$method = $prefixtable."method";
$cluster = $prefixtable."cluster";
$compound = $prefixtable."compound";
$treatment = $prefixtable."treatment";
$habitattype = $prefixtable."habitattype";
$enumerationarea = $prefixtable."enumerationarea";
$domesticWildanimals = $prefixtable."domesticWildanimals";
$activities = $prefixtable."activities";
$substrate = $prefixtable."substrate";




$audit_trail = $prefixtable."audit_trail";



$fetchfields = $db->query("SELECT * FROM {$db->escape($tablelabel)} WHERE pc='{$db->escape($_SESSION['expcode'])}' AND location='home' LIMIT 1");

   if($db->num_rows($fetchfields) > 0){
    $result = $db->fetch_assoc($fetchfields);
    $checked_fields = explode(",",$result['p_attri']);

  }




$col = getcolumnname($_SESSION['expcode'],$table,$table2);
$arraycol = explode(",",$col);



(in_array("me",$checked_fields) ? $me = true : $me = false);
($me ? $arraycol = str_replace('me', 'method.me', $arraycol) : $arraycol = str_replace('me', 'ed1.me', $arraycol));

(in_array("ind",$checked_fields) ? $ind = true : $ind = false);
($ind ? $arraycol = str_replace('ind', 'location.ind', $arraycol) : $arraycol = str_replace('ind', 'ed1.ind', $arraycol));

(in_array("ea",$checked_fields) ? $ea = true : $ea = false);
($ea ? $arraycol = str_replace('ea', 'enumerationarea.ea', $arraycol) : $arraycol = str_replace('ea', 'ed1.ea', $arraycol));

(in_array("cr",$checked_fields) ? $cr = true : $cr = false);
($cr ? $arraycol = str_replace('cr', 'cluster.cr', $arraycol) : $arraycol = str_replace('cr', 'ed1.cr', $arraycol));

(in_array("cp",$checked_fields) ? $cp = true : $cp = false);
($cp ? $arraycol = str_replace('cp', 'compound.cp', $arraycol) : $arraycol = str_replace('cp', 'ed1.cp', $arraycol));

(in_array("tr",$checked_fields) ? $tr = true : $tr = false);
($tr ? $arraycol = str_replace('tr', 'treatment.tr', $arraycol) : $arraycol = str_replace('tr', 'ed1.tr', $arraycol));

(in_array("htr",$checked_fields) ? $htr = true : $htr = false);
($htr ? $arraycol = str_replace('htr', 'habitattype.htr', $arraycol) : $arraycol = str_replace('htr', 'ed1.htr', $arraycol));

(in_array("wda",$checked_fields) ? $wda = true : $wda = false);
($wda ? $arraycol = str_replace('wda', 'domesticWildAnimals.wda', $arraycol) : $arraycol = str_replace('wda', 'ed1.wda', $arraycol));

(in_array("act",$checked_fields) ? $act = true : $act = false);
($act ? $arraycol = str_replace('act', 'activities.act', $arraycol) : $arraycol = str_replace('act', 'ed1.act', $arraycol));
 
(in_array("su",$checked_fields) ? $su = true : $su = false);
($su ? $arraycol = str_replace('su', 'substrate.su', $arraycol) : $arraycol = str_replace('su', 'ed1.su', $arraycol));

$col = implode(",", $arraycol);

if (strlen($col)>0) {

    if(isset($_GET['search'])){
        $searchText = $_GET['search'];
        $where = "WHERE CONCAT_WS('', $col) LIKE '%".$searchText."%'";
    }else{
     $where='';
 }


 $sql ="SELECT ed1.id as id,$col ,CONCAT(auditsen,':',auditfr) AS keyid FROM $ed1 as ed1  
  LEFT JOIN $location as location on (ed1.ind=location.number)
  LEFT JOIN $method as method on (ed1.me=method.number)
  LEFT JOIN $enumerationarea as enumerationarea on (ed1.ea=enumerationarea.number)
  LEFT JOIN $cluster as cluster on (ed1.cr=cluster.number)
  LEFT JOIN $compound as compound on (ed1.cp=compound.number)
  LEFT JOIN $treatment as treatment on (ed1.tr=treatment.number)
  LEFT JOIN $habitattype as habitattype on (ed1.htr=habitattype.number)
  LEFT JOIN $domesticWildAnimals as domesticWildAnimals on (ed1.wda=domesticWildAnimals.number)
  LEFT JOIN $activities as activities on (ed1.act=activities.number)
  LEFT JOIN $substrate as substrate on (ed1.su=substrate.number)

  LEFT JOIN (
             SELECT * FROM $audit_trail as audit_trail 
             GROUP BY CONCAT(auditsen,':',auditfr)
           ) AS audit ON (ed1.sen = audit.auditsen and ed1.fr = audit.auditfr and audit.auditformtype = 1) ORDER BY ed1.sen ASC, ed1.fr ASC $where limit $offset, $limit ";

 $sql2 ="SELECT ed1.id as id,$col ,CONCAT(auditsen,':',auditfr) AS keyid FROM $ed1 as ed1  
  LEFT JOIN $location as location on (ed1.ind=location.number)
  LEFT JOIN $method as method on (ed1.me=method.number)
  LEFT JOIN $enumerationarea as enumerationarea on (ed1.ea=enumerationarea.number)
  LEFT JOIN $cluster as cluster on (ed1.cr=cluster.number)
  LEFT JOIN $compound as compound on (ed1.cp=compound.number)
  LEFT JOIN $treatment as treatment on (ed1.tr=treatment.number)
  LEFT JOIN $habitattype as habitattype on (ed1.htr=habitattype.number)
  LEFT JOIN $domesticWildAnimals as domesticWildAnimals on (ed1.wda=domesticWildAnimals.number)
  LEFT JOIN $activities as activities on (ed1.act=activities.number)
  LEFT JOIN $substrate as substrate on (ed1.su=substrate.number)
 


  LEFT JOIN (
            SELECT * FROM $audit_trail as audit_trail 
             GROUP BY CONCAT(auditsen,':',auditfr)
          ) AS audit ON (ed1.sen = audit.auditsen and ed1.fr = audit.auditfr and audit.auditformtype = 1) ORDER BY ed1.sen ASC, ed1.fr ASC";



 $ed1data = find_by_sql($sql);

 $count = find_row_count($sql2);

 $res= array('total' => $count,'rows' => $ed1data );

 header('Content-Type: application/json');

 echo json_encode($res);


}


?>