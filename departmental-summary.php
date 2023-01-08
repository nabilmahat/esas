<?php 
include "src/header.php";
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
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Departmental Summary</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item"><a href="report-list.php" class="text-muted">Report List</a></li>
                            <li class="breadcrumb-item text-muted active" aria-current="page">Departmental Summary</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="col-5 align-self-center">
                <div class="customize-input float-right">
                    <select
                        class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
                        <option value="dec21">Dec 21</option>
                        <option value="1">Jan 22</option>
                        <option value="2">Feb 22</option>
                        <option value="2">Mar 22</option>
                        <option value="2">Apr 22</option>
                        <option value="2" selected>May 22</option>
                    </select>
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
            <!-- column -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">MEDIA PRIMA ESAS MAY 1-31, 2022</h4>
                        <div>
                            <canvas id="bar-chart" height="150"> </canvas>
                        </div>
                    </div>
                </div>
            </div>
            <!-- column -->
            <!-- Start List Directory Table -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Department</th>
                                        <th>Size in GB</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td class="text-right">1,372,354</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>News</td>
                                        <td class="text-right">448,750</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Engineering</td>
                                        <td class="text-right">229,668</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Archive</td>
                                        <td class="text-right">7,111,074</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="text-center">Total</td>
                                        <td class="text-right">9,161,846</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End List Directory Table -->
            <!-- Start List Directory Table -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
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
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td> <a href="usage-breakdown.php">ESAS MXFSERVER</a> </td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" class="text-center">Total</td>
                                        <td class="text-right">9,161,846</td>
                                    </tr>
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

</html>