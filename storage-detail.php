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
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Department List</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item"><a href="storage-user.php" class="text-muted">User
                                    Management</a></li>
                            <li class="breadcrumb-item text-muted active" aria-current="page">Department List</li>
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
            <!-- Start Production Table -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="customize-input row">
                            <div class="col-md-10">
                                <h4 class="card-title">Production</h4>
                            </div>
                            <div class="col-md-2 text-right">
                                <button type="button" class="btn btn-sm btn-success btn-rounded" data-toggle="modal"
                                    data-target="#directory-modal">
                                    <i class="fas fa-plus"></i> Directory
                                </button>
                            </div>
                        </div>
                        <br>
                        <div class="table-responsive">
                            <table id="zero_config1" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Directory</th>
                                        <th>Folder Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>/ifs/MXFSERVER</td>
                                        <td>ESAS MXFSERVER</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-info btn-rounded"
                                                data-toggle="modal" data-target="#edit-modal">
                                                <i class="fas fa-pencil-alt"></i> Edit
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded">
                                                <i class="fas fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>/ifs/PWD_Clean_Version</td>
                                        <td>PWD_Clean_Version</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-info btn-rounded"
                                                data-toggle="modal" data-target="#edit-modal">
                                                <i class="fas fa-pencil-alt"></i> Edit
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded">
                                                <i class="fas fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Production Table -->
            <!-- Start Engineering Table -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="customize-input row">
                            <div class="col-md-10">
                                <h4 class="card-title">Engineering</h4>
                            </div>
                            <div class="col-md-2 text-right">
                                <button type="button" class="btn btn-sm btn-success btn-rounded" data-toggle="modal"
                                    data-target="#directory-modal">
                                    <i class="fas fa-plus"></i> Directory
                                </button>
                            </div>
                        </div>
                        <br>
                        <div class="table-responsive">
                            <table id="zero_config2" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Directory</th>
                                        <th>Folder Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>/ifs/AsperaData</td>
                                        <td>ESAS Aspera</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-info btn-rounded"
                                                data-toggle="modal" data-target="#edit-modal">
                                                <i class="fas fa-pencil-alt"></i> Edit
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded">
                                                <i class="fas fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>/ifs/IMS</td>
                                        <td>ESAS ARCHIVE -IMS</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-info btn-rounded"
                                                data-toggle="modal" data-target="#edit-modal">
                                                <i class="fas fa-pencil-alt"></i> Edit
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded">
                                                <i class="fas fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Engineering Table -->
            <!-- Start Archive Table -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="customize-input row">
                            <div class="col-md-10">
                                <h4 class="card-title">Archive</h4>
                            </div>
                            <div class="col-md-2 text-right">
                                <button type="button" class="btn btn-sm btn-success btn-rounded" data-toggle="modal"
                                    data-target="#directory-modal">
                                    <i class="fas fa-plus"></i> Directory
                                </button>
                            </div>
                        </div>
                        <br>
                        <div class="table-responsive">
                            <table id="zero_config3" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Directory</th>
                                        <th>Folder Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>/ifs/Dalet/DPSHARE/RSU</td>
                                        <td>ESAS ARCHIVE - Dalet DPSHARE/RSU</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-info btn-rounded"
                                                data-toggle="modal" data-target="#edit-modal">
                                                <i class="fas fa-pencil-alt"></i> Edit
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded">
                                                <i class="fas fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>/ifs/Dalet/DPSHARE/LSU</td>
                                        <td>ESAS ARCHIVE - Dalet DPSHARE/LSU</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-info btn-rounded"
                                                data-toggle="modal" data-target="#edit-modal">
                                                <i class="fas fa-pencil-alt"></i> Edit
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded">
                                                <i class="fas fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>/ifs/Dalet/DPSHARE/ESU</td>
                                        <td>ESAS ARCHIVE - Dalet DPSHARE/ESU</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-info btn-rounded"
                                                data-toggle="modal" data-target="#edit-modal">
                                                <i class="fas fa-pencil-alt"></i> Edit
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded">
                                                <i class="fas fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Archive Table -->
            <!-- Start News Table -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="customize-input row">
                            <div class="col-md-10">
                                <h4 class="card-title">News</h4>
                            </div>
                            <div class="col-md-2 text-right">
                                <button type="button" class="btn btn-sm btn-success btn-rounded" data-toggle="modal"
                                    data-target="#directory-modal">
                                    <i class="fas fa-plus"></i> Directory
                                </button>
                            </div>
                        </div>
                        <br>
                        <div class="table-responsive">
                            <table id="zero_config4" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Directory</th>
                                        <th>Folder Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>/ifs/NRCS</td>
                                        <td>ESAS ARCHIVE - NRCS</td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-info btn-rounded"
                                                data-toggle="modal" data-target="#edit-modal">
                                                <i class="fas fa-pencil-alt"></i> Edit
                                            </button>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded">
                                                <i class="fas fa-trash"></i> Delete
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End News Table -->
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

<!-- Add Directory modal content -->
<div id="directory-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Add directory</h4>
                </div>
                <form action="#" class="pl-3 pr-3">
                    <div class="form-group">
                        <label for="">Directory</label>
                        <input type="text" class="form-control" id="placeholder" placeholder="Directory">
                    </div>
                    <div class="form-group">
                        <label for="">Folder Name</label>
                        <input type="text" class="form-control" id="placeholder" placeholder="Folder Name">
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-rounded btn-primary" type="submit">Add</button>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Edit Directory modal content -->
<div id="edit-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Add directory</h4>
                </div>
                <form action="#" class="pl-3 pr-3">
                    <div class="form-group">
                        <label for="">Directory</label>
                        <input type="text" class="form-control" id="placeholder" placeholder="Directory"
                            value="/ifs/MXFSERVER">
                    </div>
                    <div class="form-group">
                        <label for="">Folder Name</label>
                        <input type="text" class="form-control" id="placeholder" placeholder="Folder Name"
                            value="ESAS MXFSERVER">
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-rounded btn-primary" type="submit">Save</button>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</html>