<?php

include_once ('../../includes/load.php');

$limit = $_GET['limit'];
$offset = $_GET['offset'];

//$limit = 5;
//$offset = 20;

$table = "custss";
$table2 = "SS3";

$col = getcolumnname($_SESSION['expcode'], $table, $table2);

$col = renamecolumn($col, "ss1");

if (isset($_GET['search'])){
    $searchText = $_GET['search'];
    $where = "WHERE CONCAT_WS('', $col) LIKE '%".$searchText."%'";

}
else{
    $where = '';
}

$prefixtable = $_SESSION['expcode']."_";

$getcusted = find_by_('custed', 'pc', (int)$_SESSION['expcode']);

$getformtype = $getcusted['ft'];

if ($getformtype == 'ED1')
{
    $ed1 = $prefixtable."ed1";
    $edssid = "edss.ed1id";
}
else if ($getformtype == 'ED2')
{
    $ed1 = $prefixtable."ed2";
    $edssid = "edss.ed2id";
}

//$ed1 = $prefixtable."ed1";
$ss1 = $prefixtable."ss3";
$ss3 = $prefixtable."ss3";
$ss3b = $prefixtable."ss3b";
$edss = $prefixtable."edss";
$ssso = $prefixtable."ssso";
$so1 = $prefixtable."so1_sk";

$ss3view = $prefixtable."ss3_view";



$audit_trail = $prefixtable."audit_trail";

$sql = "SELECT
         site.site_name AS SITENAME
        ,projectreg.pc AS PROJECT_CODE
        ,projectreg.expno AS EXPERIMENT
        ,ss1.id as id ,$col
        
         FROM
        projectregsite
        INNER JOIN projectreg 
        ON (projectregsite.projectreg_id = projectreg.id)
        INNER JOIN site 
        ON (projectregsite.site_id = site.site_id)

        INNER JOIN $ed1 as ed1
        ON (ed1.projectregsite_id = projectregsite.id)
        INNER JOIN ".$prefixtable."edss as edss
        ON (ed1.id = $edssid)
        INNER JOIN $ss3view as ss1 
        ON (ss1.edssid = edss.id)

        LEFT JOIN (
            SELECT * FROM $audit_trail as audit_trail 
             GROUP BY CONCAT(auditsen,':',auditfr)
          ) AS audit ON (ss1.sen = audit.auditsen and ss1.fr = audit.auditfr and audit.auditformtype = 2)
            $where ORDER BY ss1.sen ASC,ss1.fr ASC limit $offset, $limit ";

$sql2 = "SELECT
          site.site_name AS SITENAME
          ,projectreg.pc AS PROJECT_CODE
          ,projectreg.expno AS EXPERIMENT
          ,ss1.id as id ,$col

          FROM
          projectregsite
          INNER JOIN projectreg 
          ON (projectregsite.projectreg_id = projectreg.id)
          INNER JOIN site 
          ON (projectregsite.site_id = site.site_id)
  
          INNER JOIN $ed1 as ed1
          ON (ed1.projectregsite_id = projectregsite.id)
          INNER JOIN ".$prefixtable."edss as edss
          ON (ed1.id = $edssid)
          INNER JOIN $ss3view as ss1 
           ON (ss1.edssid = edss.id)
      
          LEFT JOIN (
              SELECT * FROM $audit_trail as audit_trail 
              GROUP BY CONCAT(auditsen,':',auditfr)
            ) AS audit ON (ss1.sen = audit.auditsen and ss1.fr = audit.auditfr and audit.auditformtype = 2)";


$ss3data = find_by_sql($sql);

$count = find_row_count($sql2);

$test = array(
    'total' => $count,
    'rows' => $ss3data
);

header('Content-Type: application/json');

echo json_encode($test);



?>
