<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$reportDate = $_POST["reportDate"];
$custID = $_POST["paramCustID"];

list($yearString, $monthString) = explode("-", $reportDate);

// init object and array 'detail'
$object = new stdClass();
$detail = [];

// __DIR__ = current project file (csv.php)
$uploadDir = __DIR__."/../reports/breakdown/";
$fileName = $uploadDir . basename($_FILES["file_name"]["name"]);
$uploadOk = 1;

$fileInfo = pathinfo($fileName);
$hashedFile = sha1($_FILES["file_name"]["name"]);
// add file checking before process

if($fileName) {
    if (move_uploaded_file($_FILES["file_name"]["tmp_name"], $fileName)) {
        try {
            if (($handle = fopen($fileName, "r")) !== FALSE) {
                // convert data to object from column 1 and 4, push data to array
                while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {
                    array_push($detail,  (object)[
                        'dir' => str_replace("'","`",$data[0]),
                        'size' => $data[2]
                    ]);
                }
            fclose($handle); // close file stream
            array_shift($detail); // remove 1st line data from csv (header)

            $procCount = 0;
            $procXCount = 0;

            foreach ($detail as $value) {

                // find dir registered or not
                $findUnit = "SELECT * 
                            FROM breakdown 
                            WHERE unit = '".$value->dir."'
                            AND cust_id = '".$custID."'
                            AND month = '".$monthString."'
                            AND year = '".$yearString."' ";
                $execFindUnit = mysqli_query($conn, $findUnit);

                $rowUnit = mysqli_fetch_array($execFindUnit, MYSQLI_ASSOC);

                // dir registered
                if (mysqli_num_rows($execFindUnit)==0) {
                    $insertReport = "INSERT INTO 
                                        breakdown (unit, usage_size, month, year, cust_id)
                                    VALUES
                                        ('".$value->dir."','".$value->size."','".$monthString."','".$yearString."','".$custID."')";
                    $execInsertReport = mysqli_query($conn, $insertReport);

                    $procCount++;
                } else {
                    $procXCount++;
                }
            }
        }
        } catch(Exception $e) {
            echo 'Message: ' .$e->getMessage();
        }

        echo "<script>";
        echo "console.log('".$custID."');";
        echo "console.log('".$reportDate."');";
        echo "location.href = '../report-detail.php?cust_id=".$custID."&report_date=".$yearString."-".$monthString."';";
        // echo "alert('". pathinfo($fileName) ."');";
        echo "</script>";
    }
}
?>