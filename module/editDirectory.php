<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$dirID = mysqli_escape_string($conn,$_POST['dir_id']);
$dir = mysqli_escape_string($conn,$_POST['dir']);
$oldDir = mysqli_escape_string($conn,$_POST['old_dir']);
$dirName = mysqli_escape_string($conn,$_POST['dir_name']);
$dirShortName = substr($dir, strrpos($dir, '/') + 1);
$custID = mysqli_escape_string($conn,$_POST['cust_id']);
$deptID = mysqli_escape_string($conn,$_POST['dept_id']);

$findDeptFold = "SELECT * FROM folder 
                INNER JOIN department ON folder.dept_id = department.dept_id
                WHERE folder.dept_id = '".$deptID."' AND folder.folder_id = '".$dirID."'; ";
$execFindDeptFold = mysqli_query($conn, $findDeptFold);

$numRows = mysqli_num_rows($execFindDeptFold);

if ($numRows == 1) {

    if ($dir == $oldDir) {

        $queryUpdateDir = "UPDATE folder
                                    SET folder_directory = '".$dir."', folder_name = '".$dirName."', folder_short_name = '".$dirShortName."'
                                    WHERE folder_id = '".$dirID."' AND dept_id = '".$deptID."' ";
        $execQueryUpdateDir = mysqli_query($conn, $queryUpdateDir);

        if ($execQueryUpdateDir) {
            echo json_encode((object)[
                'status' => true,
                'message' => "success_update_dir"
            ]);
        } else {
            echo json_encode((object)[
                'status' => false,
                'message' => "failed_update_dir"
            ]);
        } 

    } else {

        $checkDirName = "SELECT * FROM folder WHERE folder_directory = '".$dir."' AND dept_id = '".$deptID."' ";
        $execCheckDirname = mysqli_query($conn, $checkDirName);
        $countDirName = mysqli_num_rows($execCheckDirname);

        if ($countDirName > 0) {
            echo json_encode((object)[
                'status' => false,
                'message' => "duplicate_dir_name"
            ]);
        } else {

            $queryUpdateDir = "UPDATE folder
                                    SET folder_directory = '".$dir."', folder_name = '".$dirName."', folder_short_name = '".$dirShortName."'
                                    WHERE folder_id = '".$dirID."' AND dept_id = '".$deptID."'";
            $execQueryUpdateDir = mysqli_query($conn, $queryUpdateDir);

            if ($execQueryUpdateDir) {
                echo json_encode((object)[
                    'status' => true,
                    'message' => "success_update_dir"
                ]);
            } else {
                echo json_encode((object)[
                    'status' => false,
                    'message' => "failed_update_dir"
                ]);
            } 

        }

    }

} else {
    echo json_encode((object)[
        'status' => false,
        'data' => 'dir_not_exist',
        'result' => $numRows
    ]);
}

?>