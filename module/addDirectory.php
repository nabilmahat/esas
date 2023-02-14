<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$custId = mysqli_escape_string($conn,$_POST['cust_id']);
$dir = mysqli_escape_string($conn,$_POST['dir']);
$dirName = mysqli_escape_string($conn,$_POST['dir_name']);
$dirShortName = substr($dir, strrpos($dir, '/') + 1);
$deptID = mysqli_escape_string($conn,$_POST['dept_id']);

$findDir = "SELECT * 
            FROM folder 
            INNER JOIN department ON folder.dept_id = department.dept_id
            INNER JOIN customer ON department.cust_id = customer.cust_id
            WHERE customer.cust_id = '".$custId."' AND folder.folder_directory = '".$dir."' AND department.dept_id = '".$deptID."' ";

$execFindDir = mysqli_query($conn, $findDir);

$countDir = mysqli_num_rows($execFindDir);

if($countDir == 0) {

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
    echo json_encode((object)[
        'status' => false,
        'message' => "dir_existed"
    ]);
}

?>