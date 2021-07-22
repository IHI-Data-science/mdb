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
    $ss5 = $prefixtable . "ss5";
   

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

    $ss5colname1 = getcolumnname($_SESSION['expcode'], $custss, substr($ss5, strlen($prefixtable)));
    $ss5colname2 = getcolumnname2($_SESSION['expcode'], $custss, substr($ss5, strlen($prefixtable)));
    $ss5col = changenametolong(substr($ss5, strlen($prefixtable)), $ss3colname1, $ss5colname2);

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


//SS5

if ($type == "15") {

    $query = "SELECT $ss5col FROM $ss5 as ss5 ORDER BY ss5.sen ASC,ss5.fr ASC";

    $result = $db->query($query) or die($db->mysqlierror());

    if (!file_exists("dataset/" . $projectcode)) {
        mkdir("dataset/" . $projectcode, 0777, true);
    }

    $filename = "dataset/" . $projectcode . "/" . $prname . "_SS5.csv";

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

    echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i> Download (SS5)</a>';

}

    //SS3 transpose
    if ($type == "1522") {

        $query = "
		SELECT $ss3bcol,Category,Number_observed
		 FROM " . $prefixtable . "ss3 ss3 INNER JOIN (
			SELECT ss3bb.sen,ss3bb.fr,ss3bb.ssen,ss3bb.sfr,ss3bb.st,ss3bb.dur,
		   cc.Category,
		   case cc.Category
			 when 'Replicate_1' then rep_1
			 when 'Replicate_2' then rep_2
			 when 'Replicate_3' then rep_3
			 when 'Replicate_4' then rep_4
			 when 'Control_1' then cnr_1
			 when 'Control_2' then cnr_2
		   end as Number_observed
		 from " . $prefixtable . "ss3b ss3bb
		 cross join
		 (
		   select 'Replicate_1' as Category
		   union all select 'Replicate_2'
		   union all select 'Replicate_3'
		   union all select 'Replicate_4'
		   union all select 'Control_1'
		   union all select 'Control_2'
		 ) cc

		 ) as ss3b
	       ON ss3.sen=ss3b.sen AND
		      ss3.st=ss3b.st AND
			  ss3.dur=ss3b.dur ORDER BY ss3.sen ASC, ss3.fr ASC,Category ASC";

        $result = $db->query($query) or die($db->mysqlierror());

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_SS3b.csv";

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

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (SS3 Transposed)</a>';
    }

