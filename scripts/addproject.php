<?php include_once('../includes/load.php');


  if(isset($_POST['addproj'])){

   $req_fields = array('pc','pn','expno');
   validate_fields($req_fields);
   validate_pc( $_POST['pc']  );

   $id = gen_pro_id();

   $staff_id = $current_user['staff_id'];
   $datecreated = make_date();
  
   if(empty($errors)){

    $pn   = remove_junk($db->escape($_POST['pn']));
    $pc   = remove_junk($db->escape($_POST['pc']));
    $exp  = remove_junk($db->escape($_POST['expno']));
    $site   = remove_junk($db->escape($_POST['site']));
    $esd   = remove_junk($db->escape($_POST['esd']));
    $efd   = remove_junk($db->escape($_POST['efd']));
    $eap   = 1;
    $rsn   = remove_junk($db->escape($staff_id));
    $pin   = remove_junk($db->escape($staff_id));



    $query = "INSERT INTO projectreg (";
    $query .="id,pc, expno, pn, eap, rsn, pin, esd, efd";
    $query .=") VALUES (";
    $query .="'{$id}','{$pc}', '{$exp}', '{$pn}', '{$eap}','{$rsn}','{$pin}','{$esd}','{$efd}'";
    $query .=")";

    if($db->query($query)){
    //success

    //grant access
    $query_grant = "INSERT INTO grantproject (";
    $query_grant .="pid,staff_id, created_by, datecreated";
    $query_grant .=") VALUES (";
    $query_grant .="'{$id}','{$rsn}', '{$staff_id}', '{$datecreated}'";
    $query_grant .=")";


    $query_site = "INSERT INTO projectregsite (";
    $query_site .="site_id,projectreg_id";
    $query_site .=") VALUES (";
    $query_site .="'{$site}','{$id}'";
    $query_site .=")";

    $db->query($query_grant);

    $db->query($query_site);

    createtables($id);

    $session->msg_("s","Project successfully added");

    redirect('../project_manage.php', false);
    } else {
    //failed
    $session->msg_("d","Failed to add project!");
    redirect('../project_add.php', false);
    }

 }
  else {
   $session->msg_("d", $errors);
   redirect('../project_add.php',false);
}

}

?>

