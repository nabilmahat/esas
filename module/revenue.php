<?php
include "../connection/connection.php";

$month = date('m');
$year = date('Y');

if (isset($_POST["year"])) {
    echo "<script>";
    echo "alert('ADA');";
    echo "</script>";
}

$chart2 = [];
$monthArray = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'];
// total/1073741824

foreach($monthArray as $a) {

    $usageData = "SELECT SUM(usage_size) AS str_usage, price_per_gb AS price FROM report WHERE year = '".$year."' AND month = '".$a."';";
    $execUsageData = mysqli_query($conn, $usageData);

    if(mysqli_num_rows($execUsageData)==1) {   
        $row = mysqli_fetch_array($execUsageData,MYSQLI_ASSOC);  
        if ($row["str_usage"]) {
            array_push($chart2, (object)[
                'total_usage' => $row["str_usage"],
                'price' => $row["price"]
            ]); 
        } else {
            array_push($chart2, (object)[
                'total_usage' => 0,
                'price' => 0
            ]);
        }
        } else {
            array_push($chart2, (object)[
                'total_usage' => 0,
                'price' => 0
            ]);
        }

    }

echo json_encode($chart2);

?>