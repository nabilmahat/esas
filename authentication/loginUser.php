<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$date = date("Y-m-d H:i:s");
$dateString = date("YmdHis");

$id = mysqli_escape_string($conn,$_POST['username']);
$password = mysqli_escape_string($conn,$_POST['password']);

$queryUser = "SELECT * FROM user WHERE username = '".$id."'; ";

$result = mysqli_query($conn,$queryUser);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);

$count = mysqli_num_rows($result);

if($count==1){

	if (password_verify($password, $row["password"])) {

    $username = $row['username'];
    $user_role = $row['user_role'];
	$user_email = $row['email'];

	// set username session
	$_SESSION['username'] = $username;
	$_SESSION['user_role'] = $user_role;
	$_SESSION['email'] = $user_email;
	
	echo "success";
	}
}
else
{
	echo "failed";
}

?>