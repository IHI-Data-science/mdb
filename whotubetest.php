<?php 
/**
 * Created by Dickson Msaky @ Ifakara Health Insitute (2018)
 */

require_once('includes/load.php');
$page_title = 'Settings'; 
page_require_level(2);
include_once('layouts/head.php');

$formtype = "ss3";
$table = "custss";

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
        $sql .= " WHERE ".$db->escape($field)."=".$_SESSION['expcode']." AND ".$db->escape($field2)."="."'ss3'";
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
         <div class="panel-heading"><h6 class="panel-title">Sample Sorting 3 Customize</h6>
          
          <div class="btn-group pull-right">
             <form action="scripts/exporttemp.php" method="post">

      
               <a href="settings_ss3temp.php" <button class="btn btn-default"><i class="fa fa-cog"></i>Customize General Template</button> </a>

              <button type="submit" name='downloadtemp' class="btn btn-default"><i class="fa fa-download"></i>Download Entry Template</button>

              <input type="hidden" name="fo" value="<?php echo $formtype; ?>" >  
              <input type="hidden" name="ta" value="<?php echo $table; ?>" >  

            </form> 
          </div>


         </div>
    <div class="panel-body">

        <h3>Sample Sorting 3 Customize</h3>

                     <form method="post" action=""><br/>

                     <div class="btn-group">
    <button class="btn btn-primary">  <i class="fa fa-file-text"></i>WHO Tube Test</button>
    <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
        <span class="caret caret-split"></span>
    </button>
    <ul class="dropdown-menu">


        <li class="<?php echo $ss3ft; ?>"><a tabindex="-1" href="cdctest.php">CDC  Test</a></li>
         <li class="<?php echo $ss3ft; ?>"><a tabindex="-1" href="whoconetest.php">WHO Cone Test</a></li>
        <li class="<?php echo $ss3ft; ?>"><a tabindex="-1" href="whotubetest.php">WHO Tube Test</a></li>
    </ul>
</div>

</td>

