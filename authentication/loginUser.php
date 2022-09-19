<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$date = date("Y-m-d H:i:s");
$dateString = date("YmdHis");

$id = mysqli_escape_string($conn,$_POST['username']);
$password = mysqli_escape_string($conn,$_POST['password']);

$queryUser = "SELECT * FROM user WHERE username = '".$id."' and password = '".$password."' ";

$result = mysqli_query($conn,$queryUser);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);

$count = mysqli_num_rows($result);

if($count==1){

    $username = $row['username'];
    $user_role = $row['user_role'];

	// set username session
	$_SESSION['username'] = $username;

  	if($user_role=='user'){
    	
        // set user_role session
    	$_SESSION['user_role'] = $user_role;
    	echo "<script>";
		echo "location.href = '../index.php';";
		echo "</script>";
    }
	// else if($user_type=='Counselor'){       
	    
	//     $_SESSION['user_type'] = $user_type;
	//     echo "<script> alert('Successfully Login');";
	// 	echo "location.href = '../counselor/view-appointment-list.php';";
	// 	echo "</script>";
	// }
	// else if($user_type=='Admin'){       
	    
	//     $_SESSION['user_type'] = $user_type;
	//     echo "<script> alert('Successfully Login');";
	// 	echo "location.href = '../admin/view-patient-list.php';";
	// 	echo "</script>";
	// }
}
else
{
	echo "<script> alert('Wrong Email Or Password');";
	echo "location.href = '../login.php';";
	echo "</script>";
}

?>