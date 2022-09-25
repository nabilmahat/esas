<?php

include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$custId = mysqli_escape_string($conn,$_POST['cust_id']);
$deptName = mysqli_escape_string($conn,$_POST['dept_name']);
$deptDesc = mysqli_escape_string($conn,$_POST['dept_desc']);

$findCustID = "SELECT customer.cust_id 
                FROM customer 
                INNER JOIN department
                ON customer.cust_id = department.cust_id
                WHERE customer.cust_id='".$custId."' AND department.dept_name='".$deptName."'";
$execFindCustID = mysqli_query($conn, $findCustID);

$countCustID = mysqli_num_rows($execFindCustID);

if ($countCustID == 0) {

    $deptID = $custId."_".strtolower(substr($deptName,0,4));

    $queryInsertDepartment = "INSERT INTO department (cust_id, dept_name, dept_id)
                            VALUES ('".$custId."','".$deptName."','".$deptID."')";
    $execQueryInsertDepartment = mysqli_query($conn, $queryInsertDepartment);

    if ($execQueryInsertDepartment) {
        echo json_encode((object)[
            'status' => true,
            'message' => "success_create_dept"
        ]);
    } else {
        echo json_encode((object)[
            'status' => false,
            'message' => "failed_create_dept"
        ]);
    }

} else {
    echo json_encode((object)[
        'status' => false,
        'message' => "dept_name_existed"
    ]);
}

?>