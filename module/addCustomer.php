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

if ($countCustID == 0) {

    $queryInsertCustomer = "INSERT INTO customer (cust_id, cust_name, cust_description)
                            VALUES ('".$custId."','".$custName."','".$custDesc."')";
    $execQueryInsertCustomer = mysqli_query($conn, $queryInsertCustomer);

    if($execQueryInsertCustomer) {

        $queryInsertPrice = "INSERT INTO price (cust_id, price)
                            VALUES ('".$custId."','".$price."')";
        $execQueryInsertPrice = mysqli_query($conn, $queryInsertPrice);

        if ($execQueryInsertPrice) {
            echo json_encode((object)[
                'status' => true,
                'message' => "success_create_customer"
            ]);
        } else {
            // query delete customer by id
            $deleteCustomer = "DELETE FROM customer WHERE cust_id='".$custId."'";
            $execQueryDeleteCustomer = mysqli_query($conn, $deleteCustomer);

            echo json_encode((object)[
                'status' => false,
                'message' => "failed_create_price"
            ]);
        }
    } else {
        echo json_encode((object)[
            'status' => false,
            'message' => "failed_create_customer"
        ]);
    }
} else {
    echo json_encode((object)[
        'status' => false,
        'message' => "customer_id_existed"
    ]);
}

?>