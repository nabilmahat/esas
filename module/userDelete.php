<?php
include "../connection/connection.php";

$userID = $_POST["id"];

$queryDelete = "DELETE FROM user WHERE id = '".$userID."'; ";
$execQueryDelet = mysqli_query($conn, $queryDelete);

echo "success_delete";

?>