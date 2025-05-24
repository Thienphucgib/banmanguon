<?php
require_once(__DIR__ . '/core/db.php');
require_once(__DIR__ . '/core/helpers.php');
require_once(__DIR__ . "/version.php");
if ($LOCNGUYEN_SIEUTHICODE->site('status_minify') == 1) {
    require_once __DIR__ . "/minify.php";
}
?>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Thực hiện bởi Nguyễn Nhật Lộc - SIEUTHICODE.NET - 0978364572 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?= $LOCNGUYEN_SIEUTHICODE->site('description'); ?>">
    <meta name="keywords" content="<?=$LOCNGUYEN_SIEUTHICODE->site('keywords')?>" />
    <meta name="author" content="sieuthicode.net">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?= $LOCNGUYEN_SIEUTHICODE->site('favicon'); ?>">
    <title><?= $LOCNGUYEN_SIEUTHICODE->site('title'); ?></title>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/dist/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/dist/css/sweetalert.css">
    <script src="/assets/libs/jquery/dist/jquery-1.11.2.min.js"></script>
    <script src="/dist/js/sweetalert.min.js"></script>
    <link class="/main-stylesheet" href="assets/cute/cute-alert.css" rel="stylesheet" type="text/css">
    <script src="/assets/cute/cute-alert.js"></script>
    <script src="/assets/ckeditor/ckeditor.js"></script>
</head>
<!-- Thực hiện bởi Nguyễn Nhật Lộc - Zalo: 0978364572 -->
<?php if ($LOCNGUYEN_SIEUTHICODE->site('status_cursor') == 1) : ?>
    <style>
        body {
            cursor: url(<?= $LOCNGUYEN_SIEUTHICODE->site('cursor_default') ?>), progress;
            font-family: 'Josefin Sans', sans-serif;
        }

        a,
        button,
        li,
        img,
        .btn-close,
        .btn,
        label,
        select,
        option,
        marquee {
            cursor: url(<?= $LOCNGUYEN_SIEUTHICODE->site('cursor_hover') ?>), progress;
        }
    </style>
