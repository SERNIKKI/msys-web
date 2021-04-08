<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/11/16
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>美食易食管理系统</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Themesbrand" name="author" />
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <link rel="stylesheet" href="./plugins/morris/morris.css">

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<!-- 导航栏 -->
<header id="topnav">
    <div class="topbar-main">
        <div class="container-fluid">

            <!-- Logo container-->
            <!-- 标志容器-->
            <div class="logo">

                <a href="index.jsp" class="logo">
                    <img src="assets/images/logo-msys.png" alt="" class="logo-small">
                    <img src="assets/images/logo-msys.png" alt="" class="logo-large">
                </a>

            </div>

            <!-- End Logo container-->

            <!-- 搜索框-->
            <div class="menu-extras topbar-custom">

                <ul class="navbar-right d-flex list-inline float-right mb-0">
                    <li class="dropdown notification-list d-none d-sm-block">
                        <form role="search" class="app-search">
                            <div class="form-group mb-0">
                                <input type="text" class="form-control" placeholder="搜索..">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </li>
                    <!-- 搜索框结束-->

                    <!-- 新消息-->
                    <li class="dropdown notification-list" >
                        <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light"  href="order_new.jsp" role="button" >
                            <i class="mdi mdi-bell noti-icon"  ></i>

                        </a>
                    </li>

                    <!-- 用户管理-->
                    <li class="dropdown notification-list">
                        <div class="dropdown notification-list">
                            <a class="dropdown-toggle nav-link arrow-none waves-effect nav-user waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="assets/images/users/user-4.jpg" alt="user" class="rounded-circle">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <a class="dropdown-item" href="Personalinfo.jsp"><i class="mdi mdi-account-circle m-r-5"></i> 个人信息</a>
                                <a class="dropdown-item d-block" href="#"><span class="badge badge-success float-right">11</span><i class="mdi mdi-settings m-r-5"></i> 设置</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-danger" href="login.jsp"><i class="mdi mdi-power text-danger"></i> 登出</a>
                            </div>
                        </div>
                    </li>

                    <li class="menu-item list-inline-item">
                        <!-- 移动菜单切换-->
                        <a class="navbar-toggle nav-link">
                            <div class="lines">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </a>
                        <!-- End 移动菜单切换-->
                    </li>

                </ul>



            </div>
            <!-- end menu-extras -->

            <div class="clearfix"></div>

        </div> <!-- end container -->
    </div>
    <!-- end topbar-main -->

    <!-- MENU Start -->
    <div class="navbar-custom">
        <div class="container-fluid">
            <div id="navigation">
                <!-- Navigation Menu-->
                <ul class="navigation-menu">

                    <li class="has-submenu">
                        <a href="index.jsp"><i class="mdi mdi-home"></i>主页</a>
                    </li>

                    <li class="has-submenu">
                        <a href="#"><i class="mdi mdi-buffer"></i>菜品管理</a>
                        <ul class="submenu megamenu">
                            <li>
                                <ul>
                                    <li><a href="food_staple.jsp">主食</a></li>
                                    <li><a href="food_dish.jsp">小菜</a></li>
                                    <li><a href="food_drink.jsp">饮品</a></li>
                                    <li><a href="food_porridge.jsp">汤粥</a></li>
                                    <li><a href="food_all.jsp">全部菜品</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="has-submenu">
                        <a href="#"><i class="mdi mdi-black-mesa"></i>订单管理</a>
                        <ul class="submenu">
                            <li><a href="order_new.jsp">最新订单</a></li>
                            <li><a href="order_history.jsp">历史订单</a></li>
<%--                            <li><a href="order_all.jsp">全部订单</a></li>--%>
                        </ul>
                    </li>

                    <li class="has-submenu">
                        <a href="#"><i class="mdi mdi-clipboard"></i>优惠活动</a>
                        <ul class="submenu">
                            <li><a href="AddActivity.jsp">新增活动</a></li>
                            <li><a href="CurrentActivity.jsp">当前活动</a></li>
                            <li><a href="PastActivity.jsp">历史活动</a></li>
                        </ul>
                    </li>

<%--                    <li class="has-submenu">--%>
<%--                        <a href="#"><i class="mdi mdi-google-pages"></i>顾客反馈</a>--%>
<%--                        <ul class="submenu megamenu">--%>
<%--                            <li>--%>
<%--                                <ul>--%>
<%--                                    <li><a href="GoodReview.jsp">好评</a></li>--%>
<%--                                    <li><a href="MediumReview.jsp">中评</a></li>--%>
<%--                                    <li><a href="BadReview.jsp">差评</a></li>--%>
<%--                                    <li><a href="Complaint.jsp">顾客投诉</a></li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>

