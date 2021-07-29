<?php

/**
* Created by Dickson Msaky @ Ifakara Health Insitute (2018)
**/ 


$errors = array();

global $HTTP_POST_VARS, $error, $print_again;

function real_escape($str){
  global $con;
  $escape = mysqli_real_escape_string($con,$str);
  return $escape;
}

function remove_junk($str){
  $str = nl2br($str);
  $str = htmlspecialchars(strip_tags($str, ENT_QUOTES));
  return $str;
}

function first_character($str){
  $val = str_replace('-'," ",$str);
  $val = ucfirst($val);
  return $val;
}

function validate_fields($var){
  global $errors;
  foreach ($var as $field) {
    $val = remove_junk($_POST[$field]);
    if(isset($val) && $val==''){
      $errors = $field ." cant be blank.";
      return $errors;
    }
  }
}

function validate_password($var1,$var2){
    global $errors;
  
    if( $var1 != $var2 ){
      $errors = "Password does not match";
      return $errors;
    }
  
}


function get_theme($i){

$theme = "";

switch ($i) {
   case 1:
         $theme = "";
         break;
   case 2:
        $theme = "aqu_";
         break;
   case 3:
        $theme = "bla_";
         break;
    case 4:
         $theme = "blu_";
         break;
  }

  return $theme;

}


function display_msg($msg =''){
   $output = array();
   if(!empty($msg)) {
      foreach ($msg as $key => $value) {
         $output  = "<div class=\"alert alert-{$key}\">";
         $output .= "<a href=\"#\" class=\"close\" data-dismiss=\"alert\">&times;</a>";
         $output .= remove_junk(first_character($value));
         $output .= "</div>";
      }
      return $output;
   } else {
     return "" ;
   }
}

function display_msg_popup($msg =''){
   $output = array();

   if(!empty($msg)) {
      foreach ($msg as $key => $value) {
         $tit = first_character($key);
          $value2 = first_character($value);
         $output  = '<script type="text/javascript">';
         $output .= "$.jGrowl('{$value2}', { life: 4000, theme: 'growl-{$key}', header: '{$tit}' });";
         $output .= '</script>';
      }
      return $output;
   } else {
     return "" ;
   }
}

