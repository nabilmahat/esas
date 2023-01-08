<?php 
include "src/header.php";

if (isset($_SESSION["user_role"]) || $_GET["email"]) {
    if ($_SESSION["user_role"] != "admin") {        
        echo '<script>';
        echo 'location.href = "index.php";';
        echo '</script>';
    }
}

$userEmail = $_GET["email"];

$userQuery = "SELECT * FROM user WHERE email ='".$userEmail."'; ";
$execUserQuery = mysqli_query($conn, $userQuery);
$userData = mysqli_fetch_array($execUserQuery);

if (mysqli_num_rows($execUserQuery)==0) {       
        echo '<script>';
        echo 'location.href = "user.php";';
        echo '</script>';
}

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
                            <li class="breadcrumb-item text-muted active" aria-current="page">User Detail</li>
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
                        <form action="#" class="pl-3 pr-3 row">
                            <div class="form-group col-md-6">
                                <label for="">Email</label>
                                <input type="hidden" class="form-control" placeholder="Email" id="email_param"
                                    name="email_param" required="" maxlength="255" value="<?php echo $userData["email"]; ?>">
                                <input type="email" class="form-control" placeholder="Email" id="email"
                                    name="email" required="" maxlength="255" value="<?php echo $userData["email"]; ?>">
                                <div class="invalid-feedback" id="email-error-format" style="display: none">
                                    Email is not in valid format!
                                </div>
                                <div class="invalid-feedback" id="email-error-null" style="display: none">
                                    Email is required!
                                </div>
                                <div class="invalid-feedback" id="email-error-exist" style="display: none">
                                    Email already exist, please insert another Email.
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">Username</label>
                                <input type="hidden" class="form-control" placeholder="Username" id="username_param"
                                    name="username_param" required="" maxlength="255" value="<?php echo $userData["username"]; ?>">
                                <input type="text" class="form-control" placeholder="Username" id="username"
                                    name="username" required="" maxlength="255" value="<?php echo $userData["username"]; ?>">
                                <div class="invalid-feedback" id="username-error-null" style="display: none">
                                    Username is required!
                                </div>
                                <div class="invalid-feedback" id="username-error-exist" style="display: none">
                                    Username already exist, please insert another Username.
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">Full Name</label>
                                <input type="text" class="form-control" placeholder="Full Name" id="fullname"
                                    name="fullname" required="" maxlength="255" value="<?php echo $userData["fullname"]; ?>">
                                <div class="invalid-feedback" id="fullname-error-null" style="display: none">
                                   Full Name is required!
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">Role</label>
                                <?php if ($userData["user_role"] == "admin") { ?>
                                <h3><button type="button" class="btn btn-primary">Admin</button></h3>
                                <?php } ?>
                                <?php if ($userData["user_role"] == "user") { ?>
                                <h3><button type="button" class="btn btn-warning role">User</button></h3>
                                <?php } ?>
                            </div>
                            <div class="form-group text-center col-md-12">
                                <button class="btn btn-rounded btn-success" type="button" id="userUpdate">Update</button>
                                <a href="user.php" class="btn btn-rounded btn-danger">Cancel</a>
                            </div>
                        </form>
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
<script src="src/dist/js/ajaxForm/userUpdate.js"></script>
</body>

</html>