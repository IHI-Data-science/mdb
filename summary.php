<?php

/**
 * Created by Dickson Msaky @ Ifakara Health Insitute (2018)
 **/

require_once('includes/load.php');
$page_title='Summary';
page_require_level(3);
include_once('layouts/head.php');


if(isset($_SESSION['expcode'])){
   
   //filter fields
   if(in_array("ED1", $edformtype)){
      $eas =find_all_distinct($ed, "ea");
      $inds=find_all_distinct($ed, "ind");
      $mes =find_all_distinct($ed, "me");
      $hts =find_all_distinct($ed, "ht");
      $trs =find_all_distinct($ed, "tr");
      $vcs =find_all_distinct($ed, "vc");
   }else if(in_array("ED2", $edformtype)){
      $trs =find_all_distinct($ed, "tr");
   }
}

?>

<!-- Page content -->
<div class="page-content">
    <!-- Page title -->
    <div class="page-title">
        <h5><i class="fa fa-bars"></i> Home
            <small>Welcome, <?php echo $name; ?> </small>
        </h5>
    </div>
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h6 class="panel-title"> Data Summary For:
                        <span id="pname"></span></h6>
                    <div class="btn-group pull-right">
                       <?php include_once('scripts/selectproject.php'); ?>
                    </div>
                </div>
            </div>
        
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <!-- filter -->
                    <div class="">
                        <form role="form" method="post" action="" id="filterform" name="filterform">
                            <div class="row">
                                <div class="top10 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-6">
                                    <br />
                                    <p><code>Method (ME):</code></p>
                                    <select class="select-full" name="me" id="me">
                                        <option value="">Select</option>
                                       <?php
                                       if(count($mes)>0){
                                          foreach($mes as $me):
                                             $selected=($_SESSION['me']==$me['me']) ? ' selected="selected"' : '';
                                             echo '<option '.$selected.' value="'.$me['me'].'" >'.labelvalue($method, "me", $me['me']).'</option>';
                                          endforeach;
                                       } else{
                                          echo '<option value="">No options available</option>';
                                       }
                                       
                                       ?>
                                    </select>
                                </div>
                                
                                <div class="top10 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-6">
                                    <br />
                                    <p><code>Location (IND):</code></p>
                                    <select class="select-full" name="ind" id="ind">
                                        <option value="">Select</option>
                                       <?php
                                       if(count($inds)>0){
                                          foreach($inds as $ind):
                                             $selected=($_SESSION['ind']==$ind['ind']) ? ' selected="selected"' : '';
                                             echo '<option '.$selected.' value="'.$ind['ind'].'" >'.labelvalue($tableind, "ind", $ind['ind']).'</option>';
                                          endforeach;
                                       } else{
                                          echo '<option value="">No options available</option>';
                                       }
                                       
                                       ?>
                                    </select>
                                </div>
                                
                                
                                <div class="top10 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-6">
                                    <br />
                                    <p><code>Date</code></p>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="daterange" id="daterange" type="text" class="form-control" placeholder="Date" value="<?php echo $_SESSION['daterange']; ?>">
                                    </div>
                                
                                </div>
                                
                                <div class="top10 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-6">
                                    <br />
                                    <p><code>Enumeration Area (EA):</code></p>
                                    <select class="select-full" name="ea" id="ea">
                                        <option value="">Select</option>
                                       <?php
                                       if(count($eas)>0){
                                          foreach($eas as $ea):
                                             $selected=($_SESSION['ea']==$ea['ea']) ? ' selected="selected"' : '';
                                             echo '<option '.$selected.' value="'.$ea['ea'].'" >'.labelvalue($enumerationarea, "ea", $ea['ea']).'</option>';
                                          endforeach;
                                       } else{
                                          echo '<option value="">No options available</option>';
                                       }
                                       
                                       ?>
                                    </select>
                                
                                </div>
                            
                            
                            </div>
                            
                            <div class="row">
                                <div class="top10 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-6">
                                    <br />
                                    <p><code>Habitat type (HT):</code></p>
                                    <select class="select-full" name="ea" id="ea">
                                        <option value="">Select</option>
                                       <?php
                                       if(count($hts)>0){
                                          foreach($hts as $ht):
                                             $selected=($_SESSION['ht']==$ht['ht']) ? ' selected="selected"' : '';
                                             echo '<option '.$selected.' value="'.$ht['ht'].'" >'.labelvalue($habitattype, "ht", $ht['ht']).'</option>';
                                          endforeach;
                                       } else{
                                          echo '<option value="">No options available</option>';
                                       }
                                       ?>
                                    </select>
                                </div>
                                
                                <div class="top10 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-6">
                                    <br />
                                    <p><code>Treatment (TR):</code></p>
                                    <select class="select-full" name="ea" id="ea">
                                        <option value="">Select</option>
                                       <?php
                                       if(count($trs)>0){
                                          foreach($trs as $tr):
                                             $selected=($_SESSION['tr']==$tr['tr']) ? ' selected="selected"' : '';
                                             echo '<option '.$selected.' value="'.$tr['tr'].'" >'.labelvalue($treatment, "tr", $tr['tr']).'</option>';
                                          endforeach;
                                       } else{
                                          echo '<option value="">No options available</option>';
                                       }
                                       ?>
                                    </select>
                                </div>
                            
                            
                            </div>
                            
                            
                            <br/>
                            <input type="hidden" name="action" id="action" value="">
                            <button type="submit" name="filter" id="filter" class="btn btn-primary btn-lg btn-flat ">Apply Filter<i class="glyphicon glyphicon-filter"> </i>
                            </button>
                            <button type="submit" name="filterclear" id="filterclear" class="btn btn-default btn-lg btn-flat ">Clear</button>
                    
                    
                      </div>
                    </form>
                    <!-- filter -->
                </div>
            </div>
        
        </div>
    </div>
    
    <!-- charts -->
    <div class="panel panel-default">
        <div class="panel-heading"><h6 class="panel-title">Data Summary</h6>
        </div>
        <div class="has-padding">
            
            <div class="row">
                <div class="col-md-6">
                    <ul class="nav nav-list">
                        <li class="nav-header">Summary Graphs</li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#sumchart1">Anopheline Mosquito Population Summary </a>
                        </li>
						<li>
                            <a data-toggle="modal" role="button" data-target="#sumchart1c">Culicine Mosquito Population Summary </a>
                        </li>
						<li>
                            <a data-toggle="modal" role="button" data-target="#sumchart3">Anopheline Female Mosquito Caught - Daily  </a>
                        </li>
						<li>
                            <a data-toggle="modal" role="button" data-target="#sumchart22">Anopheline Female Mosquito Caught - Weekly  </a>
                        </li>
						 <li>
                            <a data-toggle="modal" role="button" data-target="#sumchart2">Anopheline Female Mosquito Caught - Monthly </a>
                        </li>
						 <li>
                            <a data-toggle="modal" role="button" data-target="#sumchart3c">Culicine  Female Mosquito Caught - Daily  </a>
                        </li>
						<li>
                            <a data-toggle="modal" role="button" data-target="#sumchart22c">Culicine  Female Mosquito Caught - Weekly  </a>
                        </li>                        
						<li>
                            <a data-toggle="modal" role="button" data-target="#sumchart2c">Culicine  Female Mosquito Caught - Monthly  </a>
                        </li>						                     
                        <li>
                            <a data-toggle="modal" role="button" data-target="#sumchart4">Mosquito Population Summary by site </a>
                        </li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#sumchart5"> An. gambiae s.l abdominal status </a>
                        </li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#sumchart6">An. funestus abdominal status</a>
                        </li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#sumchart8">Pupae density</a>
                        </li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#sumchart9">Larvae density</a>
                        </li>
                    </ul>
                </div>
                
                <div class="col-md-6">
                    <ul class="nav nav-list">
                        <li class="nav-header">Frequency Graphs</li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#freqchart1">Enumeration area</a>
                        </li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#freqchart2">Method</a>
                        </li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#freqchart3">Cluster</a>
                        </li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#freqchart4">Compound or plot</a>
                        </li>
                      
                        <li>
                            <a data-toggle="modal" role="button" data-target="#freqchart5">Location</a>
                        </li>
                        <li>
                            <a data-toggle="modal" role="button" data-target="#freqchart6">Treatment</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--  charts -->
    
    <!-- modal1 -->
    <div id="sumchart1" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Anopheline Mosquito Population Summary</h5>
                </div>
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab21">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab22">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab21" class="tab-pane fade active in">
                            <div id="load2"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default" value="Bar" onClick="f2req('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f2req('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f2req('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f2req('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas2" class="chart1"></canvas>
                            <canvas id="canvas2l" class="chart1"></canvas>
                            <canvas id="canvas2p" class="chart1"></canvas>
                            <canvas id="canvas2d" class="chart1"></canvas>
                        
                        </div>
                        <div id="tab22" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl2"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal1 -->
	
	<!-- modal1c -->
    <div id="sumchart1c" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Culicine Mosquito Population Summary</h5>
                </div>
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab21c">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab22c">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab21c" class="tab-pane fade active in">
                            <div id="load2"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default" value="Bar" onClick="f2reqc('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f2reqc('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f2reqc('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f2reqc('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas2c" class="chart1"></canvas>
                            <canvas id="canvas2lc" class="chart1"></canvas>
                            <canvas id="canvas2pc" class="chart1"></canvas>
                            <canvas id="canvas2dc" class="chart1"></canvas>
                        
                        </div>
                        <div id="tab22c" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl2c"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal1 -->
    
    <!-- modal2 -->
    <div id="sumchart2" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Monthly Anopheline Female Mosquito Caught</h5>
                </div>
                
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tabm21">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tabm22">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tabm21" class="tab-pane fade active in">
                            <div id="load1"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default " value="Bar" onClick="f1req('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f1req('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f1req('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f1req('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas1"  class="chart1"></canvas>
                            <canvas id="canvas1l" class="chart1"></canvas>
                            <canvas id="canvas1p" class="chart1"></canvas>
                            <canvas id="canvas1d" class="chart1"></canvas>
                            
                        </div>
                        <div id="tabm22" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl1"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal2 -->
	
	  <!-- modal22 -->
    <div id="sumchart22" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Weekly AnophelineFemale Mosquito Caught</h5>
                </div>
                
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab122">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab222">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab122" class="tab-pane fade active in">
                            <div id="load1"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default " value="Bar" onClick="f12req('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f12req('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f12req('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f12req('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas22"  class="chart1"></canvas>
                            <canvas id="canvas22l" class="chart1"></canvas>
                            <canvas id="canvas22p" class="chart1"></canvas>
                            <canvas id="canvas22d" class="chart1"></canvas>
                            
                        </div>
                        <div id="tab222" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl22"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal22 -->
    
    <!-- modal3 -->
    <div id="sumchart3" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Daily Anopheline Female Mosquito Caught</h5>
                </div>
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab31">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab32">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab31" class="tab-pane fade active in">
                            <div id="load3"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default" value="Bar" onClick="f3req('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f3req('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f3req('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f3req('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas3" class="chart1"></canvas>
                            <canvas id="canvas3l" class="chart1"></canvas>
                            <canvas id="canvas3p" class="chart1"></canvas>
                            <canvas id="canvas3d" class="chart1"></canvas>
                            
                        </div>
                        <div id="tab32" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl3"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal3 -->
	
	 <!-- modal2c -->
    <div id="sumchart2c" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Monthly Culicine Female Mosquito Caught</h5>
                </div>
                
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab1c">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab2c">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab1c" class="tab-pane fade active in">
                            <div id="load1"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default " value="Bar" onClick="f1reqc('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f1reqc('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f1reqc('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f1reqc('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas1c"  class="chart1"></canvas>
                            <canvas id="canvas1lc" class="chart1"></canvas>
                            <canvas id="canvas1pc" class="chart1"></canvas>
                            <canvas id="canvas1dc" class="chart1"></canvas>
                            
                        </div>
                        <div id="tab2c" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl1c"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal2c -->
	
	  <!-- modal22c -->
    <div id="sumchart22c" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Weekly Culicine Female Mosquito Caught</h5>
                </div>
                
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab122c">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab222c">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab122c" class="tab-pane fade active in">
                            <div id="load1"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default " value="Bar" onClick="f12reqc('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f12reqc('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f12reqc('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f12reqc('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas22c"  class="chart1"></canvas>
                            <canvas id="canvas22lc" class="chart1"></canvas>
                            <canvas id="canvas22pc" class="chart1"></canvas>
                            <canvas id="canvas22dc" class="chart1"></canvas>
                            
                        </div>
                        <div id="tab222c" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl22c"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal22 -->
    
    <!-- modal3c -->
    <div id="sumchart3c" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Daily Culicine Female Mosquito Caught</h5>
                </div>
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab31c">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab32c">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab31c" class="tab-pane fade active in">
                            <div id="load3"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default" value="Bar" onClick="f3reqc('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f3reqc('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f3reqc('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f3reqc('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas3c" class="chart1"></canvas>
                            <canvas id="canvas3lc" class="chart1"></canvas>
                            <canvas id="canvas3pc" class="chart1"></canvas>
                            <canvas id="canvas3dc" class="chart1"></canvas>
                            
                        </div>
                        <div id="tab32c" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl3c"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal3c -->
    
    <!-- modal4 -->
    <div id="sumchart4" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Mosquito Population Summary by Enumeration area</h5>
                </div>
                <div class="has-padding2">
                    
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab41">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab42">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab41" class="tab-pane fade active in">
                            <div id="load4"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default" value="Bar" onClick="f4req('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f4req('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f4req('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f4req('D')">
                            </div>
                            
                            <br/>
							
							
							<div style="width: 100%; overflow-x: auto; overflow-y: hidden">
							  <div style="width: 2000px; height: 500px">
								
								<canvas id="canvas4" height="300" width="0"></canvas>
								<canvas id="canvas4l" height="300" width="0"></canvas>
								<canvas id="canvas4p" height="300" width="0"></canvas>
								<canvas id="canvas4d" height="300" width="0"></canvas>
							  </div>
							</div>
							
							
                            
                        
                        
                        </div>
                        <div id="tab42" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal4 -->
    
    <!-- modal5 -->
    <div id="sumchart5" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">An. gambiae s.l abdominal status</h5>
                </div>
                
                <div class="has-padding2">
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab51">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab52">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab51" class="tab-pane fade active in">
                            <div id="load5"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default" value="Bar" onClick="f5req('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f5req('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f5req('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f5req('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas5" class="chart1"></canvas>
                            <canvas id="canvas5l" class="chart1"></canvas>
                            <canvas id="canvas5p" class="chart1"></canvas>
                            <canvas id="canvas5d" class="chart1"></canvas>
                        </div>
                        <div id="tab52" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl5"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal5 -->
    
    <!-- modal6 -->
    <div id="sumchart6" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">An. funestus abdominal status</h5>
                </div>
                
                <div class="has-padding2">
                    
                    <ul class="nav nav-pills nav-jt">
                        <li class="active">
                            <a data-toggle="tab" href="#tab61">Chart</a></li>
                        <li>
                            <a data-toggle="tab" id="bs-tab2" href="#tab62">Table</a>
                        </li>
                    </ul>
                    <div class="tab-content has-padding">
                        <div id="tab61" class="tab-pane fade active in">
                            <div id="load6"></div>
                            
                            <div class="text-right">
                                <input type="button" class="btn btn-xs btn-default" value="Bar" onClick="f6req('B')">
                                <input type="button" class="btn btn-xs btn-default" value="Line" onClick="f6req('L')">
                                <input type="button" class="btn btn-xs btn-default" value="Pie" onClick="f6req('P')">
                                <input type="button" class="btn btn-xs btn-default" value="Polar Area" onClick="f6req('D')">
                            </div>
                            
                            <br/>
                            <canvas id="canvas6" class="chart1"></canvas>
                            <canvas id="canvas6l" class="chart1"></canvas>
                            <canvas id="canvas6p" class="chart1"></canvas>
                            <canvas id="canvas6d" class="chart1"></canvas>
                            
                        </div>
                        <div id="tab62" class="tab-pane">
                            <div class="table-responsive">
                                <div id="tbl6"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal6 -->

    <!-- modalf1 -->
    <div id="freqchart1" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Enumeration area</h5>
                </div>
    
                <div class="graph-standard" id="vertical_bars">
                    <div id="hload1"></div>
                    <canvas id="hcanvas1"></canvas>
                </div>
                
            </div>
        </div>
    </div>
    <!-- / modalf1 -->

    <!-- modalf2 -->
    <div id="freqchart2" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Method</h5>
                </div>
                
                <div class="graph-standard" id="vertical_bars">
                    <div id="hload4"></div>
                    <canvas id="hcanvas4" width="90%" height="100%"></canvas>
                </div>
            
            </div>
        </div>
    </div>
    <!-- / modalf2 -->

    <!-- modalf3 -->
    <div id="freqchart3" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Cluster</h5>
                </div>
                
                <div class="graph-standard" id="vertical_bars">
                    <div id="hload2"></div>
                    <canvas id="hcanvas2" width="90%" height="100%"></canvas>
                </div>
            
            </div>
        </div>
    </div>
    <!-- / modalf3 -->

    <!-- modalf4 -->
    <div id="freqchart4" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Compound or plot</h5>
                </div>
                
                <div class="graph-standard" id="vertical_bars">
                    <div id="hload3"></div>
                    <canvas id="hcanvas3" width="90%" height="100%"></canvas>
                </div>
            
            </div>
        </div>
    </div>
    <!-- / modalf4 -->

    <!-- modalf5 -->
    <div id="freqchart5" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Location</h5>
                </div>
                
                <div class="graph-standard" id="vertical_bars">
                    <div id="hload5"></div>
                    <canvas id="hcanvas5" width="90%" height="100%"></canvas>
                </div>
            
            </div>
        </div>
    </div>
    <!-- / modalf5 -->

    <!-- modalf6 -->
    <div id="freqchart6" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title">Treatment</h5>
                </div>
                
                <div class="graph-standard" id="vertical_bars">
                    <div id="hload12"></div>
                    <canvas id="hcanvas12" width="90%" height="100%"></canvas>
                </div>
            
            </div>
        </div>
    </div>
    <!-- / modalf6 -->

</div>


<script>
    $(document).ready(function () {
        $("#FromDate").datepicker({
            dateFormat: 'yy/mm/dd',
            maxDate: 0,
            numberOfMonths: 1,
            onSelect: function (selected) {
                $("#ToDate").datepicker("option", "minDate", selected)

            }
        });

        $("#ToDate").datepicker({
            dateFormat: 'yy/mm/dd',
            minDate: 0,
            maxDate: 0,
            numberOfMonths: 1,
            onSelect: function (selected) {
                $("#FromDate").datepicker("option", "maxDate", selected)
            }
        });

        $('#daterange').daterangepicker();
    });
</script>

<?php include_once('layouts/foot.php'); ?>
			
	
   