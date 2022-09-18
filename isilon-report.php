<!DOCTYPE html>
<html dir="ltr" lang="en">


<?php 
include "src/header.php"
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
                            <li class="breadcrumb-item"><a href="report-list.php" class="text-muted">Report List</a></li>
                            <li class="breadcrumb-item text-muted active" aria-current="page">ESAS Isilon Report</li>
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
                                    <tr>
                                        <td>1</td>
                                        <td>Media Prima Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Media Prima Archive</td>
                                        <td>ESAS ARCHIVE - Dalet DPSHARE RSU</td>
                                        <td class="text-right">5,276,249</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Media Prima News </td>
                                        <td>ESAS ARCHIVE - NRCS</td>
                                        <td class="text-right">448,750</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Media Prima Engineering</td>
                                        <td>ESAS ARCHIVE -IMS</td>
                                        <td class="text-right">31,614</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>Production</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td class="text-right">1,363,974</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
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