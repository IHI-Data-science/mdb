<?php

/**
 * Created by Dickson Msaky @ Ifakara Health Insitute (2018).
 **/

require_once 'includes/load.php';
page_require_level(3);

$page_title='Home';
include_once 'layouts/head.php';

if(isset($_SESSION['expcode'])){
   
   $prefixtable=$_SESSION['expcode'].'_';
   
   $ednumrows=mysqli_num_rows($edresult);
   $ssnumrows=mysqli_num_rows($ssresult);
   $sonumrows=mysqli_num_rows($soresult);
   $stnumrows=mysqli_num_rows($stresult);
   
   if ($ednumrows == 0) {$ednumrows = 0;}
   if ($ssnumrows == 0) {$ssnumrows = 0;}
   if ($sonumrows == 0) {$sonumrows = 0;}
   if ($stnumrows == 0) {$stnumrows = 0;}
   
   $total=$ednumrows+$ssnumrows+$sonumrows+$stnumrows;
   
   //time sub
   $qtodaye=$db->query("SELECT DATE(created_at) FROM $ed WHERE DATE(created_at) = DATE(NOW())");
   $qweeke =$db->query("SELECT DATE(created_at) FROM $ed WHERE WEEKOFYEAR(created_at) = WEEKOFYEAR(NOW())");
   $qmonthe=$db->query("SELECT DATE(created_at) FROM $ed WHERE MONTH(created_at) = MONTH(NOW())");
   
   $qtodays=$db->query("SELECT DATE(created_at) FROM $ss WHERE DATE(created_at) = DATE(NOW())");
   $qweeks =$db->query("SELECT DATE(created_at) FROM $ss WHERE WEEKOFYEAR(created_at) = WEEKOFYEAR(NOW())");
   $qmonths=$db->query("SELECT DATE(created_at) FROM $ss WHERE MONTH(created_at) = MONTH(NOW())");
   
   $tenumrows=mysqli_num_rows($qtodaye);
   $wenumrows=mysqli_num_rows($qweeke);
   $menumrows=mysqli_num_rows($qmonthe);
   
   $tsnumrows=mysqli_num_rows($qtodays);
   $wsnumrows=mysqli_num_rows($qweeks);
   $msnumrows=mysqli_num_rows($qmonths);
   
   $today=$tenumrows+$tsnumrows;
   $week =$wenumrows+$wsnumrows;
   $month=$menumrows+$msnumrows;
   
} else{
   $ednumrows=0;
   $ssnumrows=0;
   $sonumrows=0;
   $stnumrows=0;
   
   $today=0;
   $week =0;
   $month=0;
   $total=0;
}

//Customize graphs

/*$location='home';

if(isset($_SESSION['expcode'])){
   $table=$prefixtable.'custgraph';
   
   //fetchcheckedvalues
   $fetchfields=$db->query("SELECT * FROM {$db->escape($table)} WHERE pc='{$db->escape($_SESSION['expcode'])}' AND location='{$location}' LIMIT 1");
   
   if($db->num_rows($fetchfields)>0){
      $result        =$db->fetch_assoc($fetchfields);
      $checked_fields=explode(',', $result['p_attri']);
   }
} */

?>

<script type="text/javascript">

    $(document).ready(function () {
        $('#drange').daterangepicker();
    });

</script>

