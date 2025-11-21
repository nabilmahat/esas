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
            $colLogCount = 0;
            $colPathIndex = 0;
            $colReportDate = 0;

            if (($handle = fopen($fileName, "r")) !== FALSE) {
                $rowIndex = 0;
                $delimiter = ","; // default delimiter

                // Auto-detect delimiter from first line
                $firstLine = fgets($handle);
                rewind($handle); // reset file pointer to beginning

                // Check for tab delimiter
                if (substr_count($firstLine, "\t") > substr_count($firstLine, ",")) {
                    $delimiter = "\t";
                }

                // convert data to object from column 1 and 4, push data to array
                while (($data = fgetcsv($handle, 0, $delimiter)) !== FALSE) {

                    // First row - parse header to find column indices
                    if ($rowIndex == 0) {
                        foreach ($data as $index => $columnName) {
                            $columnName = trim($columnName);

                            if (strpos($columnName, 'path[directory:') !== false) {
                                $colPathIndex = $index;
                            }
                            if ($columnName == 'dir_cnt (count)') {
                                $colDirCount = $index;
                            }
                            if ($columnName == 'file_cnt (count)') {
                                $colfileCount = $index;
                            }
                            if ($columnName == 'ads_cnt') {
                                $colAdsCount = $index;
                            }
                            if ($columnName == 'other_cnt (count)') {
                                $colOtherCount = $index;
                            }
                            if ($columnName == 'log_sum_size (bytes)') {
                                $colLogCount = $index;
                            }
                            if ($columnName == 'phys_size_sum (bytes)') {
                                $colPhysCount = $index;
                            }
                            if (strpos($columnName, 'report_date:') !== false) {
                                $colReportDate = $index;
                                // Extract timestamp from header
                                $parts = explode(':', $columnName);
                                if (count($parts) > 1) {
                                    $detailDate = trim($parts[1]);
                                }
                            }
                        }
                        $rowIndex++;
                        continue;
                    }

                    // Skip empty rows
                    if (empty($data[$colPathIndex]) || trim($data[$colPathIndex]) == '') {
                        $rowIndex++;
                        continue;
                    }

                    // Extract directory name from path
                    $fullPath = trim($data[$colPathIndex]);
                    $dirName = substr($fullPath, strrpos($fullPath, '/') + 1);

                    array_push($detail, (object)[
                        'dir' => $dirName,
                        'dir_name' => $fullPath,
                        'size' => isset($data[$colPhysCount]) ? $data[$colPhysCount] : 0,
                        'dir_cnt' => isset($data[$colDirCount]) ? $data[$colDirCount] : 0,
                        'file_cnt' => isset($data[$colfileCount]) ? $data[$colfileCount] : 0,
                        'ads_cnt' => isset($data[$colAdsCount]) ? $data[$colAdsCount] : 0,
                        'other_cnt' => isset($data[$colOtherCount]) ? $data[$colOtherCount] : 0
                    ]);

                    $rowIndex++;
                }
                fclose($handle); // close file stream

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

                            $dirCnt = 0;
                            $fileCnt = 0;
                            $adsCnt = 0;
                            $otherCnt = 0;

                            if (is_numeric($value->dir_cnt)) {
                                $dirCnt = $value->dir_cnt;
                            }
                            if (is_numeric($value->file_cnt)) {
                                $fileCnt = $value->file_cnt;
                            }
                            if (is_numeric($value->ads_cnt)) {
                                $adsCnt = $value->ads_cnt;
                            }
                            if (is_numeric($value->other_cnt)) {
                                $otherCnt = $value->other_cnt;
                            }

                            $insertReport = "INSERT INTO 
                                            report (folder_id, usage_size, month, year, file_hash, price_per_gb, file_name, folder_dir, dir_count, file_count, ads_count, other_count, cust_id)
                                        VALUES
                                            ('".$rowDir['folder_id']."','".$value->size."','".$monthString."','".$YearString."','".$hashedFile."', '".$rowDir['price']."',
                                            '".basename($_FILES["file_name"]["name"], '.csv')."', '".$value->dir_name."', '".$dirCnt."','".$fileCnt."','".$adsCnt."','".$otherCnt."', '".$custID."')";
        
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
        echo "alert('". pathinfo($fileName) ."');";
        echo "</script>";
    }
}
?>