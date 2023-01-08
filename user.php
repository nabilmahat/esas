<?php 
include "src/header.php";

if (isset($_SESSION["user_role"])) {
    if ($_SESSION["user_role"] != "admin") {        
        echo '<script>';
        echo 'location.href = "index.php";';
        echo '</script>';
    }
}

$userQuery = "SELECT * FROM user";
$execUserQuery = mysqli_query($conn, $userQuery);

?>
<style>
.role {
    color: white;
}
</style>
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
                <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">User</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb m-0 p-0">
                            <li class="breadcrumb-item text-muted active" aria-current="page">User List</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="col-5 align-self-center">
                <div class="customize-input float-right">
                    <form class="mt-4">
                        <div class="form-group">
                            <button type="button" class="btn btn-success border-0 custom-shadow" data-toggle="modal"
                                data-target="#new-user-modal">
                                <i class="fas fa-plus"></i> User
                            </button>
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
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Email</th>
                                        <th>Name</th>
                                        <th>Username</th>
                                        <th>Role</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        if (mysqli_num_rows($execUserQuery)>0) {
                                            $count = 1;
                                            foreach ($execUserQuery as $userData) { 
                                    ?>
                                    <tr>
                                        <td><?php echo $count; ?></td>
                                        <td><?php echo $userData['email']; ?></td>
                                        <td><?php echo $userData['fullname']; ?></td>
                                        <td><?php echo $userData['username']; ?></td>
                                        <?php if ($userData['user_role']=='user') { ?>
                                        <td>
                                            <div class="text-center">
                                                <span class="badge mr-2 badge badge-warning role">User</span>
                                            </div>
                                        </td>
                                        <?php } else { ?>
                                        <td>
                                            <div class="text-center">
                                                <span class="badge mr-2 badge badge-info role">Admin</span>
                                            </div>
                                        </td>
                                        <?php } ?>
                                        <td class="text-center">
                                            <a href="user-detail.php?email=<?php echo $userData["email"]; ?>" class="btn btn-sm btn-primary btn-rounded">
                                                View
                                            </a>
                                            <?php if($userData["username"] != $_SESSION["username"]) { ?>
                                            <button type="button" class="btn btn-sm btn-danger btn-rounded" onclick="deleteUser('<?php echo $userData['id']; ?>','<?php echo $userData['username']; ?>')">
                                                Delete
                                            </button>
                                            <?php } ?>
                                        </td>
                                    </tr>
                                    <?php 
                                            $count++;
                                            }
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
<script src="src/dist/js/ajaxForm/userAdd.js"></script>
<script src="src/dist/js/ajaxForm/userDelete.js"></script>
</body>

<!-- Add new user modal content -->
<div id="new-user-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header"><b>Add New User</b></div>
            <div class="modal-body">

                <form action="#" class="pl-3 pr-3">

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input class="form-control" type="email" required=""
                            id="email" name="email" placeholder="Enter user email">
                        <div class="invalid-feedback" id="email-error-exist" style="display: none">
                            Email already exist, please insert another email
                        </div>
                        <div class="invalid-feedback" id="email-error-null" style="display: none">
                            Please enter user email
                        </div>
                        <div class="invalid-feedback" id="email-error-format" style="display: none">
                            Email format invalid
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username">Username</label>
                        <input class="form-control" type="text" required=""
                            id="username" name="username" placeholder="Enter username" style="text-transform: lowercase">                            
                        <div class="invalid-feedback" id="username-error-exist" style="display: none">
                            Username already exist, please insert another username.
                        </div>                            
                        <div class="invalid-feedback" id="username-error-null" style="display: none">
                            Please insert username.
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="fullname">Fullname</label>
                        <input class="form-control" type="text" required=""
                            id="fullname" name="fullname" placeholder="Enter user full name">
                    <div class="invalid-feedback" id="fullname-error-null" style="display: none">
                        Please enter full name
                    </div>
                    </div>

                    <div class="form-group mb-4">
                        <label for="exampleFormControlSelect1" >Select No</label>
                        <select class="form-control" id="role" name="role" required>
                            <option value="user">User</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <input class="form-control" type="password" required=""
                        id="password" name="password" placeholder="Enter new password">                            
                        <div class="invalid-feedback" id="password-error-null" style="display: none">
                        Please enter password
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password1">Confirm Password</label>
                        <input class="form-control" type="password" required=""
                        id="confirmPassword" name="confirmPassword" placeholder="Confirm new password">                            
                        <div class="invalid-feedback" id="password-confirm-error-null" style="display: none">
                            Please enter confirm password
                        </div>                            
                        <div class="invalid-feedback" id="password-confirm-error-match" style="display: none">
                            Password do not match
                        </div>
                    </div>

                    <div class="form-group text-center">
                        <button class="btn btn-rounded btn-primary" type="button" id="userAdd">Add User</button>
                        <button class="btn btn-rounded btn-danger" type="button" data-dismiss="modal">Cancel</button>
                    </div>

                </form>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

 <!-- Delete User Modal -->
 <div id="delete-user-modal" class="modal fade" tabindex="-1" role="dialog"
    aria-labelledby="danger-header-modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-center">
        <div class="modal-content">
            <div class="modal-header modal-colored-header bg-danger">
                <h4 class="modal-title" id="danger-header-modalLabel">Confirm Action</h4>
                <button type="button" class="close" data-dismiss="modal"
                    aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <h5 class="mt-0"></h5>
                <p>Confirm delete user? Action cannot be reverted.</p>
                <p id="modalUserId"></p>
                <input type="hidden" id="idDelete">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light"
                    data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger" onclick="confirmDelete(id)">Delete</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</html>