<?php
include "../connection/connection.php";

$fileName = mysqli_real_escape_string($conn, $_POST["file_name"]);
$month = mysqli_real_escape_string($conn, $_POST["month"]);
$year = mysqli_real_escape_string($conn, $_POST["year"]);

$reportObject = new stdClass();
$report = [];

$queryStatement = "SELECT * 
                    FROM report 
                    WHERE month = '".$month."' AND year = '".$year."' AND file_name = '".$fileName."';" ;
$execQuery = mysqli_query($conn, $queryStatement);

foreach ($execQuery as $data) {
    array_push($report,  (object)[
        'directory' => $data["folder_dir"],
        'dir_count' => $data["dir_count"],
        'file_count' => $data["file_count"],
        'ads_count' => $data["ads_count"],
        'other_count' => $data["other_count"],
        'physical_size' => $data["usage_size"],
    ]);
}

echo json_encode($report);

?>