<br><br>

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


               
                   $fields_array = array("Serial No. (SEN)","ED Form Serial Number (SSEN)","ED Form row (SFR)", "Form row (FR)");
                 
                    array_push($fields_array,"Date of Test (DOT)");
                    
                    array_push($fields_array,"GPS Accuracy (GA)", "GPS Data Source (GDS)","Specify GPS data source (SGDS)");
                                       
                    array_push($fields_array,"Nets distributed in past 3 years? (NDis)",
                  "Mosquito Origin (MO)", "Mosquito Species Tested (MST)", "Mosquito Age (MA)");

                  array_push ($fields_array,
                  "Insecticide Tested (IT)",
                  "What Synergist Was Tested (SynT)", 
                  "Insecticide Concentration (IC)", 
                  "Synergist Concentration (SC)");

                
                  array_push($fields_array,"Exposure Period Max Temp (ETMax)", "Exposure Period Min Temp (ETMin)" ,
                  "Holding Period Max Temp (HTMax)","Holding Period Min Temp (HTMin)", "Exposure Period Max Humidity (EHMax)", 
                  "Exposure Period Min Humidity (EHMin)",
                  "Holding Period Max Humidity (HHMax)", "Holding Period Min Humidity (HHMin)");

                
             

                    
                  array_push($fields_array,
                  "No of Mosquitoes Tested Rep1 Insecticide (MTIr1)",
                  "No of Mosquitoes Tested Rep2 Insecticide (MTIr2)",
                  "No of Mosquitoes Tested Rep3 Insectcicide (MTIr3)",
                  "No of Mosquitoes Tested Rep4 Insectcicide (MTIr4)",
                  "No of Mosquitoes Tested Rep5 Insectcicide (MTIr5)",
                  "No of Mosquitoes Tested ReP6 Insectcicide (MTIr6)");
  
                array_push($fields_array,
                "No of Mosquitoes Tested Rep1 Solvent Control (MTSr1)",
                "No of Mosquitoes Tested Rep2 Solvent Control (MTSr2)",
                "No of Mosquitoes Tested Rep3 Solvent Control (MTSr3)",
                "No of Mosquitoes Tested Rep3 Solvent Control (MTSr4)");
  
                array_push($fields_array,
                "No of Mosquitoes Tested Rep1 Insecticide & Synergist (MTISyr1)",
                "No of Mosquitoes Tested Rep2 Insecticide & Synergist (MTISyr2)",
                "No of Mosquitoes Tested Rep3 Insecticide & Synergist (MTISyr3)",
                "No of Mosquitoes Tested Rep4 Insecticide & Synergist (MTISyr4)");
             
  
              array_push($fields_array,
              "No of Mosquitoes Tested Rep1 Synergist Control (MTSyr1)",
              "No of Mosquitoes Tested Rep2 Synergist Control (MTSyr2)",
              "No of Mosquitoes Tested Rep3 Synergist Control (MTSyr3)",
              "No of Mosquitoes Tested Rep4 Synergist Control (MTSyr4)");



              array_push($fields_array,
              "Tube Code Rep1 Insecticide (TCIr1)",
              "Tube Code Rep2 Insecticide (TCIr2)",
              "Tube Code Rep3 Insecticide (TCIr3)",
              "Tube Code Rep4 Insecticide (TCIr4)",
              "Tube Code Rep5 Insecticide (TCIr5)",
              "Tube Code Rep6 Insecticide (TCIr6)");
  
             

              array_push ($fields_array,
              "Tube Code Rep1 Solvent Control (TC_Sr1)",
              "Tube Code Rep2 Solvent Control (TC_Sr2)",
              "Tube Code Rep3 Solvent Control (TC_Sr3)",
              "Tube Code Rep4 Solvent Control (TC_Sr4)");
  
    
              array_push ($fields_array,
              "Tube Code Rep1 Insecticide & Synergist (TC_SyIr1)",
              "Tube Code Rep2 Insecticide & Synergist (TC_SyIr2)",
              "Tube Code Rep3 Insecticide & Synergist (TC_SyIr3)",
              "Tube Code Rep4 Insecticide & Synergist (TC_SyIr4)");
    
              array_push($fields_array,
              "Tube Code Rep1 Synergist Control (TC_Sy1r)",
              "Tube Code Rep2 Synergist Control (TC_Sy2r)",
              "Tube Code Rep3 Synergist Control (TC_Sy3r)",
              "Tube Code Rep4 Synergist Control (TC_Sy4r)");



              array_push($fields_array,
              "Impregnation Date  Tube1 Insecticide (ID_Ir1)",
              "Impregnation Date  Tube2 Insecticide (ID_Ir2)",
              "Impregnation Date  Tube3 Insecticide (ID_Ir3)",
              "Impregnation Date  Tube4 Insecticide (ID_Ir4)",
              "Impregnation Date  Tube5 Insecticide (ID_Ir5)",
              "Impregnation Date  Tube6 Insecticide (ID_Ir6)");
  
              array_push($fields_array,
              "Impregnation Date  Tube1 Solvent Control (ID_Sr1)",
              "Impregnation Date  Tube2 Solvent Control (ID_Sr2)",
              "Impregnation Date  Tube3 Solvent Control (ID_Sr3)",
              "Impregnation Date  Tube4 Solvent Control (ID_Sr4)");




              array_push($fields_array,
              "Impregnation Date Tube1 Synergist Control (ID_Syr1)",
              "Impregnation Date Tube2 Synergist Control (ID_Syr2)",
              "Impregnation Date Tube3 Synergist Control (ID_Syr3)",
              "Impregnation Date Tube4 Synergist Control (ID_Syr4)");
  
              array_push($fields_array,
              "Expiry Date - Rep1 Insecticide (EDI1)",
              "Expiry Date - Rep2 Insecticide (EDI2)",
              "Expiry Date - Rep3 Insecticide (EDI3)",
              "Expiry Date - Rep4 Insecticide (EDI4)",
              "Expiry Date - Rep5 Insecticide (EDI5)",
              "Expiry Date - Rep6 Insecticide (EDI6)");
  
              array_push($fields_array,
              "Expiry Date - Rep1 Solvent Control (EDS1)",
              "Expiry Date - Rep2 Solvent Control (EDS2)",
              "Expiry Date - Rep3 Solvent Control (EDS3)",
              "Expiry Date - Rep4 Solvent Control (EDS4)");
    
              array_push($fields_array,
              "Expiry Date - Rep1 Insecticide & Synergist (EDISy1)",
              "Expiry Date - Rep2 Insecticide & Synergist (EDISy2)",
              "Expiry Date - Rep3 Insecticide & Synergist (EDISy3)",
              "Expiry Date - Rep4 Insecticide & Synergist (EDISy4)");
    
              array_push($fields_array,
              "Expiry Date - Rep1 Synergist Control (EDSy1)",
              "Expiry Date - Rep2 Synergist Control (EDSy2)",
              "Expiry Date - Rep3 Synergist Control (EDSy3)",
              "Expiry Date - Rep4 Synergist Control (EDSy4)");
              
              array_push($fields_array,
              "Knock Down/ Dead Time Day1 (KD_D1D)",
              "Knock Down/ Dead Time Day2 (KD_D2D)",
              "Knock Down/ Dead Time Day3 (KD_D3D)", 
              "Knock Down/ Dead Time Day4 (KD_D4D)", 
              "Knock Down/ Dead Time Day5 (KD_D5D)", 
              "Knock Down/ Dead Time Day6 (KD_D6D)", 
              "Knock Down/ Dead Time Day7 (KD_D7D)"); 
            






                  
                      
                      $disabled_fields_array = array("Serial No. (SEN)","ED Form Serial Number (SSEN)","ED Form row (SFR)", "Form row (FR)");
               
                      
                      array_push($disabled_fields_array,"Date of Test (DOT)","GPS Accuracy (GA)", "GPS Data Source (GDS)","Specify GPS data source (SGDS)");
                       
                       array_push($disabled_fields_array,"Nets distributed in past 3 years? (NDis)", "Mosquito Origin (MO)", "Mosquito Species Tested (MST)","Mosquito Age (MA)");
                       array_push($disabled_fields_array,"Exposure Period Max Temp (ETMax)", "Exposure Period Min Temp (ETMin)", 
                       "Holding Period Max Temp (HTMax)","Holding Period Min Temp (HTMin)", "Exposure Period Max Humidity (EHMax)", 
                       "Exposure Period Min Humidity (EHMin)","Holding Period Max Humidity (HHMax)", "Holding Period Min Humidity (HHMin)");

                        echo '<ul style="list-style-type:square">';

                          foreach($fields_array as $field){
                            
                              $disable= "";     
                              $checked = "";
                              

                              if(in_array($field,$checked_fields)){
                              $checked = "checked";}

                             
                              if (in_array($field,$disabled_fields_array)){
                              $checked = "checked";}

                              
                              if (in_array($field,$disabled_fields_array)){
                              $disable = 'readonly="readonly"';} 

                              
                              echo '<input type="checkbox" name="fieldsarr[]" value="'.$field.'" '.$disable.'  '.$checked.' > '.$field.' <br/>';
                              
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