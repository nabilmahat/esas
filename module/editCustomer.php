<?php
include "../connection/connection.php";

date_default_timezone_set('Asia/Kuala_Lumpur');

$custId = mysqli_escape_string($conn,$_POST['cust_id']);
$custName = mysqli_escape_string($conn,$_POST['cust_name']);
$custDesc = mysqli_escape_string($conn,$_POST['cust_desc']);
$price = mysqli_escape_string($conn,$_POST['cust_price']);

$findCustID = "SELECT cust_id FROM customer WHERE cust_id='".$custId."'";
$execFindCustID = mysqli_query($conn, $findCustID);

$countCustID = mysqli_num_rows($execFindCustID);

if ($countCustID == 1) {

    $queryInsertCustomer = "UPDATE customer 
                            SET cust_name = '".$custName."', cust_description = '".$custDesc."'
                            WHERE cust_id = '".$custId."'; ";
    $execQueryInsertCustomer = mysqli_query($conn, $queryInsertCustomer);

    if($execQueryInsertCustomer) {

        $queryInsertPrice = "UPDATE price 
                            SET price = '".$price."'
                            WHERE cust_id ='".$custId."'; ";
        $execQueryInsertPrice = mysqli_query($conn, $queryInsertPrice);

        if ($execQueryInsertPrice) {
            echo json_encode((object)[
                'status' => true,
                'message' => "success_edit_customer"
            ]);
        } else {
            // query delete customer by id
            $deleteCustomer = "DELETE FROM customer WHERE cust_id='".$custId."'";
            $execQueryDeleteCustomer = mysqli_query($conn, $deleteCustomer);

            echo json_encode((object)[
                'status' => false,
                'message' => "failed_edit_price"
            ]);
        }
    } else {
        echo json_encode((object)[
            'status' => false,
            'message' => "failed_edit_customer"
        ]);
    }
} else {
    echo json_encode((object)[
        'status' => false,
        'message' => "customer_id_existed"
    ]);
}

?>