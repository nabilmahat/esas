<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$reportID = mysqli_escape_string($conn,$_GET['report_id']);

$custId = mysqli_escape_string($conn,$_GET['cust_id']);
$reportDate = mysqli_escape_string($conn,$_GET['report_date']);

$delete = "DELETE FROM report WHERE id = '".$reportID."';";
$execQuery = mysqli_query($conn, $delete);

echo "<script>";
echo "location.href = '../report-detail.php?cust_id=".$custId."&report_date=".$reportDate."';";
echo "</script>";

?>