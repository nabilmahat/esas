<?php

include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$custId = mysqli_escape_string($conn,$_POST['cust_id']);
$deptName = mysqli_escape_string($conn,$_POST['dept_name']);

$findCustID = "SELECT cust_id FROM customer WHERE cust_id='".$custId."'";
$execFindCustID = mysqli_query($conn, $findCustID);

$countCustID = mysqli_num_rows($execFindCustID);

if ($countCustID == 0) {
}

?>