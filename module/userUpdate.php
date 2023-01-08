<?php
include "../connection/connection.php";

$email_param = mysqli_escape_string($conn,$_POST['email_param']);
$email = mysqli_escape_string($conn,$_POST['email']);
$username_param = mysqli_escape_string($conn,$_POST['username_param']);
$username = mysqli_escape_string($conn,$_POST['username']);
$fullname = mysqli_escape_string($conn,$_POST['fullname']);

$queryUser = "SELECT * FROM user WHERE username = '".$username_param."' and email = '".$email_param."' ";
$result = mysqli_query($conn,$queryUser);

$count = mysqli_num_rows($result);

$errorMessage = [];

if($count==1){    

    $respondData = new stdClass();

    $userData = mysqli_fetch_array($result,MYSQLI_ASSOC);
    
    if ($email_param != $email) {
        $queryEmail = "SELECT * FROM user WHERE email = '".$email."' ";
        $resultEmail = mysqli_query($conn,$queryEmail);
        $countEmail = mysqli_num_rows($resultEmail);

        if ($countEmail == 1) array_push($errorMessage, 'email_exist');
    }

    if ($username_param != $username) {
        $queryUsername = "SELECT * FROM user WHERE username = '".$username."' ";
        $resultUserName = mysqli_query($conn,$queryUsername);
        $countUsername = mysqli_num_rows($resultUserName);

        if ($countUsername == 1) array_push($errorMessage, 'username_exist');
    }

    if (count($errorMessage) != 0) {

        $respondData->status  = 'failed';
        $respondData->message = $errorMessage;
        $respondMessage = json_encode($respondData);

        echo $respondMessage;
    } else {

        $updateUser = "UPDATE user
                        SET username = '".$username."', email = '".$email."', fullname = '".$fullname."'
                        WHERE id = '".$userData['id']."'; ";
        $execUpdateUser = mysqli_query($conn, $updateUser);


        $respondData->status  = 'success_update_user';
        $respondData->message = $errorMessage;
        $respondMessage = json_encode($respondData);

        echo $respondMessage;
        
    }

}
else
{

    $respondData->status  = 'user_not_exist';
    $respondData->message = $errorMessage;
    $respondMessage = json_encode($respondData);

    echo $respondMessage;
}

?>