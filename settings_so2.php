<?php 

/**
 * Created by Dickson Msaky @ Ifakara Health Insitute (2018)
 */
require_once('includes/load.php');
$page_title = 'Settings'; 
page_require_level(2);
include_once('layouts/head.php');

$formtype = "SO2";
$table = "custso";


$field = "pc";
$field2 = "ft";


  if(isset($_POST['submited2'])){

    if(!empty($_POST['fieldsarr'])) {


        $fieldsshort_array = array();

        foreach($_POST['fieldsarr'] as $field){

        preg_match('#\((.*?)\)#', $field, $match);
        $my =  strtolower($match[1])."\n";

        array_push($fieldsshort_array,$my);
         
        }


         $fieldsarr = implode(",",$_POST['fieldsarr']);
         $fieldsarr = str_replace("\n", "", $fieldsarr);

         $fieldsshort_array2 = implode(",",$fieldsshort_array);
         $fieldsshort_array2 = str_replace("\n", "", $fieldsshort_array2);

         $fieldarraysize = sizeof($_POST['fieldsarr']);

      


       if (!empty($_SESSION['expcode'])){
       
            $resultcust = $db->query("SELECT * FROM {$db->escape($table)} WHERE pc='{$db->escape($_SESSION['expcode'])}' AND ft='{$formtype}' LIMIT 1");

   
           if($db->num_rows($resultcust) === 0){
               $result2 =  $db->query("INSERT INTO {$db->escape($table)} (pc, ft, num_split, p_attri,p_attri2) VALUES('".$_SESSION['expcode']."','".$formtype."','".$fieldarraysize."','".$fieldsshort_array2."','".$fieldsarr."')");

                    if($result2){

                           $_SESSION['msg'] = '<script type="text/javascript">'.
                                        "$.jGrowl('Fields successfuly saved!', {  theme: 'growl-success', header: '' });".
                                     '</script>';

                           echo $_SESSION['msg']; 
                           unset($_SESSION['msg']);
                         }

            }else{
               
                 $sql = "UPDATE {$db->escape($table)} SET num_split='".$fieldarraysize."',p_attri='".$fieldsshort_array2."',p_attri2='".$fieldsarr."' WHERE pc ='{$_SESSION['expcode']}' AND ft='{$formtype}' LIMIT 1";
                  $result2 =  $db->query($sql);

                    if($result2){

                           $_SESSION['msg'] = '<script type="text/javascript">'.
                                        "$.jGrowl('Fields successfuly saved!', {  theme: 'growl-success', header: '' });".
                                     '</script>';

                           echo $_SESSION['msg']; 
                           unset($_SESSION['msg']);
                         }
            }

       }

  
    }

 }else if(isset($_POST['cleared'])){


  if (!empty($_SESSION['expcode'])){
      
    $resultcust = $db->query("SELECT * FROM {$db->escape($table)} WHERE pc='{$db->escape($_SESSION['expcode'])}' AND ft='{$formtype}' LIMIT 1");

  if($db->num_rows($resultcust) === 0){

     
          
    }else{
    
        $sql = "DELETE FROM ".$db->escape($table);
        $sql .= " WHERE ".$db->escape($field)."=".$_SESSION['expcode']." AND ".$db->escape($field2)."="."'SO2'";
        $sql .= " LIMIT 1";

      
        $result2 =  $db->query($sql);
        
          if($result2){

                  $_SESSION['msg'] = '<script type="text/javascript">'.
                                "$.jGrowl('Fields cleared!', {  theme: 'growl-success', header: '' });".
                            '</script>';

                  echo $_SESSION['msg']; 
                  unset($_SESSION['msg']);
                }
        
    }

}



} else if(isset($_POST['downloadtemp'])){



}


  ?>
  
 <!-- Page content -->
 <div class="page-content">
   <?php echo display_msg_popup($msg); ?>
  <!-- Page title -->
  <div class="page-title">
    <h5><i class="fa fa-bars"></i> Home <small>Welcome, <?php   echo $name;  ?> </small></h5>
  </div>



  <!-- /page title -->
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h6 class="panel-title"> Dataset Table For:   <span id="pname"></span>  </h6>
      <div class="btn-group pull-right">

        <?php include_once('scripts/selectproject.php'); ?>

      </div>
    </div>
  </div>


  <?php include_once('layouts/settingsmenu.php'); ?>

  <br />


  <div class="panel panel-default">
         <div class="panel-heading"><h6 class="panel-title">Sample Observation</h6>

          <div class="btn-group pull-right">
             <form action="scripts/exporttemp.php" method="post">

              <button type="submit" name='downloadtemp' class="btn btn-default"><i class="fa fa-download"></i>Download Template</button>
              <input type="hidden" name="fo" value="<?php echo $formtype; ?>" >  
              <input type="hidden" name="ta" value="<?php echo $table; ?>" >  

            </form> 
          </div>


         </div>
    <div class="panel-body">

         <h3>Sample Observation Customize</h3>

                     <form method="post" action=""><br/>
                        <?php

                        $checked_fields = array();

                           
                        if(isset($_SESSION['expcode'])){

                          //fetchcheckedvalues
                           $fetchfields = $db->query("SELECT * FROM {$db->escape($table)} WHERE pc='{$db->escape($_SESSION['expcode'])}' AND ft='{$formtype}' LIMIT 1");


                            if($db->num_rows($fetchfields) > 0){
                              $result = $db->fetch_assoc($fetchfields);
                              $checked_fields = explode(",",$result['p_attri2']);

                            }else{
                              
                              $msg_warn = '<script type="text/javascript">'.
                                            "$.jGrowl('Fields not customized!', { life: 20000, theme: 'growl-error', header: '' });".
                                         '</script>';

                               echo $msg_warn; 
                            }

                         }


                       
                        $fields_array = array("Serial No. (SEN)","SS Form Serial Number (SSEN)","SS Form row (SFR)","Formrow (FR)");
                        array_push($fields_array, "Body Form (SBF)","Source Sample Label Code (SSLC)", "Sample Type (SST)");
                        array_push($fields_array, "Source Sample ID (SSID)", "Taxon (STX)","Sex and Abdominal Status (SSAS)");
                        array_push($fields_array, "Mating status (MS)", "Parity (PR)","Infection (INF)","Ovariolar stalks (OS)");
                        array_push($fields_array, "Wing Length (WL)","Body Part Stored (BPS)");
                      

                        $disabled_fields_array = array("Serial No. (SEN)","Formrow (FR)","Box Row Column (RC)","SS Form Serial Number (SSEN)","SS Form row (SFR)");
                        array_push($disabled_fields_array,"Body Form (SBF)","Source Sample Label Code (SSLC)", "Sample Type (SST)","Source Sample ID (SSID)", "Taxon (STX)","Sex and Abdominal Status (SSAS)","Body Part Stored (BPS)");

                        echo '<ul>';

                          foreach($fields_array as $field){
                            
                              $disable= "";     
                              $checked = "";

                              if(in_array($field,$checked_fields)){
                              $checked = "checked";}

                              if (in_array($field,$disabled_fields_array)){
                              $checked = "checked";}
                              
                              if (in_array($field,$disabled_fields_array)){
                              $disable = 'readonly="readonly"';} 

                              
                              echo '<input type="checkbox" name="fieldsarr[]" value="'.$field.'" '.$disable.' '.$checked.' > '.$field.' <br/>';
                              
                            }
                        echo '</ul>';
            
                        ?>
                     

                     <div class="panel-footer form-actions text-right">

                        <button name="cleared" name="cleared" type="submit" id="cleared" class="btn btn-danger btn-lg"> <i class="fa fa-times" aria-hidden="true"></i> Delete saved </button>

                        <button name="submited2" name="submited2" type="submit" id="submited2" class="btn btn-primary btn-lg"> <i class="fa fa-check" aria-hidden="true"></i> Save fields </button>

                      </div>


                 </form>


    </div>
  </div>
              
<?php include_once('layouts/foot.php'); ?>    
      
  
           