<!-- Page content -->
<div class="page-content">
    
    <!-- Page title -->
    <div class="page-title">
        <h5><i class="fa fa-bars"></i> Home
            <small>Welcome, <?php echo $name; ?> </small>
        </h5>
    </div>
    
    
    <!-- /page title -->
   <?php echo display_msg_popup($msg); ?>
    
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h6 class="panel-title">Dataset Summary For:
                <span id="pname"></span></h6>
            <div class="btn-group pull-right">
               
               <?php include_once 'scripts/selectproject.php'; ?>
            
            </div>
        </div>
    </div>
    
    
    <div class="row">
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box tooltip-wrapper">
                <span class="info-box-icon bg-aqua"></span>
                <div class="info-box-content">
                    
                    <span class="info-box-number"><?php echo $today; ?></span>
                    <span class="info-box-text">Submitted Today</span>
                    <div class="tooltip-content">Sum of submitted data points</div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box tooltip-wrapper">
                <span class="info-box-icon bg-aqua"></span>
                <div class="info-box-content">
                    
                    <span class="info-box-number"><?php echo $week; ?></span>
                    <span class="info-box-text">Submitted this week</span>
                    <div class="tooltip-content">Sum of submitted data points</div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box tooltip-wrapper">
                <span class="info-box-icon bg-aqua"></span>
                <div class="info-box-content">
                    
                    <span class="info-box-number"><?php echo $month; ?></span>
                    <span class="info-box-text">Submitted this month</span>
                    <div class="tooltip-content">Sum of submitted data points</div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box tooltip-wrapper">
                <span class="info-box-icon bg-aqua"></span>
                <div class="info-box-content">
                    
                    <span class="info-box-number"><?php echo $total; ?></span>
                    <span class="info-box-text">Total Submitted</span>
                    <div class="tooltip-content">Sum of submitted data points</div>
                </div>
            </div>
        </div>
    
    
    </div>
    
    
    <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box tooltip-wrapper">
                <span class="info-box-icon bg-aqua"></span>
                <div class="info-box-content">
                    
                    <span class="info-box-number"><?php echo $ednumrows; ?></span>
                    <span class="info-box-text">Experimental Design</span>
                    <div class="tooltip-content">Sum of submitted data points</div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box tooltip-wrapper">
                <span class="info-box-icon bg-aqua"></span>
                <div class="info-box-content">
                    
                    <span class="info-box-number"><?php echo $ssnumrows; ?></span>
                    <span class="info-box-text">Sample Sorting</span>
                    <div class="tooltip-content">Sum of submitted data points</div>
                </div>
            </div>
        </div>
        
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box tooltip-wrapper">
                <span class="info-box-icon bg-aqua"></i></span>
                <div class="info-box-content">
                    
                    <span class="info-box-number"><?php echo $sonumrows; ?></span>
                    <span class="info-box-text">Sample Observation</span>
                    <div class="tooltip-content">Sum of submitted data points</div>
                </div>
            </div>
        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box tooltip-wrapper">
                <span class="info-box-icon bg-aqua"></span>
                <div class="info-box-content">
                    
                    <span class="info-box-number"><?php echo $stnumrows; ?></span>
                    <span class="info-box-text">Sample Storage</span>
                    <div class="tooltip-content">Sum of submitted data points</div>
                </div>
            </div>
        </div>
        
        <br/> <br/>
        
        <div class="row">
            <div class="col-md-6">
                <h2>Date Filter</h2>
                
                <form role="form" method="post" action="" id="filterhome"
                      name="filterhome">
                    <button type="submit" id="filterh" name="filterh"
                            class="btn btn-primary" style="float: right">Apply
                                                                         Filter
                    </button>
                    <div style="overflow: hidden; padding-right: .3em;">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <!-- Form -->
                            <input name="drange" id="drange" type="text" class="form-control"
                                   value="<?php echo $_SESSION['hdaterange']; ?>">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
        <br/>
        
        
        <!-- chart -->
       <?php
       
       $col=<<< EOT
        <div class="panel panel-default">
            <div class="panel-heading">
                <h6 class="panel-title">Mosquito Population Summary</h6>
            </div>
            <div class="has-padding2">
                <div class="table-responsive has-padding2">
                     <div id="tblhome">
			<div id="load3"></div>
		    </div>
                </div>
            </div>
        </div>
EOT;

$col2=<<< EOT
<div class="panel panel-default">
    <div class="panel-heading">
        <h6 class="panel-title">Larvae Population Summary</h6>
    </div>
    <div class="has-padding2">
        <div class="table-responsive has-padding2">
             <div id="tblhomes">
    <div id="load3"></div>
    </div>
        </div>
    </div>
</div>
EOT;
       
       if(in_array("ED1", $edformtype)){
          echo $col;
       }

        if(in_array("ED1", $edformtype)){
        echo $col2;
     }
       
       include_once 'layouts/foot.php';
       ?>
