<?php 
include "src/header.php";

$custParam = $_GET['cust_id'];
$dateParam = $_GET['report_date'];

// split date by '-' and assign to variable
list($yearParam, $monthParam) = explode("-", $dateParam);

$prevMonth = $monthParam - 1;

// card data sql
$cardData = "SELECT customer.cust_name, report.price_per_gb, department.dept_name, report.month, report.year, SUM(report.usage_size) as monthly_usage
                FROM customer
                LEFT OUTER JOIN price
                ON	 customer.cust_id = price.cust_id
                LEFT JOIN department
                ON customer.cust_id = department.cust_id
                LEFT JOIN folder
                ON department.dept_id = folder.dept_id
                LEFT JOIN report
                ON folder.folder_id = report.folder_id
                WHERE 
                (CASE 
                WHEN report.month IS NOT NULL AND report.year IS NOT NULL THEN 
                    customer.cust_id = '".$custParam."' AND report.month = '".$monthParam."' AND report.year = '".$yearParam."' 
                ELSE
                    customer.cust_id = '".$custParam."'
                END) "; 
$execCardData = mysqli_query($conn, $cardData);

$extractData = mysqli_fetch_array($execCardData,MYSQLI_ASSOC);

$cardDataPrevious = "SELECT customer.cust_name, report.price_per_gb, department.dept_name, report.month, report.year, SUM(report.usage_size) as monthly_usage
                FROM customer
                LEFT OUTER JOIN price
                ON	 customer.cust_id = price.cust_id
                LEFT JOIN department
                ON customer.cust_id = department.cust_id
                LEFT JOIN folder
                ON department.dept_id = folder.dept_id
                LEFT JOIN report
                ON folder.folder_id = report.folder_id
                WHERE 
                (CASE 
                WHEN report.month IS NOT NULL AND report.year IS NOT NULL THEN 
                    customer.cust_id = '".$custParam."' AND report.month = '0".$prevMonth."' AND report.year = '".$yearParam."' 
                ELSE
                    customer.cust_id = '".$custParam."'
                END)  ";
$execCardDataPrevious = mysqli_query($conn, $cardDataPrevious);

$prevDataRow = mysqli_num_rows($execCardDataPrevious);