//SO1
    if ($type == "16") {

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
    if ($type == "17") {

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
    if ($type == "18") {

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
    if ($type == "19") {

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
        //call function to transpose
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
		INNER JOIN $ss2 as ss1
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

    //ED2SS3
    if ($type == "1215") {
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


//EDSS5


if ($type == "1115") {
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
    ,$ss5col
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
    INNER JOIN $ss5 as ss1
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

    $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS5.csv";

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

    echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS5)</a>';

}




//EDSS5S01


if ($type == "111517") {

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

    $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS5_SO1.csv";

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

    echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS5_SO1) </a>';


}





//EDSS5S02


if ($type == "111518") {

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
    left JOIN $so2 as so2
    ON (ss1.sen = so2.ssen AND ss1.fr = so2.sfr)
    ORDER BY ed1.sen ASC,ed1.fr ASC";

    $result = $db->query($query) or die(mysqli_error($db));

    if (!file_exists("dataset/" . $projectcode)) {
        mkdir("dataset/" . $projectcode, 0777, true);
    }

    $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS5_SO2.csv";

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

    echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS5_SO2) </a>';

}












    //ED2SS3 Trans
    if ($type == "121522") {
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
			,$ss3bcol,ss3.Category,ss3.Number_observed
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
			LEFT JOIN
			(
				SELECT ss3.edssid,ss3.sen,ss3.fr,ss3.ssen,ss3.sfr,ss3.sd,ss3.dd,ss3.tx,ss3.sas,ss3.mt,ss3.ch,ss3.rep_no,ss3.cnr_no,ss3.exp_tr,ss3.st,ss3.dur,ss3.notes,Category,Number_observed
				FROM " . $prefixtable . "ss3 ss3 INNER JOIN (
					SELECT ss3bb.sen,ss3bb.fr,ss3bb.ssen,ss3bb.sfr,ss3bb.st,ss3bb.dur,
				cc.Category,
				case cc.Category
					when 'Replicate_1' then rep_1
					when 'Replicate_2' then rep_2
					when 'Replicate_3' then rep_3
					when 'Replicate_4' then rep_4
					when 'Control_1' then cnr_1
					when 'Control_2' then cnr_2
				end as Number_observed
				from " . $prefixtable . "ss3b ss3bb
				cross join
				(
				select 'Replicate_1' as Category
				union all select 'Replicate_2'
				union all select 'Replicate_3'
				union all select 'Replicate_4'
				union all select 'Control_1'
				union all select 'Control_2'
				) cc

				) as ss3b
				ON ss3.sen=ss3b.sen AND
					ss3.st=ss3b.st AND
					ss3.dur=ss3b.dur
			) as ss3 on (ss3.edssid = edss.id)
			LEFT JOIN taxon
			ON (ss3.tx = taxon.taxon_code)
			LEFT JOIN sexabdominal
			ON (ss3.sas = sexabdominal.sex_code)
			ORDER BY ss3.sen ASC, ss3.fr ASC,Category ASC";

        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED2_SS3_Transposed.csv";

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

    if ($type == "111316") {

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

    if ($type == "111416") {

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
		ON (ss1.edssid = edss.id)
		left JOIN $so1 as so1
        ON (ss1.sen = so1.ssen AND ss1.fr = so1.sfr)
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

    if ($type == "111516") {

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

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS3_SO1.csv";

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

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS3_SO1)</a>';
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

    if ($type == "111517") {

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

    if ($type == "11131618") {

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

    if ($type == "11151618") {

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

    if ($type == "11131718") {

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

    if ($type == "11131718") {

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

    if ($type == "11131718") {

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

    if ($type == "1113161819") {

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

    if ($type == "11131621") {

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
		,$so1col
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
		INNER JOIN $so1 as so1
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

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i> Download (ED1_SS1_SO1)</a>';

    } //end of report transpose function

    //report of adult mosquitoes transpose taxon
    if ($type == "11131622") {
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
        //call function to transpose
        // Removed body part not on SS1 - SK
        //, bodypart.body_name AS BodyPart, no need to display ss1.fr since it is grouped by ss1.sen
        list($errornum, $columnTranspose) = transposeTaxonSAS("taxon", $projectcode, "ss1");
        if ($errornum == 1) {
            $columnTranspose = $columnTranspose;
        }
        $query = "SELECT
	     @rownum := @rownum + 1 AS ID
		,site.site_name AS Site
		,projectreg.pc AS Project
		,projectreg.expno AS Experiment
		,$edcol
		 $columnTranspose
		,$so1col
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
		LEFT JOIN $ssso as ssso
		ON (ss1.id = ssso.ss1id)
		LEFT JOIN $so1 as so1
		ON (so1.sssoid = ssso.id)

		LEFT JOIN method
		ON (ed1.me = method.meth_code)
		LEFT JOIN taxon
		ON (ss1.tx = taxon.taxon_code)
		LEFT JOIN sexabdominal
		ON (ss1.sas = sexabdominal.sex_code) GROUP BY ID
	             ORDER BY ed1.sen ,ed1.fr ,so1.ssen, so1.rc ASC";
        //echo $query;
        //exit();
        $db->query("SET @rownum := 0;");
        $result = $db->query($query) or die(mysqli_error($db));

        if (!file_exists("dataset/" . $projectcode)) {
            mkdir("dataset/" . $projectcode, 0777, true);
        }

        $filename = "dataset/" . $projectcode . "/" . $prname . "_ED1_SS1_SO1_TaxonTransposed.csv";

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

        echo '<a class="btn btn-primary" href = "' . $filename . '" download>  <i class="fa fa-download"> </i>Download (ED1_SS1_SO1)</a>';
    }

} //end of function report()

//call function report to generate report
report($typereport, $projectcode, $db);
//direct to report page
//echo "<meta http-equiv=\"refresh\" content=\"0; url=report.php\">";
