<?php 

include "connection/connection.php";

if(!isset($_SESSION['username']))
{    
    echo '<script language="javascript">';
    echo 'location.href="login.php"';
    echo '</script>';       
    exit();
}
else if(isset($_SESSION['username']))
{    
    if(isset($_SESSION['user_role']))
    {
        // if($_SESSION['user_role'] != "user")
        // {
        //     echo '<script language="javascript">';
        //     echo 'location.href="login.php"';
        //     echo '</script>';
        //     exit();
        // } else if($_SESSION['user_role'] != "admin")
        // {
        //     echo '<script language="javascript">';
        //     echo 'location.href="login.php"';
        //     echo '</script>';
        //     exit();
        // }
    }
    else if(!isset($_SESSION['user_role']))
    {        
        echo '<script language="javascript">';
        echo 'location.href="login.php"';
        echo '</script>';
        exit();        
    }
}

// $adminID = $_SESSION['user_id'];

// $query = "SELECT * FROM user  WHERE user_id = '$adminID'";

// $result = mysqli_query($conn,$query);
// $row = mysqli_fetch_array($result,MYSQLI_ASSOC);

if(isset($_GET["cust_id"])) {
    $checkCustomer = "SELECT * FROM customer INNER JOIN price ON customer.cust_id = price.cust_id WHERE customer.cust_id = '".$_GET["cust_id"]."' ";
    $execCheckCustomer = mysqli_query($conn, $checkCustomer);

    $checkRow = mysqli_num_rows($execCheckCustomer);

    if($checkRow==0){
        echo "<script>";
        echo "location.href = 'storage-user.php'";
        echo "</script>";
    } else {    
        $rowCust = mysqli_fetch_array($execCheckCustomer,MYSQLI_ASSOC);
    }
}

?>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="src/assets/images/esas_icon.png">
    <title>ESAS Cloud</title>
    <!-- Datatable Plugin Css -->
    <link href="src/assets/extra-libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">    
    <!-- Custom CSS -->
    <link href="src/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="src/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="src/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="src/dist/css/style.min.css" rel="stylesheet">
    <link href="src/dist/css/custom.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="index.php">
                            <b class="logo-icon">
                                <!-- Dark Logo icon -->
                                <img src="src/assets/images/esas_logo.png" alt="homepage" class="dark-logo esas-logo-header" />
                                <!-- Light Logo icon -->
                                <img src="src/assets/images/esas_icon.png" alt="homepage" class="light-logo esas-logo-header" />
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <!-- <span class="logo-text"> -->
                                <!-- dark Logo text -->
                                <!-- <h3 class="dark-logo">ESAS Cloud</h3> -->
                                <!-- Light Logo text -->
                                <!-- <img src="src/assets/images/logo-light-text.png" class="light-logo" alt="homepage" /> -->
                            <!-- </span> -->
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                            class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1 position-relative">
                        <?php

                            if (isset($rowCust["cust_name"]) && strpos($_SERVER['REQUEST_URI'],'storage-detail')) {
                                echo "<h2 class='cust-name' id='custName'>".$rowCust["cust_name"]." <i class='fas fa-pencil-alt pencil-edit cust-edit'";
                                echo "data-toggle='modal'";
                                echo 'data-target="#edit-customer-modal" onclick="setCustDetail(';
                                echo "'";
                                echo $rowCust["cust_id"];
                                echo "'";
                                echo ",";
                                echo "'";
                                echo $rowCust["cust_name"];
                                echo "'";
                                echo ",";
                                echo "'";
                                echo $rowCust["cust_description"];
                                echo "'";
                                echo ",";
                                echo "'";
                                echo $rowCust["price"];
                                echo "'";
                                echo ')"';
                                echo " data-placement='top' title='Edit Customer Detail'></i></h2>";
                            } else if (isset($rowCust["cust_name"]) && strpos($_SERVER['REQUEST_URI'],'report-detail')) {
                                echo "<h2 class='cust-name' id='custName'>".$rowCust["cust_name"]."</h2>";
                            }
                        ?>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <img src="src/assets/images/esas_icon.png" alt="user" class="rounded-circle"
                                    width="40">
                                <span class="ml-2 d-none d-lg-inline-block"><span>Hello,</span> <span
                                        class="text-dark"><?php echo $_SESSION["username"]; ?></span> <i data-feather="chevron-down"
                                        class="svg-icon"></i></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                <a class="dropdown-item" href="profile.php?email=<?php echo $_SESSION["email"]; ?>"><i data-feather="user"
                                        class="svg-icon mr-2 ml-1"></i>
                                    My Profile</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="authentication/logout.php"><i data-feather="power"
                                        class="svg-icon mr-2 ml-1"></i>
                                    Logout</a>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link active" href="index.php"
                                aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span
                                    class="hide-menu">Dashboard</span></a></li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Report</span></li>

                        <!-- <li class="sidebar-item"> <a class="sidebar-link" href="report-list.php"
                                aria-expanded="false"><i data-feather="tag" class="feather-icon"></i><span
                                    class="hide-menu">Customer List
                                </span></a>
                        </li> -->

                        <li class="sidebar-item"> <a class="sidebar-link" href="storage-user.php"
                                aria-expanded="false"><i class="icon-grid"></i><span
                                    class="hide-menu">Customer Management
                                </span></a>
                        </li>                        

                        <!-- <li class="sidebar-item"> <a class="sidebar-link" href="system.php"
                                aria-expanded="false"><i class="icon-settings"></i><span
                                    class="hide-menu">System Management
                                </span></a>
                        </li>                         -->

                        <?php if($_SESSION["user_role"] == "admin") { ?>
                        <li class="sidebar-item"> <a class="sidebar-link" href="user.php"
                                aria-expanded="false"><i class="icon-user"></i><span
                                    class="hide-menu">User Management
                                </span></a>
                        </li>
                        <?php } ?>

                        <li class="list-divider"></li>

                        <li class="nav-small-cap"><span class="hide-menu">System</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="authentication/logout.php"
                                aria-expanded="false"><i data-feather="log-out" class="feather-icon"></i><span
                                    class="hide-menu">Logout</span></a></li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->