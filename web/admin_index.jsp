<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/11/15
  Time: 19:47
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


                        <!-- 新消息-->
                        <li class="dropdown notification-list" >
                            <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light"  href="order_new.jsp" role="button" >
                                <i class="mdi mdi-bell noti-icon"  ></i>

                            </a>
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
<%--                                <li><a href="order_all.jsp">全部订单</a></li>--%>
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

<%--                        <li class="has-submenu">--%>
<%--                            <a href="#"><i class="mdi mdi-google-pages"></i>顾客反馈</a>--%>
<%--                            <ul class="submenu megamenu">--%>
<%--                                <li>--%>
<%--                                    <ul>--%>
<%--                                        <li><a href="GoodReview.jsp">好评</a></li>--%>
<%--                                        <li><a href="MediumReview.jsp">中评</a></li>--%>
<%--                                        <li><a href="BadReview.jsp">差评</a></li>--%>
<%--                                        <li><a href="Complaint.jsp">顾客投诉</a></li>--%>
<%--                                    </ul>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>

<%--                        <li class="has-submenu">--%>
<%--                            <a href="#"><i class="mdi mdi-email"></i>联系管理员</a>--%>
<%--                            <ul class="submenu">--%>
<%--                                <li><a href="ReportProblem.jsp">上报问题</a></li>--%>
<%--                                <li><a href="Unsubscribe.jsp">注销店铺</a></li>--%>
<%--                                <li><a href="#">支持管理员</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>

                    </ul>
                    <!-- End navigation menu -->
                </div> <!-- end #navigation -->
            </div> <!-- end container -->
        </div> <!-- end navbar-custom -->
    </header>
    <!-- End Navigation Bar-->

    <!-- page wrapper start -->
    <div class="wrapper">
        <div class="page-title-box">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title">店铺名</h4>
                        <%--            <ol class="breadcrumb">--%>
                        <%--              <li class="breadcrumb-item active"></li>--%>
                        <%--            </ol>--%>

                    </div>
                </div>
            </div>
            <!-- end container-fluid -->

        </div>
        <!-- page-title-box -->

        <div class="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-primary mini-stat position-relative">
                            <div class="card-body">
                                <div class="mini-stat-desc">
                                    <h6 class="text-uppercase verti-label text-white-50">点击量</h6>
                                    <div class="text-white">
                                        <h6 class="text-uppercase mt-0 text-white-50">点击量</h6>
                                        <h3 class="mb-3 mt-0">1,587</h3>
                                        <div class="">
                                            <span class="badge badge-light text-info"> +11% </span> <span class="ml-2">相较昨日</span>
                                        </div>
                                    </div>
                                    <div class="mini-stat-icon">
                                        <i class="mdi mdi-cube-outline display-2"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-primary mini-stat position-relative">
                            <div class="card-body">
                                <div class="mini-stat-desc">
                                    <h6 class="text-uppercase verti-label text-white-50">加购量</h6>
                                    <div class="text-white">
                                        <h6 class="text-uppercase mt-0 text-white-50">加购量</h6>
                                        <h3 class="mb-3 mt-0">4,785</h3>
                                        <div class="">
                                            <span class="badge badge-light text-danger"> -29% </span> <span class="ml-2">相较昨日</span>
                                        </div>
                                    </div>
                                    <div class="mini-stat-icon">
                                        <i class="mdi mdi-buffer display-2"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-primary mini-stat position-relative">
                            <div class="card-body">
                                <div class="mini-stat-desc">
                                    <h6 class="text-uppercase verti-label text-white-50">购买量</h6>
                                    <div class="text-white">
                                        <h6 class="text-uppercase mt-0 text-white-50">购买量</h6>
                                        <h3 class="mb-3 mt-0">15.9</h3>
                                        <div class="">
                                            <span class="badge badge-light text-primary"> 0% </span> <span class="ml-2">相较昨日</span>
                                        </div>
                                    </div>
                                    <div class="mini-stat-icon">
                                        <i class="mdi mdi-tag-text-outline display-2"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-primary mini-stat position-relative">
                            <div class="card-body">
                                <div class="mini-stat-desc">
                                    <h6 class="text-uppercase verti-label text-white-50">收入</h6>
                                    <div class="text-white">
                                        <h6 class="text-uppercase mt-0 text-white-50">收入</h6>
                                        <h3 class="mb-3 mt-0">￥1890</h3>
                                        <div class="">
                                            <span class="badge badge-light text-info"> +89% </span> <span class="ml-2">相较昨日</span>
                                        </div>
                                    </div>
                                    <div class="mini-stat-icon">
                                        <i class="mdi mdi-briefcase-check display-2"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-xl-9">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-xl-8 border-right">
                                        <h4 class="mt-0 header-title mb-4">本周趋势</h4>
                                        <div id="morris-area-example" class="dashboard-charts morris-charts"></div>
                                    </div>
                                    <div class="col-xl-4">
                                        <h4 class="header-title mb-4">日销量报告</h4>
                                        <div class="p-3">
                                            <ul class="nav nav-pills nav-justified mb-3" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="pills-first-tab" data-toggle="pill" href="#pills-first" role="tab" aria-controls="pills-first" aria-selected="true">前日</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-second-tab" data-toggle="pill" href="#pills-second" role="tab" aria-controls="pills-second" aria-selected="false">昨日</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-third-tab" data-toggle="pill" href="#pills-third" role="tab" aria-controls="pills-third" aria-selected="false">本日</a>
                                                </li>
                                            </ul>

                                            <div class="tab-content">
                                                <div class="tab-pane show active" id="pills-first" role="tabpanel" aria-labelledby="pills-first-tab">
                                                    <div class="p-3">
                                                        <h2>$17562</h2>
                                                        <a href="#" class="text-primary">更多...</a>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="pills-second" role="tabpanel" aria-labelledby="pills-second-tab">
                                                    <div class="p-3">
                                                        <h2>$18614</h2>
                                                        <a href="#" class="text-primary">更多...</a>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="pills-third" role="tabpanel" aria-labelledby="pills-third-tab">
                                                    <div class="p-3">
                                                        <h2>$19752</h2>
                                                        <a href="#" class="text-primary">更多...</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end row -->
                            </div>
                        </div>
                    </div>
                    <!-- end col -->

                    <div class="col-xl-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mt-0 header-title mb-4">饼状分析图</h4>
                                <div id="morris-donut-example" class="dashboard-charts morris-charts"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-xl-4">
                        <div class="card m-b-20">
                            <div class="card-body">
                                <h4 class="mt-0 header-title mb-3">当前订单</h4>
                                <div class="inbox-wid">
                                    <a href="#" class="text-dark">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-1.jpg" class="thumb-md rounded-circle" alt=""></div>
                                            <h6 class="inbox-item-author mt-0 mb-1">用户1</h6>
                                            <p class="inbox-item-text text-muted mb-0">4个水煎包+1碗豆浆</p>
                                            <p class="inbox-item-date text-muted">13:40 PM</p>
                                        </div>
                                    </a>
                                    <a href="#" class="text-dark">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-2.jpg" class="thumb-md rounded-circle" alt=""></div>
                                            <h6 class="inbox-item-author mt-0 mb-1">用户2</h6>
                                            <p class="inbox-item-text text-muted mb-0">2个水煎包+1个豆沙包+一碗黑米粥</p>
                                            <p class="inbox-item-date text-muted">13:34 PM</p>
                                        </div>
                                    </a>
                                    <a href="#" class="text-dark">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-3.jpg" class="thumb-md rounded-circle" alt=""></div>
                                            <h6 class="inbox-item-author mt-0 mb-1">用户3</h6>
                                            <p class="inbox-item-text text-muted mb-0">2个韭菜鸡蛋包子+一个鸡蛋+一碗豆浆</p>
                                            <p class="inbox-item-date text-muted">13:17 PM</p>
                                        </div>
                                    </a>
                                    <a href="#" class="text-dark">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-4.jpg" class="thumb-md rounded-circle" alt=""></div>
                                            <h6 class="inbox-item-author mt-0 mb-1">用户4</h6>
                                            <p class="inbox-item-text text-muted mb-0">3个韭菜鸡蛋包子+一碗胡辣汤</p>
                                            <p class="inbox-item-date text-muted">12:20 PM</p>
                                        </div>
                                    </a>
                                    <a href="#" class="text-dark">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img float-left mr-3"><img src="assets/images/users/user-5.jpg" class="thumb-md rounded-circle" alt=""></div>
                                            <h6 class="inbox-item-author mt-0 mb-1">用户5</h6>
                                            <p class="inbox-item-text text-muted mb-0">一碗胡辣汤</p>
                                            <p class="inbox-item-date text-muted">11:47 AM</p>
                                        </div>
                                    </a>

                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mt-0 header-title mb-4">日销榜</h4>
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <h6 class="mt-0">豆浆</h6>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="peity-pie" data-peity='{ "fill": ["#f16c69", "#f2f2f2"]}' data-width="54" data-height="54">70/100</span>
                                                </div>
                                            </td>
                                            <td>
                                                <h6 class="mt-0">70%</h6>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h6 class="mt-0">水煎包</h6>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="peity-pie" data-peity='{ "fill": ["#f16c69", "#f2f2f2"]}' data-width="54" data-height="54">84/100</span>
                                                </div>
                                            </td>
                                            <td>
                                                <h6 class="mt-0">84%</h6>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h6 class="mt-0">韭菜鸡蛋包子</h6>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="peity-pie" data-peity='{ "fill": ["#f16c69", "#f2f2f2"]}' data-width="54" data-height="54">62/100</span>
                                                </div>
                                            </td>
                                            <td>
                                                <h6 class="mt-0">62%</h6>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h6 class="mt-0">油条</h6>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="peity-pie" data-peity='{ "fill": ["#f16c69", "#f2f2f2"]}' data-width="54" data-height="54">89/100</span>
                                                </div>
                                            </td>
                                            <td>
                                                <h6 class="mt-0">89%</h6>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mt-0 header-title mb-4">最近活动</h4>
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <h6 class="mt-0">豆浆</h6>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="peity-pie" data-peity='{ "fill": ["#f16c69", "#f2f2f2"]}' data-width="54" data-height="54">70/100</span>
                                                </div>
                                            </td>
                                            <td>
                                                <h6 class="mt-0">70%</h6>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h6 class="mt-0">水煎包</h6>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="peity-pie" data-peity='{ "fill": ["#f16c69", "#f2f2f2"]}' data-width="54" data-height="54">84/100</span>
                                                </div>
                                            </td>
                                            <td>
                                                <h6 class="mt-0">84%</h6>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h6 class="mt-0">韭菜鸡蛋包子</h6>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="peity-pie" data-peity='{ "fill": ["#f16c69", "#f2f2f2"]}' data-width="54" data-height="54">62/100</span>
                                                </div>
                                            </td>
                                            <td>
                                                <h6 class="mt-0">62%</h6>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h6 class="mt-0">油条</h6>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="peity-pie" data-peity='{ "fill": ["#f16c69", "#f2f2f2"]}' data-width="54" data-height="54">89/100</span>
                                                </div>
                                            </td>
                                            <td>
                                                <h6 class="mt-0">89%</h6>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mt-0 header-title mb-4">最近订单</h4>
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0">
                                        <thead>
                                        <tr>
                                            <th scope="col">(#) Id</th>
                                            <th scope="col">用户</th>
                                            <th scope="col">下单时间</th>
                                            <th scope="col">订单需求</th>
                                            <th scope="col" colspan="2">状态</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th scope="row">#15236</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-2.jpg" alt="" class="thumb-md rounded-circle mr-2"> Jeanette James
                                                </div>
                                            </td>
                                            <td>14/8/2018</td>
                                            <td>$104</td>
                                            <td><span class="badge badge-success">已完成</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#15237</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-3.jpg" alt="" class="thumb-md rounded-circle mr-2"> Christopher Taylor
                                                </div>
                                            </td>
                                            <td>15/8/2018</td>
                                            <td>$112</td>
                                            <td><span class="badge badge-warning">用户已取消</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#15238</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-4.jpg" alt="" class="thumb-md rounded-circle mr-2"> Edward Vazquez
                                                </div>
                                            </td>
                                            <td>15/8/2018</td>
                                            <td>$116</td>
                                            <td><span class="badge badge-success">已完成</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#15239</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-5.jpg" alt="" class="thumb-md rounded-circle mr-2"> Michael Flannery
                                                </div>
                                            </td>
                                            <td>16/8/2018</td>
                                            <td>$109</td>
                                            <td><span class="badge badge-primary">处理中</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#15240</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-6.jpg" alt="" class="thumb-md rounded-circle mr-2"> Jamie Fishbourne
                                                </div>
                                            </td>
                                            <td>17/8/2018</td>
                                            <td>$120</td>
                                            <td><span class="badge badge-success">已完成</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mt-0 header-title mb-4">最近订单</h4>
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0">
                                        <thead>
                                        <tr>
                                            <th scope="col">(#) Id</th>
                                            <th scope="col">用户</th>
                                            <th scope="col">下单时间</th>
                                            <th scope="col">订单需求</th>
                                            <th scope="col" colspan="2">状态</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th scope="row">#15236</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-2.jpg" alt="" class="thumb-md rounded-circle mr-2"> Jeanette James
                                                </div>
                                            </td>
                                            <td>14/8/2018</td>
                                            <td>$104</td>
                                            <td><span class="badge badge-success">已完成</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#15237</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-3.jpg" alt="" class="thumb-md rounded-circle mr-2"> Christopher Taylor
                                                </div>
                                            </td>
                                            <td>15/8/2018</td>
                                            <td>$112</td>
                                            <td><span class="badge badge-warning">用户已取消</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#15238</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-4.jpg" alt="" class="thumb-md rounded-circle mr-2"> Edward Vazquez
                                                </div>
                                            </td>
                                            <td>15/8/2018</td>
                                            <td>$116</td>
                                            <td><span class="badge badge-success">已完成</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#15239</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-5.jpg" alt="" class="thumb-md rounded-circle mr-2"> Michael Flannery
                                                </div>
                                            </td>
                                            <td>16/8/2018</td>
                                            <td>$109</td>
                                            <td><span class="badge badge-primary">处理中</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">#15240</th>
                                            <td>
                                                <div>
                                                    <img src="assets/images/users/user-6.jpg" alt="" class="thumb-md rounded-circle mr-2"> Jamie Fishbourne
                                                </div>
                                            </td>
                                            <td>17/8/2018</td>
                                            <td>$120</td>
                                            <td><span class="badge badge-success">已完成</span></td>
                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">删除</a>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->
            </div>
            <!-- end container-fluid -->
        </div>
        <!-- end page content-->

    </div>
    <!-- page wrapper end -->

    <!-- Footer -->
    <footer class="footer">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    2020 © 美食易食 <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="https://blog.sernikki.cn" title="">PQ</a></span>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer -->


    <!-- jQuery  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/waves.min.js"></script>

    <script src="./plugins/jquery-sparkline/jquery.sparkline.min.js"></script>

    <!-- Peity JS -->
    <script src="./plugins/peity/jquery.peity.min.js"></script>

    <script src="./plugins/morris/morris.min.js"></script>
    <script src="./plugins/raphael/raphael-min.js"></script>

    <script src="assets/pages/dashboard.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>
</body>
</html>
