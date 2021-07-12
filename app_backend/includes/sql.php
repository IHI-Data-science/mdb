<?php

/**
 * Created by Dickson Msaky @ Ifakara Health Insitute (2018)
 */

require_once('load.php');

function find_all($table) {
 global $db;
 if(tableExists($table))
 {
   return find_by_sql("SELECT * FROM ".$db->escape($table));
 }
}

function find_all_distinct($table,$dfield) {
 global $db;
 if(tableExists($table))
 {
   return find_by_sql("SELECT distinct {$db->escape($dfield)} FROM ".$db->escape($table)." order by {$db->escape($dfield)} asc");
 }
}

function find_by_sql($sql)
{
  global $db;
  $result = $db->query($sql);
  $result_set = $db->while_loop($result);
  return $result_set;
}

function find_row_count($sql)
{
  global $db;
  $result = $db->query($sql);
  $result_count = $db->num_rows($result);
  return $result_count;
}

function find_by_($table,$field,$id)
{
  global $db;
  $id = (int)$id;
  if(tableExists($table)){
    $sql = $db->query("SELECT * FROM {$db->escape($table)} WHERE $field='$id' LIMIT 1");
    if($result = $db->fetch_assoc($sql))
      return $result;
    else
      return null;
  }
}

 function find_all_by($table,$field,$key){
    global $db;
    $sql  = "SELECT * FROM {$db->escape($table)} ";
    $sql .= " WHERE $field ='{$key}'";
    return find_by_sql($sql);
  }

function delete_by_($table,$field,$id)
{
  global $db;
  if(tableExists($table))
  {
    $sql = "DELETE FROM ".$db->escape($table);
    $sql .= " WHERE ".$db->escape($field)."=".$id;
    $sql .= " LIMIT 1";
    $db->query($sql);
    return ($db->affected_rows() === 1) ? true : false;
  }
}

function delete_all($table)
{
  global $db;
  if(tableExists($table))
  {
    $sql = "TRUNCATE TABLE  ".$db->escape($table);
    $result = $db->query($sql);
    return ($result) ? true : false;
  }
}


function count_by_id($table){
  global $db;
  if(tableExists($table))
  {
    $sql    = "SELECT COUNT(id) AS total FROM ".$db->escape($table);
    $result = $db->query($sql);
    return($db->fetch_assoc($result));
  }
}

function tableExists($table){
  global $db;
  $table_exit = $db->query('SHOW TABLES FROM '.DB_NAME.' LIKE "'.$db->escape($table).'"');
  if($table_exit) {
    if($db->num_rows($table_exit) > 0)
      return true;
    else
      return false;
  }
}

function authenticate($username='', $password='') {
  global $db;
  $username = $db->escape($username);
  $password = $db->escape($password);
  $sql  = sprintf("SELECT * FROM staff WHERE email ='%s' LIMIT 1", $username);
  $result = $db->query($sql);
  if($db->num_rows($result)){
    $user = $db->fetch_assoc($result);
    if(password_verify($password,$user['password'])){ 
      return $user;
    }
  }
  return false;
}

function updateLastLogIn($user_id){
    global $db;
    $date = make_date();
    $sql = "UPDATE staff SET last_login='{$date}' WHERE staff_id ='{$user_id}' LIMIT 1";
    $result = $db->query($sql);
    return ($result && $db->affected_rows() === 1 ? true : false);
  }
 
function find_by_groupLevel($level){
    global $db;
    $sql = "SELECT group_level FROM staff_groups WHERE group_level = '{$db->escape($level)}' LIMIT 1 ";
    $result = $db->query($sql);
    return($db->num_rows($result) === 0 ? true : false);
  }


function join_project_table(){
  global $db;
  $sql  =" SELECT proj.id,proj.pc,proj.expno,proj.pn,proj.esd,proj.efd,psite.site_id";
  $sql  .=" FROM projectreg proj";
  $sql  .=" LEFT JOIN projectregsite psite ON psite.projectreg_id = proj.id";
  $sql  .=" ORDER BY proj.id ASC";
  return find_by_sql($sql);

}

function findsitename($val){
  global $db;
  $sql = "SELECT site_name FROM site WHERE site_id = '{$db->escape($val)}' LIMIT 1 ";
  $result = $db->query($sql);
  $result2 = $db->fetch_array($result);
  return $result2['site_name'];
}

function findstaffname($val){
  global $db;
  $sql = "SELECT username FROM staff WHERE staff_id = '{$db->escape($val)}' LIMIT 1 ";
  $result = $db->query($sql);
  $result2 = $db->fetch_array($result);
  return $result2['username'];
}

function findsiteid($val){
  global $db;
  $sql = "SELECT site_id FROM projectregsite WHERE projectreg_id = '{$db->escape($val)}' LIMIT 1 ";
  $result = $db->query($sql);
  $result2 = $db->fetch_array($result);
  return $result2['site_id'];
}

function getcolumnname($projectcode,$table,$table2){
  global $db;
  $col = "";
  $query = "SELECT * FROM ".$table." WHERE pc='".$projectcode."' AND ft='".$table2."'";  
  $result = $db->query($query);   
  $num_row = mysqli_num_rows($result);
  if($num_row == 1){       
      //fetch data from query executed above
      $row = mysqli_fetch_array($result);

      $_SESSION["SESS_P_ATTRI"] = $row["p_attri"]; 
      $col =   $row["p_attri"];          
    }
   return $col;
}

  function getcolumnname2($projectcode,$table,$table2){
  global $db;
  $col = "";
  $query = "SELECT * FROM ".$table." WHERE pc='".$projectcode."' AND ft='".$table2."'";
  $result = $db->query($query); 
  $num_row = mysqli_num_rows($result);
  if($num_row == 1){     
      //fetch data from query executed above
      $row = mysqli_fetch_array($result);
      $_SESSION["SESS_P_ATTRI"] = $row["p_attri"]; 
      $col =   $row["p_attri2"];          
    }
   return $col;
}


?>
