<?php
include_once 'includes/load.php';

include_once 'scripts/transpose.php';

$projectcode = $_POST["cp"];

$typereport = $_POST["rp"];

//function to generate report
function report($type, $projectcode, $db)
{ //start of report function
    global $db;
    //partialy report of EDSS

    $base_dir = __DIR__; // Absolute path to the installation
    $doc_root = preg_replace("!${_SERVER['SCRIPT_NAME']}$!", '', $_SERVER['SCRIPT_FILENAME']);
    $base_url = preg_replace("!^${doc_root}!", '', $base_dir);

    $prefixtable = $projectcode . "_";

    $custed = "custed";
    $custss = "custss";
    $custso = "custso";
    $custst = "custst";

    $ed1 = $prefixtable . "ed1";
    $ed2 = $prefixtable . "ed2";

    $ss1 = $prefixtable . "ss1";
    $ss2 = $prefixtable . "ss2";
    $ss3 = $prefixtable . "ss3";
	$ss4 = $prefixtable . "ss4";


    $edss = $prefixtable . "edss";
    $ssso = $prefixtable . "ssso";

    $so1 = $prefixtable . "so1";
    $so2 = $prefixtable . "so2";

    $st1 = $prefixtable . "st1";
    $st2 = $prefixtable . "st2";

    $projectname = projectname($projectcode);
    $_SESSION["projectname"] = $projectname;
    $prname = $_SESSION["projectname"];

    $edcolname1 = getcolumnname($_SESSION['expcode'], $custed, substr($ed1, strlen($prefixtable)));
    $edcolname2 = getcolumnname2($_SESSION['expcode'], $custed, substr($ed1, strlen($prefixtable)));
    $edcol = changenametolong(substr($ed1, strlen($prefixtable)), $edcolname1, $edcolname2);

    $ed2colname1 = getcolumnname($_SESSION['expcode'], $custed, substr($ed2, strlen($prefixtable)));
    $ed2colname2 = getcolumnname2($_SESSION['expcode'], $custed, substr($ed2, strlen($prefixtable)));
    $ed2col = changenametolong(substr($ed2, strlen($prefixtable)), $ed2colname1, $ed2colname2);

    $sscolname1 = getcolumnname($_SESSION['expcode'], $custss, substr($ss1, strlen($prefixtable)));
    $sscolname2 = getcolumnname2($_SESSION['expcode'], $custss, substr($ss1, strlen($prefixtable)));
    $sscol = changenametolong(substr($ss1, strlen($prefixtable)), $sscolname1, $sscolname2);

    $ss2colname1 = getcolumnname($_SESSION['expcode'], $custss, substr($ss2, strlen($prefixtable)));
    $ss2colname2 = getcolumnname2($_SESSION['expcode'], $custss, substr($ss2, strlen($prefixtable)));
    $ss2col = changenametolong(substr($ss2, strlen($prefixtable)), $ss2colname1, $ss2colname2);

    $ss3colname1 = getcolumnname($_SESSION['expcode'], $custss, substr($ss3, strlen($prefixtable)));
    $ss3colname2 = getcolumnname2($_SESSION['expcode'], $custss, substr($ss3, strlen($prefixtable)));
    $ss3col = changenametolong(substr($ss3, strlen($prefixtable)), $ss3colname1, $ss3colname2);

	$ss2colname1 = getcolumnname($_SESSION['expcode'], $custss, substr($ss4, strlen($prefixtable)));
    $ss2colname2 = getcolumnname2($_SESSION['expcode'], $custss, substr($ss4, strlen($prefixtable)));
    $ss2col = changenametolong(substr($ss4, strlen($prefixtable)), $ss4colname1, $ss4colname2);

    $socolname1 = getcolumnname($_SESSION['expcode'], $custso, substr($so1, strlen($prefixtable)));
    $socolname2 = getcolumnname2($_SESSION['expcode'], $custso, substr($so1, strlen($prefixtable)));
    $socol = changenametolong(substr($so1, strlen($prefixtable)), $socolname1, $socolname2);

    $so2colname1 = getcolumnname($_SESSION['expcode'], $custso, substr($so2, strlen($prefixtable)));
    $so2colname2 = getcolumnname2($_SESSION['expcode'], $custso, substr($so2, strlen($prefixtable)));
    $so2col = changenametolong(substr($so2, strlen($prefixtable)), $so2colname1, $so2colname2);

    $stcolname1 = getcolumnname($_SESSION['expcode'], $custst, substr($st1, strlen($prefixtable)));
    $stcolname2 = getcolumnname2($_SESSION['expcode'], $custst, substr($st1, strlen($prefixtable)));
    $stcol = changenametolong(substr($st1, strlen($prefixtable)), $stcolname1, $stcolname2);

    $st2colname1 = getcolumnname($_SESSION['expcode'], $custst, substr($st2, strlen($prefixtable)));
    $st2colname2 = getcolumnname2($_SESSION['expcode'], $custst, substr($st2, strlen($prefixtable)));
    $st2col = changenametolong(substr($st2, strlen($prefixtable)), $st2colname1, $st2colname2);

   
    //ED1
    if ($type == "11") {

        $query = "SELECT site.site_name AS Site,projectreg.pc AS Project,projectreg.expno AS Experiment,$edcol
		FROM projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
        ORDER BY ed1.sen ASC,ed1.fr ASC";
        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1)</a>';

    }

