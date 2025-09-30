<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$folderId = mysqli_real_escape_string($conn, $_POST['folder_id']);
$custId = mysqli_real_escape_string($conn, $_POST['cust_id']);

// Check if folder exists and is not already deleted
$checkFolder = "SELECT * FROM folder WHERE folder_id = '".$folderId."' AND deleted_at IS NULL";
$execCheckFolder = mysqli_query($conn, $checkFolder);
$folderCount = mysqli_num_rows($execCheckFolder);

if($folderCount == 1) {
    // Soft delete: Set deleted_at timestamp instead of actually deleting
    $currentTime = date('Y-m-d H:i:s');

    $querySoftDelete = "UPDATE folder
                        SET deleted_at = '".$currentTime."'
                        WHERE folder_id = '".$folderId."'";

    $execSoftDelete = mysqli_query($conn, $querySoftDelete);

    if ($execSoftDelete) {
        echo json_encode((object)[
            'status' => true,
            'message' => "success_delete_directory",
            'redirect' => "../storage-detail.php?cust_id=".$custId
        ]);
    } else {
        echo json_encode((object)[
            'status' => false,
            'message' => "error_delete_directory"
        ]);
    }
} else {
    echo json_encode((object)[
        'status' => false,
        'message' => "directory_not_found"
    ]);
}

?>