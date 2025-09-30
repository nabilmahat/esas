<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$custId = mysqli_escape_string($conn,$_POST['cust_id']);
$dir = mysqli_escape_string($conn,$_POST['dir']);
$dirName = mysqli_escape_string($conn,$_POST['dir_name']);
$dirShortName = substr($dir, strrpos($dir, '/') + 1);
$deptID = mysqli_escape_string($conn,$_POST['dept_id']);

// Check if folder exists (active or soft-deleted)
$findDir = "SELECT *
            FROM folder
            INNER JOIN department ON folder.dept_id = department.dept_id
            INNER JOIN customer ON department.cust_id = customer.cust_id
            WHERE customer.cust_id = '".$custId."' AND folder.folder_directory = '".$dir."' AND department.dept_id = '".$deptID."'";

$execFindDir = mysqli_query($conn, $findDir);
$countDir = mysqli_num_rows($execFindDir);

if($countDir == 0) {
    // No existing folder - create new one
    $folder_id = $custId."_".strtolower(str_replace(" ", "", $dirName));

    $queryInsertFolder = "INSERT INTO folder (folder_id, folder_directory, folder_name, folder_short_name, folder_desc, dept_id)
                            VALUES ('".$folder_id."', '".$dir."', '".$dirName."','".$dirShortName."', '".$dirName."', '".$deptID."')";
    $execQueryInsertFolder = mysqli_query($conn, $queryInsertFolder);

    if ($execQueryInsertFolder) {
        echo json_encode((object)[
            'status' => true,
            'message' => "success_create_dir"
        ]);
    }
} else {
    // Folder exists - check if it's soft-deleted
    $row = mysqli_fetch_assoc($execFindDir);

    if ($row['deleted_at'] !== null) {
        // Restore soft-deleted folder by setting deleted_at to NULL
        $queryRestoreFolder = "UPDATE folder SET deleted_at = NULL WHERE folder_id = '".$row['folder_id']."'";
        $execQueryRestoreFolder = mysqli_query($conn, $queryRestoreFolder);

        if ($execQueryRestoreFolder) {
            echo json_encode((object)[
                'status' => true,
                'message' => "success_restore_dir"
            ]);
        }
    } else {
        // Folder is already active
        echo json_encode((object)[
            'status' => false,
            'message' => "dir_existed"
        ]);
    }
}

?>