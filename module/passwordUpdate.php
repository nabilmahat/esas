<?php
include "../connection/connection.php";

$userEmail = $_SESSION["email"];
$currPassword = $_POST["current_password"];
$newPassword = $_POST["new_password"];

$queryUser = "SELECT * FROM user WHERE email = '".$userEmail."'; ";
$execQueryUser = mysqli_query($conn, $queryUser);

$row = mysqli_fetch_array($execQueryUser,MYSQLI_ASSOC);
$count = mysqli_num_rows($execQueryUser);

if($count==1){

	if (password_verify($currPassword, $row["password"])) {

        $hashedPassword = password_hash($newPassword, PASSWORD_DEFAULT);

        $queryUpdate = "UPDATE user
                        SET password = '".$hashedPassword."'
                        WHERE email = '".$userEmail."'; ";
        $execQueryUpdate = mysqli_query($conn, $queryUpdate);
        
        echo "success_change_password";
    } else {
        echo "password_invalid";
    }
} else {
    echo "invalid_user";
}

?>