<?php endif ?>

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
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="/">
                            <img src="<?= $LOCNGUYEN_SIEUTHICODE->site('logo') ?>" alt="homepage" width="200px" class="dark-logo" />
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
                        <!-- Notification -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle pl-md-3 position-relative" href="javascript:void(0)" id="bell" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span><i data-feather="bell" class="svg-icon"></i></span>
                                <span class="badge badge-primary notify-no rounded-circle">5</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-left mailbox animated bounceInDown">
                                <ul class="list-style-none">


                                </ul>
                            </div>
                        </li>
                        <!-- End Notification -->
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->

                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item d-none d-md-block">
                            <a class="nav-link" href="javascript:void(0)">
                                <form>
                                    <div class="customize-input">
                                        <input class="form-control custom-shadow custom-radius border-0 bg-white" type="search" placeholder="Search" aria-label="Search">
                                        <i class="form-control-icon" data-feather="search"></i>
                                    </div>
                                </form>
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <?php if (!isset($_SESSION['username'])) : ?>
                                <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle" width="40">
                                    <span class="ml-2 d-none d-lg-inline-block">Chưa đăng nhập <i data-feather="chevron-down" class="svg-icon"></i></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                    <a class="dropdown-item" href="login.php"><i data-feather="user" class="svg-icon mr-2 ml-1"></i>
                                        Đăng Nhập</a>
                                    <a class="dropdown-item" href="register.php"><i data-feather="settings" class="svg-icon mr-2 ml-1"></i>
                                        Đăng Ký</a>
                                </div>
                            <?php else : ?>
                                <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle" width="40">
                                    <span class="ml-2 d-none d-lg-inline-block"><span>Hello,</span> <span class="text-dark"><?= $getUser['username'] ?></span> <i data-feather="chevron-down" class="svg-icon"></i></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                    <a class="dropdown-item" href="javascript:void(0)"><i data-feather="box" class="svg-icon mr-2 ml-1"></i>
                                        <?= format_cash($getUser['coin']) ?>đ</a>
                                    <a class="dropdown-item" href="index.php?action=info"><i data-feather="user" class="svg-icon mr-2 ml-1"></i>
                                        Thông Tin Tài Khoản</a>
                                    <a class="dropdown-item" href="index.php?action=history_balance"><i data-feather="credit-card" class="svg-icon mr-2 ml-1"></i>
                                        Biến Động Số Dư</a>
                                    <a class="dropdown-item" href="index.php?action=logs"><i data-feather="clock" class="svg-icon mr-2 ml-1"></i>
                                        Lịch Sử Hoạt Động</a>

                                    <a class="dropdown-item" href="login.php"><i data-feather="power" class="svg-icon mr-2 ml-1"></i>
                                        Đăng Xuất</a>

                                </div>
                            <?php endif; ?>
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
        <?php require_once __DIR__ . '/includes/client/left.php' ?>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <?php
            $action = !empty($_GET['action']) ? xss($_GET['action']) : '';
            switch ($action) {

                case "category":
                    include "includes/client/category.php";
                    break;
                case "info":
                    include "includes/client/info.php";
                    break;
                case "history":
                    include "includes/client/history.php";
                    break;

                case "card":
                    include "includes/client/card.php";
                    break;

                case "bank":
                    include "includes/client/bank.php";
                    break;
                case "blog":
                    include "includes/client/blog.php";
                    break;
                case "view_blog":
                    include "includes/client/view_blog.php";
                    break;
                case "edit_bank":
                    include "includes/admin/edit_bank.php";
                    break;

                case "history_balance":
                    include "includes/client/history_balance.php";
                    break;
                case "logs":
                    include "includes/client/logs.php";
                    break;

                case "history":
                    include "includes/client/history.php";
                    break;
                case "dashboard":
                    include "includes/admin/dashboard.php";
                    break;

                case "view_product":
                    include "includes/client/view_product.php";
                    break;
                case "history_card":
                    include "includes/admin/history_card.php";
                    break;
                case "history_bank":
                    include "includes/admin/history_bank.php";
                    break;
                case "list_product":
                    include "includes/admin/list_product.php";
                    break;
                case "add_product":
                    include "includes/admin/add_product.php";
                    break;
                case "edit_product":
                    include "includes/admin/edit_product.php";
                    break;
                case "list_category":
                    include "includes/admin/list_category.php";
                    break;
                case "add_category":
                    include "includes/admin/add_category.php";
                    break;
                case "edit_category":
                    include "includes/admin/edit_category.php";
                    break;

                case "list_users":
                    include "includes/admin/list_users.php";
                    break;
                case "edit_users":
                    include "includes/admin/edit_users.php";
                    break;
                case "list_bank":
                    include "includes/admin/list_bank.php";
                    break;
                case "list_blog":
                    include "includes/admin/list_blog.php";
                    break;
                case "edit_blogs":
                    include "includes/admin/edit_blogs.php";
                    break;
                case "theme":
                    include "includes/admin/theme.php";
                    break;
                case "settings":
                    include "includes/admin/settings.php";
                    break;
                default:
                case "":
                    include "includes/client/home.php";
                    break;
            }

            ?>
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->

            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center text-dark">
                All Rights Reserved by SIEUTHICODE.NET. Designed and Developed by <a href="https://www.facebook.com/nguyennhatloc">LỘC NGUYỄN - Version <span class="text-danger"><?=$config['version']?></span></a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
    <script src="dist/js/app-style-switcher.js"></script>
    <script src="dist/js/feather.min.js"></script>
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js"></script>
    <!-- Thực hiện bởi Nguyễn Nhật Lộc - SIEUTHICODE.NET - 0978364572 -->
    <script src="assets/extra-libs/c3/d3.min.js"></script>
    <script src="assets/extra-libs/c3/c3.min.js"></script>
</body>

</html>