//ED2
    if ($type == "12") {

        $query = "SELECT site.site_name AS Site ,projectreg.pc AS Project ,projectreg.expno AS Experiment,$ed2col
		FROM projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed2 as ed2
		ON (ed2.projectregsite_id = projectregsite.id)
        ORDER BY ed2.sen ASC,ed2.fr ASC";
        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED2)</a>';

    }

//SS1
    if ($type == "13") {

        $query = "SELECT $sscol FROM $ss1 as ss1 ORDER BY ss1.sen ASC,ss1.fr ASC";

        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_SS1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i> Download (SS1)</a>';

    }

//SS2
    if ($type == "14") {

        $query = "SELECT $ss2col FROM $ss2 as ss2 ORDER BY ss2.sen ASC,ss2.fr ASC";

        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_SS2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (SS2)</a>';

    }

//SS3
   
if ($type == "25") {

    $query = "SELECT $ss3col FROM $ss3 as ss3 ORDER BY ss3.sen ASC,ss3.fr ASC";

    $result = $db->query($query) or die($db->mysqlierror());

    if (!file_exists("dataset/" . $projectcode)) {
        mkdir("dataset/" . $projectcode, 0777, true);
    }

    $filename = "dataset/" . $projectcode . "/" . $prname . "_SS3.csv";

    $file = fopen($filename, "w") or die("Can't open file $name for writing.");

    $row = mysqli_fetch_assoc($result);
    if ($row) {

        fputcsv($file, array_keys($row));
    }

    while ($row) {

        fputcsv($file, $row);
        $row = mysqli_fetch_assoc($result);
    }

    $gt = $base_url . "/" . $filename;

    echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (SS3)</a>';

}



//ED1SS3


