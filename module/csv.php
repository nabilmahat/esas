<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

// init object and array 'detail'
$object = new stdClass();
$detail = [];
$detailDate = '';

// __DIR__ = current project file (csv.php)
$uploadDir = __DIR__."/../reports/";
$fileName = $uploadDir . basename($_FILES["file_name"]["name"]);
$uploadOk = 1;

if($fileName) {
    if (move_uploaded_file($_FILES["file_name"]["tmp_name"], $fileName)) {
        try {
            if (($handle = fopen($fileName, "r")) !== FALSE) {
                // convert data to object from column 1 and 4, push data to array
                while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {
                    // get report date
                    if($data[7]!="") {
                        $detailDate = $data[7];
                    }
                    array_push($detail,  (object)[
                        'dir' => $data[0],
                        'size' => $data[5]
                    ]);
                }
            fclose($handle); // close file stream
            array_shift($detail); // remove 1st line data from csv (header)

            // get detail from millisecond
            $detailDate = substr($detailDate, strpos($detailDate, ":") + 1);    

            $monthString = date("m", $detailDate);
            $YearString = date("Y", $detailDate);

            foreach ($detail as $value) {

                // find dir registered or not
                $findDir = "SELECT * FROM folder WHERE folder_directory = '".$value->dir."' ";
                $execFindDir = mysqli_query($conn, $findDir);

                $rowDir = mysqli_fetch_array($execFindDir, MYSQLI_ASSOC);

                // dir registered
                if (mysqli_num_rows($execFindDir)==1) {

                    // find report row inserted or not
                    $findReportRow = "SELECT * FROM report 
                                    WHERE folder_id = '".$rowDir['folder_id']."' AND month = '". $monthString ."' AND year = '". $YearString ."' ";
                    $execfindReportRow = mysqli_query($conn, $findReportRow);

                    $rowReport = mysqli_fetch_array($execfindReportRow, MYSQLI_ASSOC);

                    // report row existed => add to current row / ignore
                    if (mysqli_num_rows($execfindReportRow)==1) {

                    } else { // report row not existed

                        $insertReport = "INSERT INTO 
                                          report (folder_id, usage_size, month, year)
                                      VALUES
                                          ('".$rowDir['folder_id']."','".$value->size."','".$monthString."','".$YearString."')";
    
                        $execInsertReport = mysqli_query($conn, $insertReport);

                    }
                } else { // not registered => can choose to register
                    
                }
            }
        }
        } catch(Exception $e) {
            echo 'Message: ' .$e->getMessage();
        }

        echo "<script>";
        echo "location.href = '../report-detail.php?cust_id=&report_date=".$YearString."-".$monthString."';";
        // echo "alert(". count($detail) .");";
        echo "</script>";
    }
}
?>