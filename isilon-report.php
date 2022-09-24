<!DOCTYPE html>
<html dir="ltr" lang="en">


<?php 
include "src/header.php";

$custParam = $_GET['cust_id'];
$dateParam = $_GET['report_date'];

// split date by '-' and assign to variable
list($yearParam, $monthParam) = explode("-", $dateParam);

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
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">ESAS Isilon Report</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item"><a href="report-list.php" class="text-muted">Report List</a>
                            </li>
                            <li class="breadcrumb-item text-muted active" aria-current="page">ESAS Isilon Report</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="col-5 align-self-center">
                <div class="customize-input float-right">
                    <form class="mt-4">
                        <div class="form-group">
                            Select report month:
                            <?php
                            echo "<input type='month' id='report-date' onchange='selectDate()' class='form-control' value='".$dateParam."'>"
                            ?>
                        </div>
                    </form>
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
                        <div class="customize-input float-right">
                            <button type="button" class="btn btn-success btn-rounded" data-toggle="modal"
                                data-target="#login-modal">
                                <i class="fas fa-plus"></i> Upload Report
                            </button>
                        </div>
                        <br><br>
                        <div class="table-responsive">
                            <table id="" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Department</th>
                                        <th>Workflow Folder</th>
                                        <th>Size in GB</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    $listDirectory = "SELECT *
                                                        FROM report 
                                                        INNER JOIN folder ON report.folder_id = folder.folder_id 
                                                        INNER JOIN department ON department.dept_id = folder.dept_id 
                                                        INNER JOIN customer ON customer.cust_id = department.cust_id 
                                                        WHERE month = '".$monthParam."' AND year = '".$yearParam."' AND customer.cust_id = '".$custParam."' ";
                                    $execListDirectory = mysqli_query($conn, $listDirectory);

                                    $total_usage = 0;

                                    $count = mysqli_num_rows($execListDirectory);

                                    if($count!=0){

                                        foreach ($execListDirectory as $row) {
                                            echo "<tr>";
                                            echo "<td>1</td>";
                                            echo "<td>".$row['cust_name']. " ".$row['dept_name']."</td>";
                                            echo "<td>".$row['folder_name']."</td>";

                                            //    calculate Bytes to GBs [size / 1073741824]
                                            $total_size = $row['usage_size']/1073741824;
                                            $total_usage = $total_usage + $row['usage_size'];

                                            echo "<td  class='text-right'>".number_format($total_size)."</td>";
                                            echo "</tr>";
                                        }
                                        
                                        $totalGB = $total_usage/1073741824;

                                        echo "<tr>";
                                        echo "<td colspan='3' class='text-center'><b>Total</b></td>";
                                        echo "<td class='text-right'>";
                                        echo "<b>";
                                        echo number_format($totalGB);                                            
                                        echo "</b>";
                                        echo "</td>";
                                        echo "</tr>";

                                    } else {

                                        echo "<tr>";
                                        echo "<td colspan='34' class='text-center'><b>No Data</b></td>";
                                        echo "</tr>";

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

<!-- script for report -->
<script src="src/dist/js/report.js"></script>

<!-- SignIn modal content -->
<div id="login-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Upload report file</h4>
                </div>
                <form action="module/csv.php" id="csvForm" method="POST" enctype="multipart/form-data"
                    class="pl-3 pr-3">
                    <div class="form-group">
                        <fieldset class="form-group">
                            <input type="file" class="form-control-file" id="exampleInputFile" accept=".csv"
                                name="file_name">
                        </fieldset>
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-rounded btn-primary" type="submit">Submit</button>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</html>