if ($type == "1125") {
    //query to fetch data from custed table for EDs
    $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
    //execute query
    $result = $db->query($query) or die(mysqli_error($db));
    //mysql fetch data from result above
    $row = mysqli_fetch_array($result);
    //remove attribute method
    $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

    //$meth_remove = renamecol($meth_remove2);
    $meth_remove = renamecol($edcol, "ed1", "ED");
    //insert string
    $insert_str = "," . strtolower($row["ft"]) . ".";
    //And table name in first part andinsert table name after commer
    $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);

    $query = "SELECT
     site.site_name AS Site
    ,projectreg.pc AS Project
    ,projectreg.expno AS Experiment
    ,$edcol
    ,$ss3col
    FROM
    projectregsite
    INNER JOIN projectreg
    ON (projectregsite.projectreg_id = projectreg.id)
    INNER JOIN site
    ON (projectregsite.site_id = site.site_id)
    INNER JOIN $ed1 as ed1
    ON (ed1.projectregsite_id = projectregsite.id)
    INNER JOIN $edss as edss
    ON (ed1.id = edss.ed1id)
    INNER JOIN $ss3 as ss3
    ON (ss3.edssid = edss.id)
    LEFT JOIN method
    ON (ed1.me = method.meth_code)
    LEFT JOIN taxon
    ON (ss3.tx = taxon.taxon_code)
    ORDER BY ed1.sen ASC, ed1.fr ASC";
    $result = $db->query($query) or die(mysqli_error($db));

    if (!file_exists("dataset/" . $projectcode)) {
        mkdir("dataset/" . $projectcode, 0777, true);
    }

    $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS3.csv";

    $file = fopen($filename, "w") or die("Can't open file $name for writing.");

    $row = mysqli_fetch_assoc($result);
    if ($row) {

        fputcsv($file, array_keys($row));
    }

    while ($row) {

        fputcsv($file, $row);
        $row = mysqli_fetch_assoc($result);
    }

    $gt = $base_url . "/" . $filename;

    echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS3)</a>';

}
 //ENDED1SS3






    //ED2SS3
    if ($type == "1225") {
        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED2'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);

        $query = "SELECT
		site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$ed2col
		,$ss3col
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed2 as ed2
		ON (ed2.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed2.id = edss.ed2id)
		INNER JOIN $ss3view as ss3
		ON (ss3.edssid = edss.id)
		LEFT JOIN taxon
		ON (ss3.tx = taxon.taxon_code)
		LEFT JOIN sexabdominal
		ON (ss3.sas = sexabdominal.sex_code)
	    ORDER BY ed2.sen ASC,ed2.fr ASC";
        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED2_SS3.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED2_SS3)</a>';

    }


//EDSS3


















	// ss4

	if ($type == "16") {

        $query = "SELECT $ss4col FROM $ss4 as ss4 ORDER BY ss4.sen ASC,ss4.fr ASC";

        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_SS4.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (SS4)</a>';

    }

	


//SO1
    if ($type == "17") {

        $query = "SELECT $socol FROM $so1 as so1 ORDER BY so1.sen ASC,so1.fr ASC";

        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_SO1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (SO1)</a>';

    }

//SO2
    if ($type == "18") {

        $query = "SELECT $so2col FROM $so2 as so2 ORDER BY so2.sen ASC,so2.fr ASC";

        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_SO2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (SO2)</a>';

    }

//ST1
    if ($type == "19") {

        $query = "SELECT $stcol FROM $st1 as st1 ORDER BY st1.sen ASC,st1.fr ASC";

        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ST1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ST1)</a>';

    }

//ST2
    if ($type == "20") {

        $query = "SELECT $st2col FROM $st2 as st2 ORDER BY st2.sen ASC,st2.fr ASC";

        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ST2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ST2)</a>';

    }

    if ($type == "111322") {
        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        //call function to 
        // Removed body part not on SS1 - SK
        //, bodypart.body_name AS BodyPart, no need to display ss1.fr since it is grouped by ss1.sen
        list($errornum, $columnTranspose) = transposeTaxonSAS("taxon", $projectcode, "ss1");
        if ($errornum == 1) {
            $columnTranspose = $columnTranspose;
        }
        $query = "SELECT
	     site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		$columnTranspose
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		LEFT JOIN method
		ON (ed1.me = method.meth_code)
		LEFT JOIN taxon
		ON (ss1.tx = taxon.taxon_code)
		LEFT JOIN sexabdominal
		ON (ss1.sas = sexabdominal.sex_code) GROUP BY ed1.dsen
	    ORDER BY ed1.sen ASC ,ed1.fr ASC";
        //echo $query;
        //exit();
        //    $db->query("SET @rownum := 0;");
        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_TaxonTransposed.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i> Download (ED1_SS1) </a>';

    }

    if ($type == "1113") {
        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);

        $query = "SELECT
	     site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$sscol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		LEFT JOIN method
		ON (ed1.me = method.meth_code)
		LEFT JOIN taxon
		ON (ss1.tx = taxon.taxon_code)
		LEFT JOIN sexabdominal
		ON (ss1.sas = sexabdominal.sex_code)
		ORDER BY ed1.sen ASC, ed1.fr ASC";
        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }
        //
        // output data rows (if atleast one row exists)
        //
        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        //echo $gt;

        //echo '<p><input type="button" name="Back" value="Back" onclick="window.location ='.$filename.'" /></p>';

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS1)</a>';

    }

    if ($type == "1114") {
        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);

        $query = "SELECT
	     site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss2col
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss2 as ss2
		ON (ss2.edssid = edss.id)
		LEFT JOIN method
		ON (ed1.me = method.meth_code)
		LEFT JOIN taxon
		ON (ss2.tx = taxon.taxon_code)
		ORDER BY ed1.sen ASC, ed1.fr ASC";
        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS2)</a>';


    }

