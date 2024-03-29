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
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">User List</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item text-muted active" aria-current="page">User List</li>
                        </ol>
                    </nav>
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
                                        <th>Total Usage Size (GB)</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Media Prima</td>
                                        <td><b>1,363,974</b></td>
                                        <td class="text-center">
                                            <a href="isilon-report.php" class="btn btn-sm btn-primary btn-rounded">
                                                Isilon
                                            </a>
                                            <a href="workfolder-summary.php" class="btn btn-sm btn-success btn-rounded">
                                                Workfolder
                                            </a>
                                            <a href="departmental-summary.php" class="btn btn-sm btn-dark btn-rounded">
                                                Departmental
                                            </a>
                                            <a href="usage-breakdown.php" class="btn btn-sm btn-danger btn-rounded">
                                                Breakdown
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Media Prima Archive</td>
                                        <td><b>5,276,249</b></td>
                                        <td class="text-center">
                                            <a href="isilon-report.php" class="btn btn-sm btn-primary btn-rounded">
                                                Isilon
                                            </a>
                                            <a href="workfolder-summary.php" class="btn btn-sm btn-success btn-rounded">
                                                Workfolder
                                            </a>
                                            <a href="departmental-summary.php" class="btn btn-sm btn-dark btn-rounded">
                                                Departmental
                                            </a>
                                            <a href="usage-breakdown.php" class="btn btn-sm btn-danger btn-rounded">
                                                Breakdown
                                            </a>
                                        </td>
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

<!-- SignIn modal content -->
<div id="login-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Upload report file</h4>
                </div>
                <form action="#" class="pl-3 pr-3">
                    <div class="form-group">
                        <fieldset class="form-group">
                            <input type="file" class="form-control-file" id="exampleInputFile">
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