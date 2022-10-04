<?php

include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$custId = mysqli_escape_string($conn,$_POST['cust_id']);
$deptID = mysqli_escape_string($conn,$_POST['dept_id']);
$oldDeptName = mysqli_escape_string($conn,$_POST['old_dept_name']);
$deptName = mysqli_escape_string($conn,$_POST['dept_name']);
$deptDesc = mysqli_escape_string($conn,$_POST['dept_desc']);

$findCustID = "SELECT *
                FROM customer 
                INNER JOIN department
                ON customer.cust_id = department.cust_id
                WHERE customer.cust_id='".$custId."' AND department.dept_id='".$deptID."'";
$execFindCustID = mysqli_query($conn, $findCustID);

$countCustID = mysqli_num_rows($execFindCustID);

if ($countCustID == 1) {

    if($oldDeptName==$deptName) {

        $queryUpdateDepartment = "UPDATE department
                                    SET dept_name = '".$deptName."', dept_desc = '".$deptDesc."'
                                    WHERE dept_id = '".$deptID."' ";
        $execQueryUpdateDepartment = mysqli_query($conn, $queryUpdateDepartment);

        if ($execQueryUpdateDepartment) {
            echo json_encode((object)[
                'status' => true,
                'message' => "success_update_dept"
            ]);
        } else {
            echo json_encode((object)[
                'status' => false,
                'message' => "failed_update_dept"
            ]);
        } 
    } else {

        $checkDeptName = "SELECT * FROM department WHERE dept_name = '".$deptName."' AND cust_id = '".$custId."' ";
        $execCheckDeptname = mysqli_query($conn, $checkDeptName);
        $countDeptName = mysqli_num_rows($execCheckDeptname);

        if ($countDeptName > 0) {
            echo json_encode((object)[
                'status' => false,
                'message' => "duplicate_dept_name"
            ]);
        } else {
            $queryUpdateDepartment = "UPDATE department
                                    SET dept_name = '".$deptName."', dept_desc = '".$deptDesc."'
                                    WHERE dept_id = '".$deptID."' ";
            $execQueryUpdateDepartment = mysqli_query($conn, $queryUpdateDepartment);

            if ($execQueryUpdateDepartment) {
                echo json_encode((object)[
                    'status' => true,
                    'message' => "success_update_dept"
                ]);
            } else {
                echo json_encode((object)[
                    'status' => false,
                    'message' => "failed_update_dept"
                ]);
            } 
        }

    }

} else {
    echo json_encode((object)[
        'status' => false,
        'message' => "dept_not_exist"
    ]);
}

?>