// ED1SS4
if ($type == "1116") {
	//query to fetch data from custed table for EDs
	$query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
	//execute query
	$result = $db->query($query) or die(mysqli_error($db));
	//mysql fetch data from result above
	$row = mysqli_fetch_array($result);
	//remove attribute method
	$meth_remove2 = str_replace("me,", "", $row["p_attri"]);

	//$meth_remove = renamecol($meth_remove2);
	$meth_remove = renamecol($edcol, "ed1", "ED");
	//insert string
	$insert_str = "," . strtolower($row["ft"]) . ".";
	//And table name in first part andinsert table name after commer
	$insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);

	$query = "SELECT
	 site.site_name AS Site
	,projectreg.pc AS Project
	,projectreg.expno AS Experiment
	,$edcol
	,$ss4col
	FROM
	projectregsite
	INNER JOIN projectreg
	ON (projectregsite.projectreg_id = projectreg.id)
	INNER JOIN site
	ON (projectregsite.site_id = site.site_id)
	INNER JOIN $ed1 as ed1
	ON (ed1.projectregsite_id = projectregsite.id)
	INNER JOIN $edss as edss
	ON (ed1.id = edss.ed1id)
	INNER JOIN $ss4 as ss1
	ON (ss4.edssid = edss.id)
	LEFT JOIN method
	ON (ed1.me = method.meth_code)
	ORDER BY ed1.sen ASC, ed1.fr ASC";
	$result = $db->query($query) or die(mysqli_error($db));

	if (!file_exists("dataset/" . $projectcode)) {
		mkdir("dataset/" . $projectcode, 0777, true);
	}

	$filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS4.csv";

	$file = fopen($filename, "w") or die("Can't open file $name for writing.");

	$row = mysqli_fetch_assoc($result);
	if ($row) {

		fputcsv($file, array_keys($row));
	}

	while ($row) {

		fputcsv($file, $row);
		$row = mysqli_fetch_assoc($result);
	}

	$gt = $base_url . "/" . $filename;

	echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS4)</a>';

}

   

   

    if ($type == "111317") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$sscol
		,$socol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_SO1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS1_SO1) </a>';

    }

    if ($type == "111417") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss2col
		,$socol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss2 as ss1
		ON (ss2.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss2.sen = so1.ssen AND ss2.fr = so1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS2_SO1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS2_SO1)</a>';

    }


	//ED1SS3SO1
    if ($type == "112517") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss3col
		,$socol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss2 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }
        $ss3query = "SELECT *  FROM custss  WHERE pc=$projectcode AND ft='ss3'";
        //execute query 
        $ss3result = $db->query($ss3query);
        //detect number of row from query execute above
        $ss3num_row = mysqli_num_rows($ss3result);
        if($ss3num_row == 1)
        {
            //fetch data from query executed above
            $ss3row = mysqli_fetch_array($ss3result);

               //remove attribute method
		    $ssen_remove = str_replace("ssen,","",$ss3row["p_attri"]);

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS3_SO1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {
          //  $_SESSION["SESS_P_ATTRIss3"] = $ssen_remove; 
            $ss3col2 =  $ssen_remove;  

            $ss3col =  renamecolss3($ss3col2,"ss1","SS");

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS3_SO1)</a>';
    }


//ED1SS4SO1

