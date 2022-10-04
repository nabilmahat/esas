<?php 
include "src/header.php";

$custParam = $_GET['cust_id'];

if(isset($custParam)) {
    if($custParam != '') {
    $listDepartment = "SELECT * FROM customer 
                        INNER JOIN department ON customer.cust_id = department.cust_id
                        WHERE customer.cust_id='".$custParam."'";
    $execListDepartment = mysqli_query($conn, $listDepartment); 
    } else {
        echo "<script>";
        echo "location.href = 'storage-user.php';";
        echo "</script>";
    }
} else {
    echo "<script>";
    echo "location.href = 'storage-user.php';";
    echo "</script>";
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
            <div class="col-5 align-self-center">
                <div class="col-12 align-right">
                    <div class="customize-input float-right" data-toggle="modal" data-target="#add-department-modal">
                        <button id="btnPrint" class="btn btn-dark">Add Department</button>
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
            <!-- Start Production Table -->
            <?php
                $deptNum = 1;
                foreach ($execListDepartment as $row) {
                    echo "<div class='col-12'>";
                    echo "<div class='card'>";
                    echo "<div class='card-body'>";
                    echo "<div class='customize-input row'>";
                    echo "<div class='col-md-8'>";
                    echo "<h4 class='card-title'>".$row["dept_name"]."</h4>";
                    echo "</div>";
                    echo "<div class='col-md-4 text-right'>";
                    echo "<button type='button' class='btn btn-sm btn-info btn-rounded' data-toggle='modal'";
                    echo 'data-target="#edit-department-modal" onclick="setDeptName(';
                    echo "'";
                    echo $row["dept_id"];
                    echo "'";
                    echo ",";
                    echo "'";
                    echo $row["dept_name"];
                    echo "'";
                    echo ",";
                    echo "'";
                    echo $row["dept_desc"];
                    echo "'";
                    echo ')" >';
                    echo "<i class='fas fa-pencil-alt'></i> Department";
                    echo "</button>&nbsp;&nbsp;";
                    echo "<button type='button' class='btn btn-sm btn-danger btn-rounded' data-toggle='modal'";
                    echo 'data-target="#directory-modal" onclick="setFolderName(';
                    echo "'";
                    echo $row["dept_id"];
                    echo "'";
                    echo ')" >';
                    echo "<i class='fas fa-trash-alt'></i> Department";
                    echo "</button>&nbsp;&nbsp;";
                    echo "<button type='button' class='btn btn-sm btn-success btn-rounded' data-toggle='modal'";
                    echo 'data-target="#directory-modal" onclick="setFolderName(';
                    echo "'";
                    echo $row["dept_id"];
                    echo "'";
                    echo ')" >';
                    echo "<i class='fas fa-plus'></i> Directory";
                    echo "</button>";
                    echo "</div>";
                    echo "</div>";
                    echo "<br>";
                    echo "<div class='table-responsive'>";
                    echo "<table id='zero_config".$deptNum."' class='table table-striped table-bordered no-wrap'>";
                    echo "<thead>";
                    echo "<tr>";
                    echo "<th>No</th>";
                    echo "<th>Directory</th>";
                    echo "<th>Folder Name</th>";
                    echo "<th>Action</th>";
                    echo "</tr>";
                    echo "</thead>";
                    echo "<tbody>";

                    $listDirectory = "SELECT * FROM folder 
                                        INNER JOIN department ON folder.dept_id = department.dept_id
                                        INNER JOIN customer ON department.cust_id = customer.cust_id
                                        WHERE customer.cust_id='$custParam' AND department.dept_id = '".$row['dept_id']."'";
                    $execListDirectory = mysqli_query($conn, $listDirectory);

                    $dirNum = 1;

                    foreach ($execListDirectory as $rowDir) {
                        echo "<tr>";
                        echo "<td>".$dirNum."</td>";
                        echo "<td>".$rowDir["folder_directory"]."</td>";
                        echo "<td>".$rowDir["folder_name"]."</td>";
                        echo "<td>";
                        echo "<button type='button' class='btn btn-sm btn-info btn-rounded'";
                        echo 'data-toggle="modal" data-target="#edit-directory-modal" onclick="setDirectoryName(';
                        echo "'";
                        echo $rowDir["folder_id"];
                        echo "'";
                        echo ",";
                        echo "'";
                        echo $rowDir["folder_directory"];
                        echo "'";
                        echo ",";
                        echo "'";
                        echo $rowDir["folder_name"];
                        echo "'";
                        echo ')" >';
                        echo "<i class='fas fa-pencil-alt'></i> Edit";
                        echo "</button>";
                        echo "&nbsp;&nbsp;";
                        echo "<button type='button' class='btn btn-sm btn-danger btn-rounded'>";
                        echo "<i class='fas fa-trash'></i> Delete";
                        echo "</button>";
                        echo "</td>";
                        echo "</tr>";

                        $dirNum++;
                    }

                    $deptNum++;
    
                    echo "</tbody>";
                    echo "</table>";
                    echo "</div>";
                    echo "</div>";
                    echo "</div>";
                    echo "</div>";
                }
            ?>
            <!-- End Production Table -->
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

<!-- Add Department modal content -->
<div id="add-department-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Add Department</h4>
                </div>
                <form action="#" class="pl-3 pr-3">
                    <div class="form-group">
                        <label for="">Department Name</label>
                        <input type="text" class="form-control" placeholder="Production" id="dept_name" name="dept_name"
                            required="" maxlength="255">
                        <div class="invalid-feedback" id="dept-name-error" style="display: none">
                            Department Name is required!
                        </div>
                        <div class="invalid-feedback" id="dept-name-error-exist" style="display: none">
                            Department Name already exist, please insert another Department Name.
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Department Description</label>
                        <input type="text" class="form-control" placeholder="Description" id="dept_desc"
                            name="dept_desc" required="" maxlength="255">
                        <div class="invalid-feedback" id="dept-desc-error" style="display: none">
                            Department Description is required!
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-rounded btn-danger" type="button" data-dismiss="modal"
                            id="cancelAdd">Cancel</button>
                        <button class="btn btn-rounded btn-success" type="button" id="addDepartment">Add
                            Department</button>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Edit Department modal content -->
<div id="edit-department-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Edit Department</h4>
                </div>
                <form action="#" class="pl-3 pr-3">
                    <div class="form-group">
                        <label for="">Department Name</label>
                        <input type="text" class="form-control" placeholder="Production" id="dept_name_edit" name="dept_name_edit"
                            required="" maxlength="255">
                        <div class="invalid-feedback" id="edit-dept-name-error" style="display: none">
                            Department Name is required!
                        </div>
                        <div class="invalid-feedback" id="edit-dept-name-error-exist" style="display: none">
                            Department Name already exist, please insert another Department Name.
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Department Description</label>
                        <input type="text" class="form-control" placeholder="Description" id="dept_desc_edit"
                            name="dept_desc_edit" required="" maxlength="255">
                        <div class="invalid-feedback" id="edit-dept-desc-error" style="display: none">
                            Department Description is required!
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-rounded btn-danger" type="button" data-dismiss="modal"
                            id="cancelEditDept">Cancel</button>
                        <button class="btn btn-rounded btn-success" type="button" id="editDepartment">Save
                            Department</button>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

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
                        <input type="text" class="form-control" id="dir" name="dir" placeholder="/folder/dir">
                        <div class="invalid-feedback" id="dir-error" style="display: none">
                            Directory is required!
                        </div>
                        <div class="invalid-feedback" id="dir-error-exist" style="display: none">
                            Directory is already been used, please insert new directory.
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Directory Name</label>
                        <input type="text" class="form-control" id="dir_name" name="dir_name" placeholder="Directory Name">
                        <div class="invalid-feedback" id="dir-name-error" style="display: none">
                            Directory Name Name is required!
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-rounded btn-danger" type="button" data-dismiss="modal" id="cancelAddDir">Cancel</button>
                        <button class="btn btn-rounded btn-success" type="button" id="addDirectory">Add Directory</button>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Edit Directory modal content -->
<div id="edit-directory-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <h4 class="card-title">Edit directory</h4>
                </div>
                <form action="#" class="pl-3 pr-3">
                    <div class="form-group">
                        <label for="">Directory</label>
                        <input type="text" class="form-control" id="edit_dir" name="edit_dir" placeholder="/folder/dir">
                        <div class="invalid-feedback" id="edit-dir-error" style="display: none">
                            Directory is required!
                        </div>
                        <div class="invalid-feedback" id="edit-dir-error-exist" style="display: none">
                            Directory is already been used, please insert new directory.
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Directory Name</label>
                        <input type="text" class="form-control" id="edit_dir_name" name="edit_dir_name" placeholder="Directory Name">
                        <div class="invalid-feedback" id="edit-dir-name-error" style="display: none">
                            Directory Name Name is required!
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <button class="btn btn-rounded btn-danger" type="button" data-dismiss="modal" id="cancelEditDir">Cancel</button>
                        <button class="btn btn-rounded btn-success" type="button" id="editDirectory">Save Directory</button>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script src="src/dist/js/ajaxForm/addDepartment.js"></script>
<script src="src/dist/js/ajaxForm/editDepartment.js"></script>
<script src="src/dist/js/ajaxForm/addDirectory.js"></script>
<script src="src/dist/js/ajaxForm/editDirectory.js"></script>

</html>