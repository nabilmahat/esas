<?php
include "../connection/connection.php";

// error ouput if any la
ini_set('display_errors',1);
error_reporting(E_ALL);

date_default_timezone_set('Asia/Kuala_Lumpur');

$reportDate = $_POST["reportDate"];
$custID = $_POST["paramCustID"];

list($YearString, $monthString) = explode("-", $reportDate);

// init object and array 'detail'
$object = new stdClass();
$detail = [];
$detailDate = '';

// __DIR__ = current project file (csv.php)
$realPath = realpath(__DIR__ . '/..');
$uploadDir = $realPath."/reports/";
$fileName = $uploadDir . basename($_FILES["file_name"]["name"]);
$uploadOk = 1;

$fileInfo = pathinfo($fileName);
$hashedFile = sha1($_FILES["file_name"]["name"]);
// add file checking before process

if($fileName) {
    if (move_uploaded_file($_FILES["file_name"]["tmp_name"], $fileName)) {
        try {
            $colPhysCount = 0;
            $colDirCount = 0;
            $colfileCount = 0;
            $colAdsCount = 0;
            $colOtherCount = 0;
            if (($handle = fopen($fileName, "r")) !== FALSE) {
                // convert data to object from column 1 and 4, push data to array
                while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {
                    $colPhyNum = 0;
                    $colDirNum = 0;
                    $colFileNum = 0;
                    $colAdsNum = 0;
                    $colOtherNum = 0;
                    foreach ($data as $rows) {

                        if($rows == 'phys_size_sum (bytes)') {
                            $colPhysCount = $colPhyNum;
                        }
                        $colPhyNum++;

                        if($rows == 'dir_cnt (count)') {
                            $colDirCount = $colDirNum;
                        }
                        $colDirNum++;

                        if($rows == 'file_cnt (count)') {
                            $colfileCount = $colFileNum;
                        }
                        $colFileNum++;

                        if($rows == 'ads_cnt') {
                            $colAdsCount = $colAdsNum;
                        }
                        $colAdsNum++;

                        if($rows == 'other_cnt (count)') {
                            $colOtherCount = $colOtherNum;
                        }
                        $colOtherNum++;
                    }
                    // get report date
                    // if($data[8]!="") {
                    //     $detailDate = $data[8];
                    // }
                    $dirName = substr($data[0], strrpos($data[0], '/') + 1);
                    array_push($detail,  (object)[
                        'dir' => $dirName,
                        'dir_name' => $data[0],
                        'size' => $data[$colPhysCount],
                        'dir_cnt' => $data[$colDirCount],
                        'file_cnt' => $data[$colfileCount],
                        'ads_cnt' => $data[$colAdsCount],
                        'other_cnt' => $data[$colOtherCount]
                    ]);
                }
                fclose($handle); // close file stream
                array_shift($detail); // remove 1st line data from csv (header)

                // get detail from millisecond
                $detailDate = substr($detailDate, strpos($detailDate, ":") + 1);    

                // $monthString = date("m", $detailDate);
                // $YearString = date("Y", $detailDate);

                foreach ($detail as $value) {

                    // find dir registered or not
                    $findDir = "SELECT * 
                                FROM folder 
                                INNER JOIN department
                                ON folder.dept_id = department.dept_id
                                INNER JOIN customer
                                ON department.cust_id = customer.cust_id
                                INNER JOIN price
                                ON customer.cust_id = price.cust_id
                                WHERE folder.folder_short_name = '".$value->dir."'
                                AND customer.cust_id = '".$custID."' ";
                    $execFindDir = mysqli_query($conn, $findDir);

                    $rowDir = mysqli_fetch_array($execFindDir, MYSQLI_ASSOC);

                    // dir registered
                    if (mysqli_num_rows($execFindDir)>0) {

                        // find report row inserted or not
                        $findReportRow = "SELECT * FROM report 
                                        WHERE folder_id = '".$rowDir['folder_id']."' AND month = '". $monthString ."' AND year = '". $YearString ."' AND file_hash = '". $hashedFile ."' ";
                        $execfindReportRow = mysqli_query($conn, $findReportRow);

                        $rowReport = mysqli_fetch_array($execfindReportRow, MYSQLI_ASSOC);

                        // report row existed => add to current row / ignore
                        if (mysqli_num_rows($execfindReportRow)==1) {

                            // update usage value
                            $newSize = (int)$rowReport['usage_size'] + (int)$value->size;
                            $updateQuery = "UPDATE report SET usage_size = '".$newSize."' WHERE id = '".$rowReport['id']."' ";

                        } else { // report row not existed

                            $insertReport = "INSERT INTO 
                                            report (folder_id, usage_size, month, year, file_hash, price_per_gb, file_name, folder_dir, dir_count, file_count, ads_count, other_count)
                                        VALUES
                                            ('".$rowDir['folder_id']."','".$value->size."','".$monthString."','".$YearString."','".$hashedFile."', '".$rowDir['price']."',
                                            '".basename($_FILES["file_name"]["name"], '.csv')."', '".$value->dir_name."', '".$value->dir_cnt."','".$value->file_cnt."','".$value->ads_cnt."','".$value->other_cnt."')";
        
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
        echo "console.log('".$fileInfo['extension']."');";
        echo "location.href = '../report-detail.php?cust_id=".$custID."&report_date=".$YearString."-".$monthString."';";
        // echo "alert('". pathinfo($fileName) ."');";
        echo "</script>";
    }
}
?>