<?php
include "../connection/connection.php";

$email = mysqli_escape_string($conn,$_POST["email"]);
$username = mysqli_escape_string($conn,$_POST["username"]);
$fullname = mysqli_escape_string($conn,$_POST["fullname"]);
$role = mysqli_escape_string($conn,$_POST["role"]);
$password = mysqli_escape_string($conn,$_POST["password"]);

$respondData = new stdClass();

$errorMessage = [];

$queryEmail = "SELECT * FROM user WHERE email = '".$email."' ";
$resultEmail = mysqli_query($conn,$queryEmail);
$countEmail = mysqli_num_rows($resultEmail);
if ($countEmail == 1) array_push($errorMessage, 'email_exist');

$queryUsername = "SELECT * FROM user WHERE username = '".$username."' ";
$resultUserName = mysqli_query($conn,$queryUsername);
$countUsername = mysqli_num_rows($resultUserName);
if ($countUsername == 1) array_push($errorMessage, 'username_exist');

if (count($errorMessage) != 0) {

    $respondData->status  = 'failed';
    $respondData->message = $errorMessage;
    $respondMessage = json_encode($respondData);

    echo $respondMessage;
} else {

    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    $addUser = "INSERT INTO user (email, username, fullname, user_role, password)
                    VALUES ('".$email."','".$username."','".$fullname."','".$role."','".$hashedPassword."')";
    $execAddUser = mysqli_query($conn, $addUser);

    $respondData->status  = 'success_add_user';
    $respondData->message = $errorMessage;
    $respondMessage = json_encode($respondData);

    echo $respondMessage;
    
}

?>