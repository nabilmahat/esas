<?php
include "../connection/connection.php";

$custParam = $_POST["cust_id"];
$dateParam = $_POST["report_date"];

list($yearParam, $monthParam) = explode("-", $dateParam);

$listDirectory = "SELECT *
                FROM report 
                INNER JOIN folder ON report.folder_id = folder.folder_id 
                INNER JOIN department ON department.dept_id = folder.dept_id 
                INNER JOIN customer ON customer.cust_id = department.cust_id 
                WHERE month = '".$monthParam."' AND year = '".$yearParam."' AND customer.cust_id = '".$custParam."' ";
$execListDirectory = mysqli_query($conn, $listDirectory);

$rows = array();
while($r = mysqli_fetch_assoc($execListDirectory)) {
    $rows[] = $r;
}
echo json_encode($rows);
?>