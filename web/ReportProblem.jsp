<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/11/13
  Time: 18:54
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
    <link rel="shortcut icon" href="assets/images/logo-msys.png">

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
                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            <i class="mdi mdi-bell noti-icon"></i>
                            <span class="badge badge-pill badge-info noti-icon-badge">3</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg">
                            <!-- item-->
                            <h6 class="dropdown-item-text">
                                我的消息(37)
                            </h6>
                            <!-- 消息列表-->
                            <div class="slimscroll notification-item-list">
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                    <div class="notify-icon bg-success"><i class="mdi mdi-cart-outline"></i></div>
                                    <p class="notify-details">订单提醒<span class="text-muted">您有一个未完成的订单。</span></p>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-warning"><i class="mdi mdi-message"></i></div>
                                    <p class="notify-details">订单提醒<span class="text-muted">您来自xxx的订单已完成</span></p>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-info"><i class="mdi mdi-flag"></i></div>
                                    <p class="notify-details">测试<span class="text-muted">测试</span></p>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-primary"><i class="mdi mdi-cart-outline"></i></div>
                                    <p class="notify-details">系统消息<span class="text-muted">欢迎使用美食易食管理系统！</span></p>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-danger"><i class="mdi mdi-message"></i></div>
                                    <p class="notify-details">系统消息<span class="text-muted">请完善个人信息</span></p>
                                </a>
                            </div>
                            <!-- All-->
                            <a href="javascript:void(0);" class="dropdown-item text-center text-primary">
                                所有消息 <i class="fi-arrow-right"></i>
                            </a>
                        </div>
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
                                <a class="dropdown-item text-danger" href="#"><i class="mdi mdi-power text-danger"></i> 登出</a>
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
                              <li><a href="order_all.jsp">全部订单</a></li>
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

                      <li class="has-submenu">
                          <a href="#"><i class="mdi mdi-google-pages"></i>顾客反馈</a>
                          <ul class="submenu megamenu">
                              <li>
                                  <ul>
                                      <li><a href="GoodReview.jsp">好评</a></li>
                                      <li><a href="MediumReview.jsp">中评</a></li>
                                      <li><a href="BadReview.jsp">差评</a></li>
                                      <li><a href="Complaint.jsp">顾客投诉</a></li>
                                  </ul>
                              </li>
                          </ul>
                      </li>

                      <li class="has-submenu">
                          <a href="#"><i class="mdi mdi-email"></i>联系管理员</a>
                          <ul class="submenu">
                              <li><a href="ReportProblem.jsp">上报问题</a></li>
                              <li><a href="Unsubscribe.jsp">注销店铺</a></li>
                              <li><a href="#">支持管理员</a></li>
                          </ul>
                      </li>

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
                2020 © 美食易食 <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="https://blog.sernikki.cn" title="">蕾咪</a></span>
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
                        <a href="#" class="active">写邮件</a>
                        <a href="SentProblem.jsp">已发送</a>
                        <a href="Inbox.jsp">收件箱</a>
                        <a href="Draft.jsp">草稿箱</a>
                        <a href="Dustbin.jsp">垃圾箱</a>
                    </div>
                    <div class="m-t-20">

                    </div>
                </div>
                <div class="card m-b-20">
                    <div class="card-body">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="主题">
                        </div>

                        <form method="post">
                            <textarea id="elm1" name="area"></textarea>
                        </form>

                        <div class="btn-toolbar form-group mb-0">
                            <div class="">
                                <button type="button" class="btn btn-success waves-effect waves-light m-r-5"><i class="far fa-save"></i></button>
                                <button type="button" class="btn btn-success waves-effect waves-light m-r-5"><i class="far fa-trash-alt"></i></button>
                                <button class="btn btn-primary waves-effect waves-light"> <span>发送</span> <i class="fab fa-telegram-plane m-l-10"></i> </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Left sidebar -->

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

<script>
    $(document).ready(function () {
        if($("#elm1").length > 0){
            tinymce.init({
                selector: "textarea#elm1",
                theme: "modern",
                height:300,
                plugins: [
                    "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
                    "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
                    "save table contextmenu directionality emoticons template paste textcolor"
                ],
                toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | print preview media fullpage | forecolor backcolor emoticons",
                style_formats: [
                    {title: 'Bold text', inline: 'b'},
                    {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
                    {title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
                    {title: 'Example 1', inline: 'span', classes: 'example1'},
                    {title: 'Example 2', inline: 'span', classes: 'example2'},
                    {title: 'Table styles'},
                    {title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
                ]
            });
        }
    });
</script>

</body>

</html>
