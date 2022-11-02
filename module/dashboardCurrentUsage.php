<?php
include "../connection/connection.php";

if(isset($_POST["year"])&&isset($_POST["month"])) {
    $year = $_POST["year"];
    $month = $_POST["month"];
} else {
    $month = date('m');
    $year = date('Y');
}

$chart1 = [];

$getCustomerList = "SELECT * FROM customer INNER JOIN price ON customer.cust_id = price.cust_id;";

$execGetCustomerList = mysqli_query($conn, $getCustomerList);

foreach ($execGetCustomerList as $customer) {

    // Current Usage By Customer Chart
    $sumSize = 0;

    $getUsageSize = "SELECT SUM(usage_size) AS size 
                    FROM report 
                    INNER JOIN folder
                    ON report.folder_id = folder.folder_id
                    INNER JOIN department
                    ON folder.dept_id = department.dept_id                    
                    WHERE year = '".$year."' AND month = '".$month."' AND department.cust_id = '".$customer["cust_id"]."'; ";

    $execGetUsageSize = mysqli_query($conn, $getUsageSize);

    if(mysqli_num_rows($execGetUsageSize)==1) {        
        $row = mysqli_fetch_array($execGetUsageSize,MYSQLI_ASSOC);
        array_push($chart1, (object)[
            'cust_name' => $customer["cust_name"],
            'total_usage' => $row["size"]
        ]);
    } else {
        array_push($chart1, (object)[
            'cust_name' => $customer["cust_name"],
            'total_usage' => 0
        ]);
    }

}
echo json_encode($chart1);

?>