if ($prevDataRow==1) {
    $extractDataPrevious = mysqli_fetch_array($execCardDataPrevious,MYSQLI_ASSOC);
}

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
                <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">ESAS Report</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item"><a href="storage-user.php" class="text-muted">Customer Management</a>
                            </li>
                            <li class="breadcrumb-item text-muted active" aria-current="page">ESAS Report</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="col-5 align-self-center">
                <div class="customize-input float-right">
                    <div class="form-group">
                        Select report month:
                        <?php
                        echo "<input type='month' id='report-date' onchange='selectDate()' class='form-control bg-white border-0 custom-shadow' value='".$dateParam."'>"
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- Start Button Report -->
    <div class="page-breadcrumb custom-bc">
        <div class="row">
            <div class="col-12 align-self-center">
                <div class="customize-input float-right">
                    <form class="mt-4">
                        <div class="form-group">
                            <button type="button" class="btn btn-primary border-0 custom-shadow" id="printReport">
                                <i class="fas fa-print"></i> Print Report
                            </button>
                            &nbsp;
                            <button type="button" class="btn btn-success border-0 custom-shadow" data-toggle="modal"
                                data-target="#upload-modal">
                                <i class="fas fa-plus"></i> Upload Report
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- End Button Report -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <!-- *************************************************************** -->
        <!-- Start Stat Cards -->
        <!-- *************************************************************** -->
        <div class="card-group">
            <div class="card border-right">
                <div class="card-body">
                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                        <div>
                            <div class="d-inline-flex align-items-center">
                                <h2 class="text-dark mb-1 font-weight-medium">
                                    <?php
                                        echo number_format($extractData["monthly_usage"]/1073741824);
                                    ?>
                                </h2>
                            </div>
                            <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Usage Size (GB)</h6>
                        </div>
                        <div class="ml-auto mt-md-3 mt-lg-0">
                            <span class="opacity-7 text-muted"><i data-feather="file-plus"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card border-right">
                <div class="card-body">
                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                        <div>
                            <h2 class="text-dark mb-1 font-weight-medium">
                                <?php

                                    $diff = "-";
                                    $percentage = "-";

                                    if(isset($extractDataPrevious["monthly_usage"])) {
                                        $diff = ($extractData["monthly_usage"]/1073741824)-($extractDataPrevious["monthly_usage"]/1073741824);
                                        $percentage = ($diff/($extractDataPrevious["monthly_usage"]/1073741824))*100;
                                        echo number_format($diff);
                                    } else {
                                        echo "-";
                                    }
                                ?>
                            </h2>
                            <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Excess File Size (GB)
                            </h6>
                        </div>
                        <div class="ml-auto mt-md-3 mt-lg-0">
                            <span class="opacity-7 text-muted"><i data-feather="file-plus"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card border-right">
                <div class="card-body">
                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                        <div>
                            <div class="d-inline-flex align-items-center">
                                <h2 class="text-dark mb-1 font-weight-medium">
                                    <?php
                                        echo number_format((float)$percentage, 2, '.', '');
                                    ?>
                                </h2>
                            </div>
                            <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">% Excess File Size</h6>
                        </div>
                        <div class="ml-auto mt-md-3 mt-lg-0">
                            <span class="opacity-7 text-muted"><i data-feather="file-plus"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                        <div>
                            <div class="d-inline-flex align-items-center">
                                <h2 class="text-dark mb-1 font-weight-medium">
                                <?php
                                    echo $extractData["price_per_gb"];
                                ?>
                                </h2>
                            </div>
                            <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Price per GB (RM)</h6>
                        </div>
                        <div class="ml-auto mt-md-3 mt-lg-0">
                            <span class="opacity-7 text-muted"><i data-feather="dollar-sign"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- *************************************************************** -->
        <!-- End Stat Cards -->
        <!-- *************************************************************** -->
        <div class="row ">
            <!-- Start Isilon Report -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body row">
                        <h4 class="card-title">1. Isilon Report</h4>
                        <div class="table-responsive">
                            <table id="isilon" class="table table-bordered no-wrap">
                                <thead class="thead-light">
                                    <tr>
                                        <th>No</th>
                                        <th>Department</th>
                                        <th>Workflow Folder</th>
                                        <th>Size in GB</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    $listDirectory = "SELECT *, SUM(usage_size) AS usize
                                                        FROM report 
                                                        INNER JOIN folder ON report.folder_id = folder.folder_id 
                                                        INNER JOIN department ON department.dept_id = folder.dept_id 
                                                        INNER JOIN customer ON customer.cust_id = department.cust_id 
                                                        WHERE month = '".$monthParam."' AND year = '".$yearParam."' AND customer.cust_id = '".$custParam."' 
                                                        GROUP BY report.folder_id ORDER BY report.id";
                                    $execListDirectory = mysqli_query($conn, $listDirectory);

                                    $total_usage = 0;

                                    $count = mysqli_num_rows($execListDirectory);

                                    $listNum = 1;

                                    if($count!=0){

                                        foreach ($execListDirectory as $row) {
                                            echo "<tr>";
                                            echo "<td>".$listNum."</td>";
                                            echo "<td>".$row['cust_name']. " ".$row['dept_name']."</td>";
                                            echo "<td>".$row['dept_name']." - ".$row['folder_name']."</td>";

                                            //    calculate Bytes to GBs [size / 1073741824]
                                            $total_size = $row['usize']/1073741824;
                                            $total_usage = $total_usage + $row['usize'];
                                                                                
                                            echo "<td  class='text-right'>".number_format($total_size)."</td>";
                                            echo "</tr>";

                                            $listNum++;
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
            <!-- End Isilon Report -->
            <!-- Start Workfolder Summary -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body" id="chart">
                        <h4 class="card-title">2.1 Workfolder Summary</h4>
                        <!-- Start Chart -->
                        <div>
                            <canvas id="bar-chart-horizontal" height="150"> </canvas>
                        </div>
                        <!-- End Chart -->
                        <br>
                        <br>
                        <!-- Start List Directory Table -->
                        <div class="table-responsive">
                            <table id="workfolder" class="table table-bordered no-wrap">
                                <thead class="thead-light">
                                    <tr>
                                        <th>No</th>
                                        <th>Workflow Folder</th>
                                        <th>Size in GB</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    $total_usage = 0;

                                    $listNumWF = 1;

                                    if($count!=0){

                                        foreach ($execListDirectory as $row) {
                                            echo "<tr>";
                                            echo "<td>".$listNumWF."</td>";
                                            echo "<td>".$row['dept_name']." - ".$row['folder_name']."</td>";

                                            //    calculate Bytes to GBs [size / 1073741824]
                                            $total_size = $row['usize']/1073741824;
                                            $total_usage = $total_usage + $row['usize'];
                                                                                
                                            echo "<td  class='text-right'>".number_format($total_size)."</td>";
                                            echo "</tr>";

                                            $listNumWF++;
                                        }
                                        
                                        $totalGB = $total_usage/1073741824;

                                        echo "<tr>";
                                        echo "<td colspan='2' class='text-center'><b>Total</b></td>";
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
                        <!-- End List Directory Table -->
                    </div>
                </div>
            </div>
            <!-- End WorkFolder Summary -->
            <!-- Start Departmental Summary -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">2.2 Departmental Summary</h4>
                        <!-- Start Chart -->
                        <div>
                            <canvas id="bar-chart" height="150"> </canvas>
                        </div>
                        <!-- End Chart -->
                        <br><br>      
                        <!-- Start Department Table -->
                        <div class="table-responsive">
                            <table id="departmental" class="table table-bordered no-wrap">
                                <thead class="thead-light">
                                    <tr>
                                        <th>No</th>
                                        <th>Department</th>
                                        <th>Size in GB</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    $queryDepartmentList = "SELECT SUM(report.usage_size) as usage_size, department.dept_name, customer.cust_name
                                                            FROM report
                                                            INNER JOIN folder
                                                            ON report.folder_id = folder.folder_id
                                                            INNER JOIN department
                                                            ON folder.dept_id = department.dept_id
                                                            INNER JOIN customer
                                                            ON department.cust_id = customer.cust_id
                                                            WHERE report.month = '".$monthParam."' AND report.year = '".$yearParam."' AND customer.cust_id = '".$custParam."'
                                                            GROUP BY department.dept_name";

                                    $execQueryDepartmentList = mysqli_query($conn, $queryDepartmentList);

                                    $totalUsageDept = 0;

                                    $countDeptList = mysqli_num_rows($execQueryDepartmentList);

                                    $listNumDept = 1;

                                    if($countDeptList!=0){

                                        foreach ($execQueryDepartmentList as $row) {
                                            echo "<tr>";
                                            echo "<td>".$listNumDept."</td>";
                                            echo "<td>".$row['dept_name']."</td>";

                                            //    calculate Bytes to GBs [size / 1073741824]
                                            $total_size = $row['usage_size']/1073741824;
                                            $totalUsageDept = $totalUsageDept + $row['usage_size'];
                                                                                
                                            echo "<td  class='text-right'>".number_format($total_size)."</td>";
                                            echo "</tr>";

                                            $listNumDept++;
                                        }
                                        
                                        $totalGB = $totalUsageDept/1073741824;

                                        echo "<tr>";
                                        echo "<td colspan='2' class='text-center'><b>Total</b></td>";
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
                        <!-- End Department Table -->
                    </div>
                </div>
            </div>
            <!-- End Departmental Summary -->
            <!-- Start Breakdown Summary -->            
            <!-- <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">2.3 Production Business Unit Breakdown Summary</h4>
                        <div class="table-responsive">
                            <table id="breakdown" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Business Unit</th>
                                        <th>Size in GB</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>0-ES Migration</td>
                                        <td class="text-right">16710</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>0-Music Library CSD</td>
                                        <td class="text-right">2916</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>1-Primeworks Distribution</td>
                                        <td class="text-right">433</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>1-PWS Advertiser Content</td>
                                        <td class="text-right">21837</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>0-ES Migration</td>
                                        <td class="text-right">16710</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>0-Music Library CSD</td>
                                        <td class="text-right">2916</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>1-Primeworks Distribution</td>
                                        <td class="text-right">433</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>1-PWS Advertiser Content</td>
                                        <td class="text-right">21837</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="text-center"><b>Total</b></td>
                                        <td class="text-right"><b>376,974</b></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- End Breakdown Summary -->
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
<script src="src/dist/js/print/jspdf.min.js"></script>
<script src="src/dist/js/print/toPDF.js"></script>

<!-- Upload Report modal content -->
<div id="upload-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Upload report file</h4>
                </div>
                <form action="module/csv.php" id="csvForm" method="POST" enctype="multipart/form-data"
                    class="pl-3 pr-3">
                    <div class="form-group">
                        <label for="">Select report date:</label>
                        <?php
                            echo "<input type='month' class='form-control' value='".$dateParam."' id='reportDate' name='reportDate'>";
                        ?>
                    </div>                    
                    <div class="form-group">
                        <fieldset class="form-group">
                            <input type="text" id="paramCustID" hidden readonly name="paramCustID">
                            <input type="file" class="form-control-file" id="file_name" accept=".csv"
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