if ($type == "111617") {

	//query to fetch data from custed table for EDs
	$query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
	//execute query
	$result = $db->query($query) or die(mysqli_error($db));
	//mysql fetch data from result above
	$row = mysqli_fetch_array($result);
	//remove attribute method
	$meth_remove2 = str_replace("me,", "", $row["p_attri"]);

	//$meth_remove = renamecol($meth_remove2);
	$meth_remove = renamecol($edcol, "ed1", "ED");
	//insert string
	$insert_str = "," . strtolower($row["ft"]) . ".";
	//And table name in first part andinsert table name after commer
	$insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
	$query = "SELECT
	 site.site_name AS Site
	,projectreg.pc AS Project
	,projectreg.expno AS Experiment
	,$edcol
	,$ss4col
	,$socol
	FROM
	projectregsite
	INNER JOIN projectreg
	ON (projectregsite.projectreg_id = projectreg.id)
	INNER JOIN site
	ON (projectregsite.site_id = site.site_id)
	INNER JOIN $ed1 as ed1
	ON (ed1.projectregsite_id = projectregsite.id)
	INNER JOIN $edss as edss
	ON (ed1.id = edss.ed1id)
	INNER JOIN $ss4 as ss1
	ON (ss4.edssid = edss.id)
	left JOIN $so1 as so1
	ON (ss4.sen = so1.ssen AND ss4.fr = so1.sfr)
	ORDER BY ed1.sen ASC,ed1.fr ASC";

	$result = $db->query($query) or die(mysqli_error($db));

	if (!file_exists("dataset/" . $projectcode)) {
		mkdir("dataset/" . $projectcode, 0777, true);
	}

	$filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS4_SO1.csv";

	$file = fopen($filename, "w") or die("Can't open file $name for writing.");
           
          //  $_SESSION["SESS_P_ATTRIss3"] = $ssen_remove; 
            $ss1col2 =  $ss1ssen_remove;  

	$row = mysqli_fetch_assoc($result);
	if ($row) {

		fputcsv($file, array_keys($row));
	}

	while ($row) {

		fputcsv($file, $row);
		$row = mysqli_fetch_assoc($result);
	}

	$gt = $base_url . "/" . $filename;

	echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS2_SO1)</a>';

}




    if ($type == "111318") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$sscol
		,$so2col
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_SO2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS1_SO2)</a>';

    }

    if ($type == "111418") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss2col
		,$so2col
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss2 as ss1
		ON (ss2.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss2.sen = so1.ssen AND ss2.fr = so1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS2_SO2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS2_SO2)</a>';

    }


	//ED1SS3SO2
    if ($type == "112518") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss3col
		,$so2col
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss2 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS3_SO2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i> Download (ED1_SS3_SO2)</a>';
    }

	//EDSS4SO2

	if ($type == "111618") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss4col
		,$socol
		, method.meth_abbre AS ME
		,$ss3col
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss4 as ss1
		ON (ss4.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss4.sen = so1.ssen AND ss4.fr = so1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";
		$result = $db->query($query ) or die( mysqli_error( $db ) );
		//
		// send response headers to the browser
		// following headers instruct the browser to treat the data as a csv file called EDSS_partialy.csv
		//
		/*header('Content-Description: File Transfer');
		header( 'Content-Type: text/csv' );
		header( 'Content-Disposition: attachment;filename='.$prname.'_ED1_SS3.csv' );
		header('Content-Transfer-Encoding: binary');
		header('Expires: 0');
		header('Cache-Control:must-revalidate, post-check=0, pre-check=0');
		header('Pragma: public'); */
		

		if (!file_exists("dataset/".$projectcode)) {
		    mkdir("dataset/".$projectcode, 0777, true);
		}

		$filename = "dataset/".$projectcode."/".$prname."_ED1_SS3.csv";


		$file = fopen($filename,"w") or die("Can't open file $name for writing.");


		$row = mysqli_fetch_assoc( $result );
		if ( $row )
		{
		//echocsv( array_keys( $row ) );
		fputcsv($file, array_keys( $row ));
		}
		//
		// output data rows (if atleast one row exists)
		//
		while ( $row )
		{
		//echocsv( $row );
		fputcsv($file, $row);
		$row = mysqli_fetch_assoc( $result );
		}

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS4_SO2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS2_SO1)</a>';

    }

    if ($type == "11131719") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$sscol
		,$socol
		,$stcol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
        left JOIN $st1 as st1
        ON (ss1.sen = st1.ssen AND ss1.fr = st1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_SO1_ST1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS1_SO1_ST1)</a>';

    }

    if ($type == "11141618") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss2col
		,$socol
		,$stcol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss2 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
        left JOIN $st1 as st1
        ON (ss1.sen = st1.ssen AND ss1.fr = st1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS2_SO1_ST1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download(ED1_SS2_SO1_ST1)</a>';

    }
	//ED1SS3SO1ST1

    if ($type == "11251719") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss3col
		,$socol
		,$stcol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss3 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
        left JOIN $st1 as st1
        ON (ss1.sen = st1.ssen AND ss1.fr = st1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS3_SO1_ST1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS3_SO1_ST1)</a>';

    }

    if ($type == "11131819") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$sscol
		,$so2col
		,$stcol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so2 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
        left JOIN $st1 as st1
        ON (ss1.sen = st1.ssen AND ss1.fr = st1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_SO2_ST1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS1_SO2_ST1)</a>';

    }

    if ($type == "11131819") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$sscol
		,$so2col
		,$stcol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so2 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
        left JOIN $st1 as st1
        ON (ss1.sen = st1.ssen AND ss1.fr = st1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_SO2_ST1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i> Download (ED1_SS1_SO2_ST1)</a>';

    }

    if ($type == "11131819") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$sscol
		,$so2col
		,$stcol
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so2 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
        left JOIN $st1 as st1
        ON (ss1.sen = st1.ssen AND ss1.fr = st1.sfr)
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_SO2_ST1.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i> Download (ED1_SS1_SO2_ST1)</a>';

    }

    if ($type == "1113171920") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$sscol
		,$socol
		,$stcol
		,$st2col
		FROM
		projectregsite
		INNER JOIN projectreg
		ON (projectregsite.projectreg_id = projectreg.id)
		INNER JOIN site
		ON (projectregsite.site_id = site.site_id)
		INNER JOIN $ed1 as ed1
		ON (ed1.projectregsite_id = projectregsite.id)
		INNER JOIN $edss as edss
		ON (ed1.id = edss.ed1id)
		INNER JOIN $ss1 as ss1
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
        left JOIN $st1 as st1
        ON (ss1.sen = st1.ssen AND ss1.fr = st1.sfr)
        left JOIN $st2 as st2
        ON (so1.sen = st2.ssen )
	    ORDER BY ed1.sen ASC,ed1.fr ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_SO1_ST1_ST2.csv";

        $file = fopen($filename, "w") or die("Can't open file $name for writing.");

        $row = mysqli_fetch_assoc($result);
        if ($row) {

            fputcsv($file, array_keys($row));
        }

        while ($row) {

            fputcsv($file, $row);
            $row = mysqli_fetch_assoc($result);
        }

        $gt = $base_url . "/" . $filename;

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i> Download (ED1_SS1_SO1_ST1_ST2)</a>';

    }

    if ($type == "11131721") {

        //query to fetch data from custed table for EDs
        $query = "SELECT ft, p_attri FROM custed WHERE pc='$projectcode' AND ft='ED1'";
        //execute query
        $result = $db->query($query) or die(mysqli_error($db));
        //mysql fetch data from result above
        $row = mysqli_fetch_array($result);
        //remove attribute method
        $meth_remove2 = str_replace("me,", "", $row["p_attri"]);

        //$meth_remove = renamecol($meth_remove2);
        $meth_remove = renamecol($edcol, "ed1", "ED");
        //insert string
        $insert_str = "," . strtolower($row["ft"]) . ".";
        //And table name in first part andinsert table name after commer
        $insert_tb = strtolower($row["ft"]) . "." . str_replace(",", $insert_str, $meth_remove);
        $query = "SELECT
		 site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		,$ss1col
	
	}