<%--                    <li class="has-submenu">--%>
<%--                        <a href="#"><i class="mdi mdi-email"></i>联系管理员</a>--%>
<%--                        <ul class="submenu">--%>
<%--                            <li><a href="ReportProblem.jsp">上报问题</a></li>--%>
<%--                            <li><a href="Unsubscribe.jsp">注销店铺</a></li>--%>
<%--                            <li><a href="#">支持管理员</a></li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>

                </ul>
                <!-- End navigation menu -->
            </div> <!-- end #navigation -->
        </div> <!-- end container -->
    </div> <!-- end navbar-custom -->
</header>
<!-- End Navigation Bar-->

<!-- page wrapper start -->


<!-- Footer -->
<footer class="footer">
    <div class="container-fluid">

        <div class="row">
            <div class="col-12">
                2020 © "美食易食" <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="http://www.bootstrapmb.com" title="">Themesbrand</a></span>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer -->
<div class="wrapper">
    <div class="page-title-box">
        <div class="container-fluid">

            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">上报问题</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">主页</a>
                        <li class="breadcrumb-item"><a>联系管理员</a>
                        <li class="breadcrumb-item active">上报问题
                    </ol>
                </div>
            </div>
        </div>
        <!-- end container-fluid -->
    </div>
    <div class="page-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!-- Left sidebar -->
                    <div class="email-leftbar card">

                        <div class="mail-list m-t-20">
                            <a href="ReportProblem.jsp" >写邮件</a>
                            <a href="SentProblem.jsp" >已发送</a>
                            <a href="Inbox.jsp">收件箱</a>
                            <a href="Draft.jsp" class="active">草稿箱</a>
                            <a href="Dustbin.jsp">垃圾箱</a>
                        </div>
                        <div class="m-t-20">

                        </div>
                    </div>
                    <div class="card m-b-20">
                        <div class="card-body">
                            <h4 class="mt-0 header-title mb-3">草稿箱</h4>
                            <div class="inbox-wid">
                                <a href="#" class="text-dark">
                                    <div class="inbox-item">
                                        <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-1.jpg" class="thumb-md rounded-circle" alt=""></div>
                                        <h6 class="inbox-item-author mt-0 mb-1">管理员</h6>
                                        <p class="inbox-item-text text-muted mb-0">主题</p>
                                        <img src="assets/images/bg.jpg" alt="" width="100" height="30">
                                        <p class="inbox-item-date text-muted">2020年11月6日</p>
                                        <a href="#" class="btn btn-primary float-md-right">删除</a>

                                    </div>
                                </a>
                                <a href="#" class="text-dark">
                                    <div class="inbox-item">
                                        <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-2.jpg" class="thumb-md rounded-circle" alt=""></div>
                                        <h6 class="inbox-item-author mt-0 mb-1">管理员</h6>
                                        <p class="inbox-item-text text-muted mb-0">主题</p>
                                        <img src="assets/images/bg.jpg" alt="" width="100" height="30">
                                        <p class="inbox-item-date text-muted">2020年11月6日</p>
                                        <a href="#" class="btn btn-primary float-md-right">删除</a>
                                    </div>
                                </a>
                                <a href="#" class="text-dark">
                                    <div class="inbox-item">
                                        <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-3.jpg" class="thumb-md rounded-circle" alt=""></div>
                                        <h6 class="inbox-item-author mt-0 mb-1">管理员</h6>
                                        <p class="inbox-item-text text-muted mb-0">主题</p>
                                        <img src="assets/images/bg.jpg" alt="" width="100" height="30">
                                        <p class="inbox-item-date text-muted">2020年11月6日</p>
                                        <a href="#" class="btn btn-primary float-md-right">删除</a>
                                    </div>
                                </a>
                                <a href="#" class="text-dark">
                                    <div class="inbox-item">
                                        <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-4.jpg" class="thumb-md rounded-circle" alt=""></div>
                                        <h6 class="inbox-item-author mt-0 mb-1">管理员</h6>
                                        <p class="inbox-item-text text-muted mb-0">主题</p>
                                        <img src="assets/images/bg.jpg" alt="" width="100" height="30">
                                        <p class="inbox-item-date text-muted">2020年11月6日</p>
                                        <a href="#" class="btn btn-primary float-md-right">删除</a>
                                    </div>
                                </a>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination center">
                                        <li class="page-item"><a class="page-link" href="#">上一页</a></li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">下一页</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div><!-- End row -->

    </div>
    <!-- end container-fluid -->
</div>
</div>
< <!-- jQuery  -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/jquery.slimscroll.js"></script>
<script src="assets/js/waves.min.js"></script>

<script src="./plugins/jquery-sparkline/jquery.sparkline.min.js"></script>

<!--Wysiwig js-->
<script src="./plugins/tinymce/tinymce.min.js"></script>

<!-- App js -->
<script src="assets/js/app.js"></script>



</body>

</html>
