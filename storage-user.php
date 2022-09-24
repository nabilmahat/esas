<!DOCTYPE html>
<html dir="ltr" lang="en">


<?php 
include "src/header.php";

$listCustomer = "SELECT * FROM customer INNER JOIN price ON customer.cust_id = price.cust_id";
$execListCustomer = mysqli_query($conn, $listCustomer);
?>
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-7 align-self-center">
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">User Management</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item text-muted active" aria-current="page">User Management</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="col-5 align-self-center">
                <div class="col-12 align-right">
                    <div class="customize-input float-right" data-toggle="modal" data-target="#add-user-modal">
                        <button id="btnPrint" class="btn btn-dark">Add Customer</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">
            <!-- Start List Directory Table -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Customer</th>
                                        <th>Price Per GB (RM)</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    $listNum = 1;

                                    foreach ($execListCustomer as $row) {

                                        echo "<tr>";
                                        echo "<td>".$listNum."</td>";
                                        echo "<td>".$row['cust_name']."</td>";
                                        echo "<td>".$row['price']."</td>";
                                        echo "<td>";
                                        echo "<a href='storage-detail.php?cust_id=".$row['cust_id']."' class='btn btn-sm btn-success btn-rounded'";
                                        echo "data-toggle='tooltip' data-placement='top' title='View Detail'>";
                                        echo "Detail";
                                        echo "</a>";
                                        echo "&nbsp;&nbsp;";
                                        echo "<a href='storage-detail.php?cust_id=".$row['cust_id']."' class='btn btn-sm btn-danger btn-rounded'";
                                        echo "data-toggle='tooltip' data-placement='top' title='View Detail'>";
                                        echo "Delete";
                                        echo "</a>";
                                        echo "</td>";
                                        echo "</tr>";

                                        $listNum++;

                                    }

                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End List Directory Table -->
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right sidebar -->
        <!-- ============================================================== -->
        <!-- .right-sidebar -->
        <!-- ============================================================== -->
        <!-- End Right sidebar -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
<?php
include "src/footer.php";
?>
</body>

<!-- Add Customer modal content -->
<div id="add-user-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Add new customer</h4>
                </div>
                <form action="#" class="pl-3 pr-3">
                    <div class="form-body">
                        <label>Customer ID </label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="custid" id="cust_id" name="cust_id" required="" maxlength="255">
                                    <div class="invalid-feedback" id="cust-id-error" style="display: none">
                                        Customer ID is required!
                                    </div>
                                    <div class="invalid-feedback" id="cust-id-error-exist" style="display: none">
                                        Customer ID is already been used, please insert new customer id.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <label>Customer Name </label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Customer Name" id="cust_name" name="cust_name" required="" maxlength="255">
                                    <div class="invalid-feedback" id="cust-name-error" style="display: none">
                                        Customer Name is required!
                                    </div>
                                </div>
                            </div>
                        </div>
                        <label>Customer Description </label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Customer Description" id="cust_desc" name="cust_desc" required="" maxlength="64">
                                    <div class="invalid-feedback" id="cust-desc-error" style="display: none">
                                        Customer Description is required!
                                    </div>
                                </div>
                            </div>
                        </div>
                        <label>Price per GB (RM) </label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="0.02 | 245.00" id="cust_price" name="cust_price" required="">
                                    <div class="invalid-feedback" id="cust-price-error" style="display: none">
                                        Price is required!
                                    </div>
                                    <div class="invalid-feedback" id="cust-price-error-value" style="display: none">
                                        Price cannot be less than 0
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group text-center">
                        <button class="btn btn-rounded btn-danger" type="button" data-dismiss="modal" id="cancelAdd">Cancel</button>
                        <button class="btn btn-rounded btn-success" type="button" id="addCustomer">Add Customer</button>
                    </div>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- script for report -->
<script src="src/dist/js/report.js"></script>
<script src="src/dist/js/ajaxForm/addCustomer.js"></script>

</html>