function redirect($url, $permanent = false) {
    if (headers_sent() === false)
    {
      header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}

function read_date($str){
     if($str)
      return date('F j, Y, g:i:s a', strtotime($str));
     else
      return null;
}

function make_date(){
  return strftime("%Y-%m-%d %H:%M:%S", time());
}

function count_id(){
  static $count = 1;
  return $count++;
}

function randString($length = 5){
  $str='';
  $cha = "0123456789abcdefghijklmnopqrstuvwxyz";

  for($x=0; $x<$length; $x++)
   $str .= $cha[mt_rand(0,strlen($cha))];
  return $str;
}

 function hashPass($pass){

     return password_hash($pass, PASSWORD_DEFAULT);

 }

 function getlongword($string){

  $words = explode(" ", $string);

  $longestwordlen = 0;
  $longestword = '';

  foreach ($words as $word) {
   if (strlen($word) > $longestwordlen) {
    $longestwordlen = strlen($word);
    $longestword = $word;
  }
}

$longestword2 =  "<i>".$longestword."</i>";

return $longestword2;

}


 function getsdate($date){
       $date2 = explode('-', $date); 
    
    if(count($date2)>1) {
           return $date2[0];
       }else{
         return $date;
     }
      
}

function getedate($date){
       $date2 = explode('-', $date); 
    
    if(count($date2)>1) {
           return $date2[1];
       }else{
         return $date;
     }
      
}

function encrypt($string, $key){
      $result = "";

      for($i=0; $i<strlen($string); $i++){

              $char = substr($string, $i, 1);

              $keychar = substr($key, ($i % strlen($key))-1, 1);

              $char = chr(ord($char)+ord($keychar));

              $result.=$char;

      }

      $salt_string = "ABCDEFGHIJKLMNOPQRSTUVWXYSabcdefghijklmnopqrstuvwxys012456789";

      $length = rand(1, 15);

      $salt = "";

      for($i=0; $i<=$length; $i++){

              $salt .= substr($salt_string, rand(0, strlen($salt_string)), 1);

      }

      $salt_length = strlen($salt);

      $end_length = strlen(strval($salt_length));

      return base64_encode($result.$salt.$salt_length.$end_length);

}

function decrypt($string, $key){

        $result = "";

        $string = base64_decode($string);

        $end_length = intval(substr($string, -1, 1));

        $string = substr($string, 0, -1);

        $salt_length = intval(substr($string, $end_length*-1, $end_length));

        $string = substr($string, 0, $end_length*-1+$salt_length*-1);

        for($i=0; $i<strlen($string); $i++){

                $char = substr($string, $i, 1);

                $keychar = substr($key, ($i % strlen($key))-1, 1);

                $char = chr(ord($char)-ord($keychar));

                $result.=$char;

        }

        return $result;

}

function readmorefunction($text,$targetFile,$id) {

     $limit = 60;

      if (str_word_count($text, 0) > $limit) {

          $words = str_word_count($text, 2);

          $pos = array_keys($words);

          $text = substr($text, 0, $pos[$limit]) . '...' . " <a href='$targetFile?id=$id'>Read More</a>" ;

      }

      return $text;

}



 function readmorelink($targetFile,$id) {

      $text = "$targetFile?id=$id" ;

      return $text;

}

function getcolumnnametable($columns){

    $columns2 = explode(',', $columns); 

    $arrcol = array();

    foreach($columns2 as $item){

      $arrcol[] = '{"field":"'.$item.'","searchable":true,"sortable":false,"title":"'.strtoupper($item).'","visible":true}'."\n";

    }

    $strcol = implode (",", $arrcol);

    return $strcol ;

}

function getfieldname($columns2){
      
  $arrcol = array();

  foreach($columns2 as $item){

    $arrcol[] = '{label:"'.$item.'",lineTension: 0.1,backgroundColor:randomColor(),borderColor:randomColor(),pointRadius:3,pointHoverRadius:4,fill:false,data:'.$item.'}'."\n";

  }

  $strcol = implode (",", $arrcol);

  return $strcol ;

}


function getcolumnnametable2($column1,$column2){

    array_unshift($column1,"id");
    array_unshift($column2,"ID");

    $arrcol = array();

    foreach(array_combine($column1, $column2) as $column1field => $column2field){

      $arrcol[] = '{"field":"'.$column1field.'","searchable":true,"sortable":false,"title":"'.$column2field.'","visible":true}'."\n";

    }

    $strcol = implode (",", $arrcol);

    return $strcol ;

}

function getcolumnnametable3($column1,$column2){

    array_unshift($column1,"id");
    array_unshift($column2,"ID");

    $arrcol = array();

    foreach(array_combine($column1, $column2) as $column1field => $column2field){

      $arrcol[] = '<th data-field="'.$column1field.'">'.$column2field.'</th>'."\n"; 

    }

    $strcol = implode (" ", $arrcol);

    return $strcol ;

}



function renamecolumn($edcol,$tablename){

     $tablename = $tablename.'.';

    $columns = explode(',', $edcol); 
        
      $new = array();

      foreach($columns as $item){

          $new[] = $tablename.$item;
        
       }


      $str = implode (",", $new);

      return $str ;

}  


//function to colour text if fieldtext is not valid;
function highlighter($error, $field) 
{//function to highlighter textfield ;
  //declare global variable
  global $HTTP_POST_VARS, $error, $print_again;
  if($error[$field])
  { 
    print("style=\"color: red; \"");
  } 
  else 
  { 
    print("");
  } 
}//end function to highighter textfield;

//function to colour text if fieldtext is not valid;
function highlighter2($error, $field) 
{//function to highlighter textfield ;
  //declare global variable
  global $HTTP_POST_VARS, $error, $print_again;
  if($error[$field])
  { 
    print("style=\"border-color: red; \"");
  } 
  else 
  { 
    print("");
  } 
}//end function to highighter textfield;

//check if textfield is valid from the form;
function check_form()
{//start of check_form function;
  //declare global variable
  global $HTTP_POST_VARS, $error, $print_again;
  //check if any data is not valid;
  if($print_again==1) 
  { 
    //call function to show_form and display message;
    show_form(1, "Please fill the fields with red colour"); 
    }
}//end function to check_form;

//function to clear textfield
function clear_textfield($names)
{//start function clear_textfield;
  //clear all field if value is valid;  
  $cleartextfield =  array();
  $cleartextfield = explode(";", $names);
  foreach($cleartextfield as $line) 
  {
    $_POST[$line]="";
  }
}//end of function clear_textfield; 

//function to validate interger
function val_int($name)
{//start function val_integer;
  global $HTTP_POST_VARS, $print_again, $error;
  if(!filter_var($_POST[$name], FILTER_VALIDATE_INT))
  {
    //mark textfield if is not valid data 
    $error[$name] = true; 
    //activate form to be note submited in database
    $print_again = true; 
  }
}//end of function val_string;

//function to validate float
function val_float($name)
{//start tofunction  val_string
  global $HTTP_POST_VARS, $print_again, $error;
  //check if variable enter is collect
  if(is_float($_POST[$name])== false) 
  {
    //mark the field which is not valid
    $error[$val_name] = true;
    //activate form to be note submited in database 
    $print_again = true; 
  }
}//end of function val_string

//function to check empty field
function emptyfield($name)
{//start function emptyfield;
  global $HTTP_POST_VARS, $print_again, $error;
  if($_POST[$name]=="")
  {
    //mark textfield if is not valid data 
    $error[$name] = true; 
    //activate form to be note submited in database
    $print_again = true; 
  }
}//end of function emptyfield;


function isUserExisted($email) {
      
  global $db;

    $result = mysqli_query($db,"SELECT email from staff WHERE email = '$email'");
    $no_of_rows = mysqli_num_rows($result);
    if ($no_of_rows > 0) {
        // user existed 
        return true;
    } else {
        // user not existed
        return false;
    }
}  


function projectname($id) {

    global $db;

    $querypn=$db->query("SELECT CONCAT(projectreg.pc,\"_\",projectreg.expno) AS Project_Code 
    FROM projectreg WHERE id=$id");

    $rowpn=$db->fetch_assoc($querypn);

    $p = $rowpn['Project_Code'];

    return $p;

} 


function labelvalue($table,$field,$id) {

      global $db;
      
      $query=$db->query("select $field from {$db->escape($table)} where number ='$id'");

      $row=$db->fetch_assoc($query);

      $p = $row[$field];

      if($p != null){
        return $p;
          }
      else{
        return $id;
          }
 
}


function inout($id) {

      if($id == 1){
         return "IN";
          }
      elseif($id == 2){
         return "OUT";
          }
      else{
         return $id;
          }

}



function sendMail($email, $message, $subject){

  require_once('phpmailer/PHPMailerAutoload.php');
  

  //Create a new PHPMailer instance
  $mail = new PHPMailer;

  $mail->SMTPOptions = array(
            'ssl' => array(
                'verify_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true
            )
   );

  //Tell PHPMailer to use SMTP
  $mail->isSMTP();

  //Enable SMTP debugging
  // 0 = off (for production use)
  // 1 = client messages
  // 2 = client and server messages
  $mail->SMTPDebug = 0;

  //Ask for HTML-friendly debug output
  $mail->Debugoutput = 'html';

  //Set the hostname of the mail server
  //$mail->Host = 'smtp.gmail.com';
 // $mail->Host = gethostbyname("smtp.gmail.com");
  // use
   $mail->Host = gethostbyname('smtp.gmail.com');
  // if your network does not support SMTP over IPv6

  //Set the SMTP port number - 587 for authenticated TLS, a.k.a. RFC4409 SMTP submission
  $mail->Port = 587;

  //Set the encryption system to use - ssl (deprecated) or tls
  $mail->SMTPSecure = 'tls';

  //Whether to use SMTP authentication
  $mail->SMTPAuth = true;

  //Username to use for SMTP authentication - use full email address for gmail
  $mail->Username = "mosquitodb.io@gmail.com";

  //Password to use for SMTP authentication
  $mail->Password = "ifakara15.io";

  //Set who the message is to be sent from
  $mail->setFrom('mosquitodb.io@gmail.com', 'MosquitoDB Notification');

  //Set an alternative reply-to address
 // $mail->addReplyTo('', '');

  //Set who the message is to be sent to
  $mail->addAddress($email);

  //Set the subject line
  $mail->Subject = $subject;
  
  //$mail->AddCC('dmsaky@ihi.or.tz');

  //Read an HTML message body from an external file, convert referenced images to embedded,
  //convert HTML into a basic plain-text alternative body
  $mail->msgHTML($message);

  //Replace the plain text body with one created manually
  //$mail->AltBody = 'This is a plain-text message body';

  //Attach an image file
  ///$mail->addAttachment('images/phpmailer_mini.png');

  //send the message, check for errors
  if (!$mail->send()) {
    //echo "Mailer Error: " . $mail->ErrorInfo;
  } else {
    //echo "Message sent!";
  }
    
}



  function createtables($prefix){

    global $db;

    $prefix = $prefix."_";

      $sql = "CREATE TABLE IF NOT EXISTS ".$prefix."ed1 (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to SS',
      `projectregsite_id` int(11) NOT NULL COMMENT 'Store value from table projectregsite id',
      `sen` int(6) NOT NULL COMMENT 'unique identifier for ED1 form',
      `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
      `dt` date NOT NULL COMMENT 'date of collection (morning on which the mosquitoes were collected)',
      `ea` varchar(100) DEFAULT '0' COMMENT 'Enumaration area (Define geographic location within the study site)',
      `cr` bigint(13) DEFAULT '0' COMMENT 'Cluster (The smallest geographic statistical unit within enumaration area)',
      `cp` int(2) DEFAULT '0' COMMENT 'Compound or Plot (A specific physical area within an identifiable owner)',
      `tcu` bigint(11) DEFAULT '-99' COMMENT 'Hold Ten Cell Unit',
      `hh` varchar(100) DEFAULT '0' COMMENT 'Household (A person or group of people who live together in the same dwelling unit)',
      `sid` int(2) DEFAULT '0' COMMENT 'Structure ID (A free standing building that can have one or more room for residential or commercial use)',
      `me` int(3) NOT NULL DEFAULT '-99' COMMENT 'Method (The method by which the mosquitoes were collected or trapped)',
      `ind` int(1) NOT NULL COMMENT 'hold collection was made indoors a house or hut',
      `ht` int(3) DEFAULT NULL COMMENT 'Habitat Type (Classification of the aquatic habitat in which the collection was made)',
      `st` varchar(6) COMMENT 'Start Time (The time that the collection started in 24 time )',
      `ft` varchar(6) COMMENT 'Finish Time (The time that the collection finish in 24 time)',
      `hp` int(4) DEFAULT NULL COMMENT 'Hold Period (The period of time for which the mosquitoes were held for survival analysis after they were collected)',
      `rnd` int(3) DEFAULT '-99' COMMENT 'Round (One cycle or rotation of the treatment )',
      `blk` int(3) DEFAULT '-99' COMMENT 'Block (A set of position through which treatments are rotated in a Latin)',
      `shh` varchar(200) DEFAULT '-99' COMMENT 'A project specific house or experiment hut',
      `stn` int(3) DEFAULT '-99' COMMENT 'A project specific where station where a trap may be positioned',
      `vi` varchar(25) DEFAULT NULL COMMENT 'Initial of person that caught the mosquitoes',
      `tr` varchar(50) DEFAULT NULL COMMENT 'Treatment (Coding for the unique experimental treatment)',
      `dy` int(3) DEFAULT '-99' COMMENT 'Experiment Day (The consecutive nth day since the experiment commenced)',
      
      `tmp` varchar(15) DEFAULT NULL COMMENT 'Temperature',
     
      `hmd` varchar(15) DEFAULT NULL COMMENT 'Humidity',
      `ws` varchar(15) DEFAULT NULL COMMENT 'wind speed',
      `hos` varchar(15) DEFAULT '-99' COMMENT 'Number of household sampled',
     
      `vc` int(1) NOT NULL DEFAULT '2' COMMENT 'Legitimacy of the collection',
      `notes` text COMMENT 'On site observation about the collection',
      `gps` text COMMENT 'Site geolocation',
     
      `dsen` int(6) NOT NULL COMMENT 'Destination form serial number',
      `livestock` int(11) DEFAULT NULL,
      `hoccupant` int(11) DEFAULT NULL,
      `heaves` int(11) DEFAULT NULL,
      `nss` int(11) DEFAULT NULL,
      `nbh` int(11) DEFAULT NULL,
      `oth` int(11) DEFAULT NULL,
      `sn` int(3) DEFAULT '-99' COMMENT 'Season',
      `agrt` int(3) DEFAULT '-99' COMMENT 'Agriculture',
      `invn` int(3) DEFAULT '-99' COMMENT 'Intervention',
      `lvk` int(3) DEFAULT '-99' COMMENT 'Livestock',
      `rfe` int(3) DEFAULT '-99' COMMENT 'Roof type',
      `wle` int(3) DEFAULT '-99' COMMENT 'Wall type',
      `evs` int(3) DEFAULT '-99' COMMENT 'Eaves',
      `wsn` int(3) DEFAULT '-99' COMMENT 'Window screening',
      `wsnc` int(3) DEFAULT '-99' COMMENT 'Window screening Condition',
      `ckl` int(3) DEFAULT '-99' COMMENT 'Cooking location',
      `cke` int(3) DEFAULT '-99' COMMENT 'Cooking Energy source',
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
      PRIMARY KEY (`projectregsite_id`,`sen`,`fr`),
      UNIQUE KEY `id` (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ; ";


          $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."edss (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to EDSS',
      `ed1id` int(11) DEFAULT NULL COMMENT 'Hold data which is coming from Ed1',
      `ed2id` int(11) DEFAULT NULL COMMENT 'Hold data which is coming from  Ed2',
      PRIMARY KEY (`id`),
      KEY `fk_edss_ed1id` (`ed1id`),
      KEY `fk_edss_ed2id` (`ed2id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;";


       $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."audit_trail (
      `auditid` int(11) NOT NULL AUTO_INCREMENT,
      `auditsen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
      `auditfr` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
      `auditformtype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
      `audituser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
      `auditdate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
      `auditaction` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
      `auditdetail` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
      PRIMARY KEY (`auditid`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";


        $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ssso (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO',
      `ss1id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS1',
      `ss2id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS2',
      `ss3id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS3',
      `ss4id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS4',
       PRIMARY KEY (`id`),
       KEY `fk_ss1id` (`ss1id`),
         KEY `fk_ss2id` (`ss2id`),
       KEY `fk_ss3id` (`ss3id`),
       KEY `fk_ss4id` (`ss4id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;";


        $sql .= " CREATE TABLE IF NOT EXISTS ".$prefix."ed2(
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment links to SS',
      `projectregsite_id` int(11) NOT NULL COMMENT 'Store value from table projectregsite id (Foreign Key)',
      `sen` int(6) NOT NULL COMMENT 'unique identifier for ED2 form',
      `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
      `ssen` int(10) DEFAULT '-99',
      `sfr` int(4) DEFAULT '-99',
      `slc` varchar(30) DEFAULT '-99',
      `sbp` int(8) DEFAULT '-99',
      `sst` int(8) DEFAULT '-99',
      `ssid` int(8) DEFAULT '-99',
      `scc` varchar(30) DEFAULT '-99',
      `stx` int(3) DEFAULT '-99' COMMENT 'Store taxon code foreign key from Taxon table',
      `ssas` int(3) DEFAULT '-99' COMMENT 'Store sex code foreign key from SexAbdominal table',
      `ag` int(2) DEFAULT '-99',
      `n` int(10) NOT NULL COMMENT 'Store number of mosqutoes caught',
      `sd` date NOT NULL COMMENT 'started date of the experiment',
      `st` varchar(6) DEFAULT '-99' COMMENT 'started time of the experiment',
      `tr` varchar(50) DEFAULT '-99' COMMENT 'Treatment (Coding for the unique experimental treatment)',
      `vi` varchar(25) DEFAULT 'NA' COMMENT 'Initial of person that caught the mosquitoes',
      `rnd` int(3) DEFAULT '-99' COMMENT 'Round (One cycle or rotation of the treatment )',
      `dy` int(3) DEFAULT '-99' COMMENT 'Experiment Day (The consecutive nth day since the experiment commenced)',
      `oth1` varchar(50) DEFAULT '-99' COMMENT 'Other Any additional experimental details',
      `oth2` varchar(50) DEFAULT '-99' COMMENT 'Pther Any additional experimental details',
      `oth3` varchar(50) DEFAULT '-99' COMMENT 'Pther Any additional experimental details',
      `va` int(1) NOT NULL COMMENT 'Valid Assay Legitimacy of the experimental assay',
      `notes` text COMMENT 'On site observation about the collection',
      `dsen` int(6) NOT NULL COMMENT 'Destination form serial number',
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
      PRIMARY KEY (`projectregsite_id`,`sen`,`fr`),
      UNIQUE KEY `id` (`id`)

      ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; ";





    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."so1 (
      `id_` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment',
      `sssoid` int(11) NOT NULL,
      `sen` int(11) NOT NULL,
      `ssen` int(11) NOT NULL,
      `sfr` int(11) NOT NULL,
      `fr` int(11) NOT NULL,
      `rc` char(2) DEFAULT NULL,
      `sbf` int(11) DEFAULT NULL,
      `sslc` varchar(30) DEFAULT NULL,
      `sst` int(11) DEFAULT NULL,
      `ssid` int(11) DEFAULT NULL,
      `stx` int(11) DEFAULT NULL,
      `species` varchar(11) DEFAULT 'NRQ',
      `kdr` varchar(11) DEFAULT 'NRQ',
      `pf` varchar(11) DEFAULT 'NRQ',
      `pv` varchar(11) DEFAULT 'NRQ',
      `po` varchar(11) DEFAULT 'NRQ',
      `pm` varchar(11) DEFAULT 'NRQ',
      `human` varchar(11) DEFAULT 'NRQ',
      `chicken` varchar(11) DEFAULT 'NRQ',
      `goat` varchar(11) DEFAULT 'NRQ',
      `bovine` varchar(11) DEFAULT 'NRQ',
      `dog` varchar(11) DEFAULT 'NRQ',
      `cat` varchar(11) DEFAULT 'NRQ',
      `rat` varchar(11) DEFAULT 'NRQ',
      `bps` varchar(11) DEFAULT 'NRQ',
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
      PRIMARY KEY (`sssoid`,`ssen`,`sfr`,`ssid`),
      UNIQUE KEY `id_` (`id_`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

     $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."so2 (
      `id_` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment',
      `sssoid` int(11) NOT NULL,
      `sen` int(11) NOT NULL,
      `ssen` int(11) NOT NULL,
      `sfr` int(11) NOT NULL,
      `fr` int(11) NOT NULL,
      `sbf` int(11) DEFAULT NULL,
      `sslc` varchar(30) DEFAULT NULL,
      `sst` int(11) DEFAULT NULL,
      `ssid` int(11) DEFAULT NULL,
      `stx` int(11) DEFAULT NULL,
      `ssas` int(11) DEFAULT NULL,
      `ms` varchar(11) DEFAULT 'NRQ',
      `pr` varchar(11) DEFAULT 'NRQ',
      `inf` varchar(11) DEFAULT 'NRQ',
      `os` varchar(11) DEFAULT 'NRQ',
      `wl` varchar(11) DEFAULT 'NRQ',
      `bps` varchar(11) DEFAULT 'NRQ',
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
      PRIMARY KEY (`sssoid`,`ssen`,`sfr`,`ssid`),
      UNIQUE KEY `id_` (`id_`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."st1 (
      `id_` int(11) NOT NULL AUTO_INCREMENT,
      `projectregsite_id` int(11) NOT NULL,
      `sen` int(11) NOT NULL,
      `ssen` int(11) NOT NULL,
      `sfr` int(11) NOT NULL,
      `fr` int(11) NOT NULL,
      `rc` int(11) NOT NULL,
      `sbf` int(11) DEFAULT NULL,
      `sslc` varchar(30) DEFAULT NULL,
      `sst` int(11) DEFAULT NULL,
      `ssid` int(11) DEFAULT NULL,
      `stx` int(11) DEFAULT NULL,
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
      PRIMARY KEY (`sen`,`fr`,`rc`,`ssid`),
      UNIQUE KEY `id_` (`id_`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";


    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."st2 (
      `id_` int(11) NOT NULL AUTO_INCREMENT,
      `projectregsite_id` int(11) NOT NULL,
      `sen` int(11) NOT NULL,   
      `fr` int(11) NOT NULL,
      `ssen` int(11) NOT NULL,
      `ns` int(11) NOT NULL,
      `fst` int(11) DEFAULT NULL,
      `ff` int(11) NOT NULL,
      `rcn` int(11) NOT NULL,
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
      PRIMARY KEY (`sen`,`fr`),
      UNIQUE KEY `id_` (`id_`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";


    

    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss1 (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO',
      `edssid` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
      `sen` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
      `ssen` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
      `sfr` int(6) NOT NULL COMMENT 'unique identifier for SS1 form',
      `bf` int(3) DEFAULT '1' COMMENT 'body part (The body type of the sample)',
      `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
      `tx` int(3) NOT NULL COMMENT 'taxon identification number',
      `sas` int(3) NOT NULL COMMENT 'sex and abdominal status',
      `n` int(4) NOT NULL COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
      `notes` varchar(500) DEFAULT 'NA',
      `slc` varchar(30) DEFAULT 'NA',
      `st` int(4) DEFAULT '0' COMMENT 'sample type (Designates the category of sample as either individual or batch)',
      `ni` int(4) DEFAULT '0' COMMENT 'no of individual ',
      `nb` int(4) DEFAULT '0' COMMENT 'no of batched ',
      `sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
      `sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
      `sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
      `sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
      `sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
      `sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
      `sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
      `nd` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
      `senfr` int(11) NOT NULL,
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
       PRIMARY KEY (`edssid`,`sen`,`tx`,`sas`),
       UNIQUE KEY `id` (`id`),
       KEY `tx` (`tx`),
       KEY `bf` (`bf`),
       KEY `sas` (`sas`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;";


    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss2 (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO',
      `edssid` int(11) NOT NULL COMMENT 'Store value from table EDSS id',
      `sen` int(6) NOT NULL COMMENT 'unique identifier for SS2 form',
      `ssen` int(6) NOT NULL COMMENT 'unique identifier for SS2 form',
      `sfr` int(6) NOT NULL COMMENT 'unique identifier for SS2form',
      `hf` int(3) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of Habitat found (1: Yes, 2: No)',
      `htc` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of Habitat type correct (1: Yes, 2: No)',
      `ht` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of Habitat Type treated (1: Yes, 2: No)',
      `hw` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of Habitat wet (1: Yes, 2: No)',
      `hs` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status Habitat Parameter (1: <10m, 2: 10-100m, 3: >100m)',
      `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
      `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'taxon identification number',
      `bf` int(3) DEFAULT '-99' COMMENT 'body part (The body type of the sample)',
      `pu` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of pupae (1: Total)',
      `vl` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of vegitation length/rice length (1: Absent, 2: Short grasses, 3: Tall grasses)',
      `vt` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of treated (1: Yes, 2: No)',
      `ndi01` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi02` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi03` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi04` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi05` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi06` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi07` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi08` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi09` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `ndi10` int(3) DEFAULT '-99' COMMENT 'Recorded the number of mosquitoes caught during each independent 250ml dipping effort made to simple immature',
      `n` int(4) DEFAULT '-99' COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
      `notes` varchar(500) DEFAULT 'No data (-99)' COMMENT 'On site observations about collection ',
      `slc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique label code for each composition of taxon plus sex and abdominal status (Sample Lable Code SLC)',
      `ni` int(4) DEFAULT '0' COMMENT 'no of individual ',
      `nb` int(4) DEFAULT '0' COMMENT 'no of batched ',  
      `sid01` int(2) DEFAULT '0' COMMENT 'sample type sample identification 1',
      `sid02` int(2) DEFAULT '0' COMMENT 'sample type sample identification 2',
      `sid03` int(2) DEFAULT '0' COMMENT 'sample type sample identification 3',
      `sid04` int(2) DEFAULT '0' COMMENT 'sample type sample identification 4',
      `sid05` int(2) DEFAULT '0' COMMENT 'sample type sample identification 5',
      `sid06` int(2) DEFAULT '0' COMMENT 'sample type sample identification 6',
      `sid07` int(2) DEFAULT '0' COMMENT 'sample type sample identification 7',
      `nd` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
      `senfr` int(11) NOT NULL,
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
      PRIMARY KEY (`edssid`,`sen`,`fr`),
      UNIQUE KEY `id` (`id`),
      KEY `fk_ss2_tx` (`tx`),
      KEY `fk_ss2_bf` (`bf`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss3 (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO',
      `edssid` int(11) NULL COMMENT 'Store value from table EDSS id',
      `sen` int(6) NOT NULL COMMENT 'unique identifier for SS3 form',
      `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',
      `ssen` int(6) NOT NULL COMMENT 'unique identifier for SS3 form',
      `sfr` int(6) NOT NULL COMMENT 'unique identifier for SS3 form',
      `sd` date NOT NULL COMMENT 'Start date (The date that the experimental sorting of the specific subgroup was started)',
      `dd` int(3) DEFAULT '-99' COMMENT 'dead sorting classfication of mosquitoes',
      `tx` int(3) NOT NULL DEFAULT '-99' COMMENT 'taxon identification number',
      `sas` int(3) NOT NULL DEFAULT '-99' COMMENT 'sex and abdominal status',
      `mt` int(3) DEFAULT '-99' COMMENT 'mating status of mosquitoes  if found couple',
      `ch` int(3) DEFAULT '-99' COMMENT 'choice. used to designated the choise made by project specific',
      `rep_no` int(2) DEFAULT '-99' COMMENT 'Total number of replicate',
      `cnr_no` int(2) DEFAULT '-99' COMMENT 'Total number of control',
      `exp_tr` int(2) DEFAULT '-99' COMMENT 'Exposure to treatment',
      `st` varchar(10) COMMENT 'start time',
      `dur` varchar(10) DEFAULT '-99' COMMENT 'Duration of exposure',
      `notes` varchar(500) DEFAULT 'NA',
      `senfr` int(11) NOT NULL,
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
      PRIMARY KEY (`sen`,`fr`),
      UNIQUE KEY `id` (`id`)
    
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";


    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss3b (
      `id_` int(11) NOT NULL AUTO_INCREMENT,
      `edssid` int(11) NOT NULL,
      `sen` int(6) NOT NULL,
      `fr` int(6) NOT NULL,
      `ssen` int(6) NOT NULL,
      `sfr` int(6) NOT NULL,
      `st` varchar(10) NOT NULL,
      `dur` varchar(10) NOT NULL,
      `rep_1` varchar(3) DEFAULT 'NA' COMMENT 'Total number observed in replicate 1',
      `rep_2` varchar(3) DEFAULT 'NA' COMMENT 'Total number observed in replicate 2',
      `rep_3` varchar(3) DEFAULT 'NA' COMMENT 'Total number observed in replicate 3',
      `rep_4` varchar(3) DEFAULT 'NA' COMMENT 'Total number observed in replicate 4',
      `cnr_1` varchar(3) DEFAULT 'NA' COMMENT 'Total number observed in control 1',
      `cnr_2` varchar(3) DEFAULT 'NA' COMMENT 'Total number observed in control 2',
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(), 
      PRIMARY KEY (`id_`,`sen`,`fr`),
      UNIQUE KEY `id_` (`id_`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss4 (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO',
      `edssid` int(6) NOT NULL COMMENT 'unique identifier for SS4 form',
      `sen` int(6) NOT NULL COMMENT 'unique identifier for SS4 form',
      `ssen` int(6) NOT NULL COMMENT 'unique identifier for SS4 form',
      `sfr` int(6) NOT NULL COMMENT 'unique identifier for SS4 form',
      `fr` int(2) NOT NULL COMMENT 'unique identifier of each row on the data collected',

      `su` varchar(100) DEFAULT '0' COMMENT 'substracte (type of soil for snail to lay eggs)',
 `sa` varchar(15) DEFAULT NULL COMMENT 'salinity',
      `dso` varchar(15) DEFAULT NULL COMMENT 'Dissolved oxygen ',
 `dr` varchar(15) DEFAULT '-99' COMMENT 'Number of dredges',
 `ph` varchar(15) DEFAULT NULL COMMENT 'potential of hydrogen',
      `co` varchar(15) DEFAULT NULL COMMENT ' Conductivity ms',
      `wda` varchar(100) DEFAULT '0' COMMENT 'wild domestic anilal  (define jind of animals)',
      `act` varchar(100) DEFAULT '0' COMMENT 'activity (define either human activities )',
      `wn` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of water body name (1: Yes, 2: No)',
      `wl` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of water level (1: Yes, 2: No)',
      `de` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of depth (1: Yes, 2: No)',
      `ret` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of flow rate (1: Yes, 2: No)',
      `wt` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of water body type (1: Yes, 2: No)',
      `lwt` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of longevity of water body type (1: Yes, 2: No)',
      `sp` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of snail present(1: Yes, 2: No)',
      `spc` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of snail species collected (1: Yes, 2: No)',
      `n` int(4) NOT NULL COMMENT 'number of observed (Records the total number of mosquitoes observed in each specific subgroup)',
      `sps` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of snail species shedded (1: Yes, 2: No)',
      `tc` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Hold status of type of cercaria (1: Yes, 2: No)',
      `nc` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Bumber of cercaria shadded (1: Yes, 2: No)',
      `nd` int(3) DEFAULT NULL COMMENT 'number of discarded (This is the number of mosquitoes discarded)',
      `senfr` int(11) NOT NULL,
      `created_at` timestamp default now(), 
      `updated_at` timestamp default now(),
       PRIMARY KEY (`edssid`,`sen`),
       UNIQUE KEY `id` (`id`)
     
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;";


      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."sost (
        `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Hold data which is auto increment to links to SO',
        `so1id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS1',
        `so2id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS2',
        `so3id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS3',
        `so4id` int(11) DEFAULT NULL COMMENT 'Hold data link to SS4',
        PRIMARY KEY (`id`),
        KEY `fk_ss1id` (`so1id`),
        KEY `fk_ss2id` (`so2id`),
        KEY `fk_ss3id` (`so3id`),
        KEY `fk_ss4id` (`so4id`)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";


      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."method (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `me` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."location (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `ind` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      $sql .= "INSERT INTO ".$prefix."location (`id`, `number`, `ind`) VALUES ('1', '1', 'IN'), ('2', '2', 'OUT');";

      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."habitattype (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `ht` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";


      
        $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."enumerationarea (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `ea` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      
        $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."cluster (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `cr` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

     
        $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."compound (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `cp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      
        $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."treatment (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `tr` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

        $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."DomesticWildAnimals (
          `id` int(11) NOT NULL AUTO_INCREMENT,
          `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
          `tr` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
          PRIMARY KEY (`id`)
         ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

     
         $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."treatment_two (
          `id` int(11) NOT NULL AUTO_INCREMENT,
          `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
          `tr` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
          PRIMARY KEY (`id`)
         ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";  

     
         $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."colonycode (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `cc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

        $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."Substracte (
          `id` int(11) NOT NULL AUTO_INCREMENT,
          `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
          `bp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
          PRIMARY KEY (`id`)
         ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";
 
        
        
        $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."Activities (
          `id` int(11) NOT NULL AUTO_INCREMENT,
          `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
          `bp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
          PRIMARY KEY (`id`)
         ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      
      
        
         $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."bodypart (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `bp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."replicate (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `rep` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."taxon (
         `id` int(11) NOT NULL AUTO_INCREMENT,
         `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         `tx` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
         PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."sas (
       `id` int(11) NOT NULL AUTO_INCREMENT,
       `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
       `sas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
       PRIMARY KEY (`id`)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."custgraph (
       `id` int(11) NOT NULL AUTO_INCREMENT,
       `pc` int(11) NOT NULL ,
       `location` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
       `num_split` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
       `p_attri` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
       `p_attri2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
       PRIMARY KEY (`id`)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

  

       $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."custlabel (
       `id` int(11) NOT NULL AUTO_INCREMENT,
       `pc` int(11) NOT NULL ,
       `location` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
       `num_split` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
       `p_attri` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
       `p_attri2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
       PRIMARY KEY (`id`)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

      $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."wn (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
        `tx` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
        PRIMARY KEY (`id`)
       ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

     $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."spc (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
      `sas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
      PRIMARY KEY (`id`)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

   
     $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss1template(
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `sen` varchar(10),
      `ssen` varchar(10) NULL,
      `sfr` varchar(10) NULL,
      `bf` varchar(10) NULL,
      `fr` varchar(10) NULL,
      `tx` varchar(10) NULL,
      `sas` varchar(20) NULL,
      `n` varchar(10) NULL,
      `notes` varchar(10) NULL,
      `slc` varchar(30) NULL,
      `st` varchar(10) NULL,
      `ni` varchar(10) NULL ,
      `nb` varchar(10) NULL,
      `sid01` varchar(10) NULL,
      `sid02` varchar(10) NULL,
      `sid03` varchar(10) NULL,
      `sid04` varchar(10) NULL,
      `sid05` varchar(10) NULL,
      `sid06` varchar(10) NULL,
      `sid07` varchar(10) NULL,
      `nd` varchar(10) NULL,
       PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss2template(
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `sen` varchar(10),
      `ssen` varchar(10) NULL,
      `sfr` varchar(10) NULL,
      `hf` varchar(10) NULL,
      `htc` varchar(10) NULL,
      `ht` varchar(10) NULL,
      `hw` varchar(10) NULL,
      `hs` varchar(10) NULL,
      `fr` varchar(10) NULL,
      `tx` varchar(20) NULL,
      `bf` varchar(10) NULL,
      `pu` varchar(10) NULL,
      `vl` varchar(10) NULL,
      `vt` varchar(10) NULL,
      `ndi01` varchar(10) NULL,
      `ndi02` varchar(10) NULL,
      `ndi03` varchar(10) NULL,
      `ndi04` varchar(10) NULL ,
      `ndi05` varchar(10) NULL,
      `ndi06` varchar(10) NULL,
      `ndi07` varchar(10) NULL,
      `ndi08` varchar(10) NULL,
      `ndi09` varchar(10) NULL,
      `ndi10` varchar(10) NULL,
      `n` varchar(10) NULL,
      `notes` varchar(10) NULL,
      `slc` varchar(30) NULL,
      `ni` varchar(10) NULL ,
      `nb` varchar(10) NULL,
      `sid01` varchar(10) NULL,
      `sid02` varchar(10) NULL,
      `sid03` varchar(10) NULL,
      `sid04` varchar(10) NULL,
      `sid05` varchar(10) NULL,
      `sid06` varchar(10) NULL,
      `sid07` varchar(10) NULL,
      `nd` varchar(10) NULL,
       PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

     $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss3template(
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `sen` varchar(10),
      `ssen` varchar(10) NULL,
      `sfr` varchar(10) NULL,
      `sd` varchar(10) NULL,
      `fd` varchar(10) NULL,
      `fr` varchar(10) NULL,
      `dd` varchar(10) NULL,
      `tx` varchar(10) NULL,
      `sas` varchar(20) NULL,
      `mt` varchar(10) NULL,
      `ch` varchar(10) NULL,
      `la` varchar(10) NULL,
      `ft` varchar(10) NULL,
      `bf` varchar(10) NULL,
      `hp` varchar(10) NULL,
      `oth5` varchar(10) NULL,
      `oth6` varchar(10) NULL,
      `oth7` varchar(10) NULL,
      `oth8` varchar(10) NULL,
      `n` varchar(10) NULL,
      `slc` varchar(30) NULL,
      `st` varchar(10) NULL,
      `ni` varchar(10) NULL ,
      `nb` varchar(10) NULL,
      `sid01` varchar(10) NULL,
      `sid02` varchar(10) NULL,
      `sid03` varchar(10) NULL,
      `sid04` varchar(10) NULL,
      `sid05` varchar(10) NULL,
      `sid06` varchar(10) NULL,
      `sid07` varchar(10) NULL,
      `nd` varchar(10) NULL,
       PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ss4template(
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `sen` varchar(10),
      `ssen` varchar(10) NULL,
      `sfr` varchar(10) NULL,
      `fr` varchar(10) NULL,

      `su` varchar(100),
      `sa` varchar(15), 
           `dso` varchar(15), 
      `dr` varchar(15),
      `ph` varchar(15) NULL ,
     `co` varchar(15)  NULL, 
    `wda` varchar(100) NULL, 
    `act` varchar(100) NULL, 
      `wl` varchar(10) NULL,
      `wl` varchar(20) NULL,
      `de` varchar(30) NULL,
      `ret` varchar(10) NULL,
      `wt` varchar(10) NULL ,
      `lwt` varchar(10) NULL,
      `sp` varchar(30) NULL,
      `spc` varchar(30) NULL,
      `n` varchar(10) NULL,
      `sps` varchar(30) NULL,
      `tc` varchar(10) NULL,
      `nc` varchar(10) NULL ,
      
       PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";


   
     $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ed1template (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `sen` varchar(10) NULL,
      `fr` varchar(10)  ,
      `dt` varchar(10) NULL ,
      `ea` varchar(10) ,
      `cr` varchar(10) ,
      `cp` varchar(10) ,
      `tcu` varchar(10),
      `hh` varchar(20) ,
      `sid` varchar(10) ,
      `me` varchar(10) NULL ,
      `ind` varchar(10) NULL ,
      `ht` varchar(10) NULL,
      `st` varchar(10) NULL ,
      `ft` varchar(10) NULL,
      `hp` varchar(10) NULL,
      `dd` varchar(10) NULL,
      `rnd` varchar(10) ,
      `blk` varchar(10) ,
      `shh` varchar(10),
      `stn` varchar(10),
      `vi` varchar(10) NULL ,
      `tr` varchar(10) NULL ,
      `dy` varchar(10) ,
      `hos` varchar(300) ,
      `vc` varchar(10) NULL,
      `notes` text ,
      `sn` varchar(10) ,
      `agrt` varchar(10) ,
      `invn` varchar(10) ,
      `lvk` varchar(10) ,
      `rfe` varchar(10) ,
      `wle` varchar(10) ,
      `evs` varchar(10) ,
      `wsn` varchar(10) ,
      `wsnc` varchar(10) ,
      `ckl` varchar(10) ,
      `cke` varchar(10) ,
      `gps` text ,
      
      `dsen` varchar(10) NULL ,
       PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

    $sql .= "CREATE TABLE IF NOT EXISTS ".$prefix."ed2template(
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `sen` varchar(10),
      `fr` varchar(10),
      `ssen` varchar(10) NULL,
      `sfr` varchar(10) NULL,
      `slc` varchar(30) NULL,
      `sbp` varchar(10) NULL,
      `sst` varchar(10) NULL,
      `ssid` varchar(20) NULL,
      `scc` varchar(10) NULL,
      `stx` varchar(10) NULL,
      `ssas` varchar(10) NULL,
      `ag` varchar(10) NULL,
      `n` varchar(10) NULL ,
      `sd` varchar(10) NULL,
      `st` varchar(10) NULL,
      `tr` varchar(10) NULL,
      `vi` varchar(10) NULL,
      `rep` varchar(10) NULL,
      `rnd` varchar(10) NULL,
      `dy` varchar(10) NULL,
      `oth1` varchar(10) NULL,
      `oth2` varchar(10) NULL,
      `oth3` varchar(10) NULL,
      `va` varchar(10) NULL,
      `dsen` varchar(10) NULL,
       PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";


    $sql .="CREATE VIEW ".$prefix."ss3_view AS
           SELECT ss3.id,ss3.edssid,ss3.sen,ss3.fr,ss3.ssen,ss3.sfr,ss3.sd,ss3.dd,ss3.tx,ss3.sas,ss3.mt,ss3.ch,
	           ss3.rep_no,ss3.cnr_no,ss3.exp_tr,ss3.st,ss3.dur,ss3.notes,rep_1,rep_2,rep_3,rep_4,cnr_1,cnr_2
           FROM ".$prefix."ss3 ss3 INNER JOIN ".$prefix."ss3b ss3b
             ON ss3.sen=ss3b.sen AND 
			    ss3.st=ss3b.st AND 
			    ss3.dur=ss3b.dur;";	


   //  $sql .= "";
   //  $sql .= "";
   
    $db->multi_query($sql);


           
        

   }



?>
