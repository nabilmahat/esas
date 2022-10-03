<?php
include "../connection/connection.php";

$custParam = $_POST["cust_id"];
$dateParam = $_POST["report_date"];

list($yearParam, $monthParam) = explode("-", $dateParam);

$queryDepartmental = "SELECT SUM(report.usage_size) as total_size, department.dept_name as dept_name, customer.cust_name
                    FROM report
                    INNER JOIN folder
                    ON report.folder_id = folder.folder_id
                    INNER JOIN department
                    ON folder.dept_id = department.dept_id
                    INNER JOIN customer
                    ON department.cust_id = customer.cust_id
                    WHERE report.month = '".$monthParam."' AND report.year = '".$yearParam."' AND customer.cust_id = '".$custParam."'
                    GROUP BY department.dept_name";

$execQueryDepartmental = mysqli_query($conn, $queryDepartmental);

$rows = array();
while($r = mysqli_fetch_assoc($execQueryDepartmental)) {
    $rows[] = $r;
}
echo json_encode($rows);

?>