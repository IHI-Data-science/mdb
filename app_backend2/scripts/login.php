<?php include_once('../includes/load.php');


  $a=array();
  $b=array();

  $user;

  if(isset($_POST['email']) && isset($_POST['password'])) {

  	$username = $_POST['email'];
	$password = $_POST['password'];

    $user = authenticate($username, $password);

  if($user){
  
    updateLastLogIn($user['staff_id']);
    
	$b["success"] = 1;
	$b["error"] = 0;
	$user_id = $user['staff_id'];
	$b["fname"] = $user['fname'];
	$b["lname"] = $user['lname'];
	$b["email"] = $user['email'];
	$b["staffid"] = $user['staff_id'];
	$b["username"] = $user['username'];
	$b["seculevel"] = $user['seculevel'];
	$b["password"] = $user['password'];

    array_push($a,$b);
     
  } else {

    $b["success"] = 0;
    $b["error"] = 1;
    $b["error_msg"] = "Incorrect email or password!";
    array_push($a,$b);
    
  }

  echo json_encode($b);

}

else{

        echo "IEBS App";
    }




?>
