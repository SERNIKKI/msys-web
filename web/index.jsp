<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/11/12
  Time: 17:45
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
<body onload="a()">
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
                <a class="navbar-brand col-sm-3 col-md-2 mr-0" ><td> <div style="color:white; align:center;">欢迎回来，<%=session.getAttribute("mess")%></div> </td></a>
            </div>

            <!-- End Logo container-->

            <!-- 搜索框-->
            <div class="menu-extras topbar-custom">

                <ul class="navbar-right d-flex list-inline float-right mb-0">

                    <!-- 搜索框结束-->

                    <!-- 新消息-->
                    <li class="dropdown notification-list" >
                        <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" href="order_new.jsp" role="button" >
                            <i class="mdi mdi-bell noti-icon" ></i>

                        </a>
                    </li>


                    <!-- 用户管理-->
                    <li class="dropdown notification-list">
                        <div class="dropdown notification-list">
                            <a class="dropdown-toggle nav-link arrow-none waves-effect nav-user waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="assets/images/users/zut.jpg" alt="user" class="rounded-circle">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <a class="dropdown-item" href="Personalinfo.jsp"><i class="mdi mdi-account-circle m-r-5"></i> 个人信息</a>
<%--                                <a class="dropdown-item d-block" href="#"><span class="badge badge-success float-right">11</span><i class="mdi mdi-settings m-r-5"></i> 设置</a>--%>
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
<%--                                    <li><a href="food_all.jsp">全部菜品</a></li>--%>
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

                    <%--              <li class="has-submenu">--%>
                    <%--                <a href="#"><i class="mdi mdi-google-pages"></i>顾客反馈</a>--%>
                    <%--                <ul class="submenu megamenu">--%>
                    <%--                  <li>--%>
                    <%--                    <ul>--%>
                    <%--                      <li><a href="GoodReview.jsp">好评</a></li>--%>
                    <%--                      <li><a href="MediumReview.jsp">中评</a></li>--%>
                    <%--                      <li><a href="BadReview.jsp">差评</a></li>--%>
                    <%--                      <li><a href="Complaint.jsp">顾客投诉</a></li>--%>
                    <%--                    </ul>--%>
                    <%--                  </li>--%>
                    <%--                </ul>--%>
                    <%--              </li>--%>

                    <%--              <li class="has-submenu">--%>
                    <%--                <a href="#"><i class="mdi mdi-email"></i>联系管理员</a>--%>
                    <%--                <ul class="submenu">--%>
                    <%--                  <li><a href="ReportProblem.jsp">上报问题</a></li>--%>
                    <%--                  <li><a href="Unsubscribe.jsp">注销店铺</a></li>--%>
                    <%--                  <li><a href="#">支持管理员</a></li>--%>
                    <%--                </ul>--%>
                    <%--              </li>--%>

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
                                <h6 class="text-uppercase verti-label text-white-50">今日销量</h6>
                                <div class="text-white">
                                    <h6 class="text-uppercase mt-0 text-white-50">今日销量</h6>
                                    <h3 class="mb-3 mt-0" id="num1"></h3>
                                    <div class="">
                                        <span class="badge badge-light text-info" id="yestnum">  </span> <span class="ml-2">相较昨日</span>
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
                                <h6 class="text-uppercase verti-label text-white-50">今日收入</h6>
                                <div class="text-white">
                                    <h6 class="text-uppercase mt-0 text-white-50">收入</h6>
                                    <h3 class="mb-3 mt-0" id="sale"></h3>
                                    <div class="">
                                        <span class="badge badge-light text-danger" id="yestsale">  </span> <span class="ml-2">相较昨日</span>
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
                                <h6 class="text-uppercase verti-label text-white-50">总销量</h6>
                                <div class="text-white">
                                    <h6 class="text-uppercase mt-0 text-white-50">总销量</h6>
                                    <h3 class="mb-3 mt-0" id="allnum"></h3>
                                    <div class="">
                                        <span>MSYS</span>
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
                                <h6 class="text-uppercase verti-label text-white-50">总收入</h6>
                                <div class="text-white">
                                    <h6 class="text-uppercase mt-0 text-white-50">总收入</h6>
                                    <h3 class="mb-3 mt-0" id="allsale"></h3>
                                    <div class="">
                                        <span>MSYS</span>
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
                <div class="col-lg-6">
                    <div class="card m-b-20">
                        <div class="card-body">
                            <h4 class="mt-0 header-title">店内活动</h4>
                            <div id="carouselExampleCaption" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner" role="listbox" id="activityshow">
                                    <%--                                            <div class="carousel-item active">--%>
                                    <%--                                                <img src="assets/images/small/img-7.jpg" alt="..." class="d-block img-fluid">--%>
                                    <%--                                                <div class="carousel-caption d-none d-md-block">--%>
                                    <%--                                                    <h5>红烧肉</h5>--%>
                                    <%--                                                    <p>绝对新鲜</p>--%>
                                    <%--                                                </div>--%>
                                    <%--                                            </div>--%>
                                    <%--                                            <div class="carousel-item">--%>
                                    <%--                                                <img src="assets/images/small/img-5.jpg" alt="..." class="d-block img-fluid">--%>
                                    <%--                                                <div class="carousel-caption d-none d-md-block">--%>
                                    <%--                                                    <h5>糖醋排骨</h5>--%>
                                    <%--                                                    <p>味道鲜美</p>--%>
                                    <%--                                                </div>--%>
                                    <%--                                            </div>--%>
                                    <%--                                            <div class="carousel-item">--%>
                                    <%--                                                <img src="assets/images/small/img-4.jpg" alt="..." class="d-block img-fluid">--%>
                                    <%--                                                <div class="carousel-caption d-none d-md-block">--%>
                                    <%--                                                    <h5>麻辣烫</h5>--%>
                                    <%--                                                    <p>够辣、够爽、够劲</p>--%>
                                    <%--                                                </div>--%>
                                    <%--                                            </div>--%>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleCaption" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleCaption" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card m-b-30">
                        <div class="card-body">

                            <h4 class="mt-0 header-title">店内图景</h4>
                            <div style="display: flex; flex-direction: column; align-items: center ;">
                                <img src="assets/images/small/img-2.jpg" height="400" width="600" class="img-fluid d-block mx-auto" id="safe_image" alt="Responsive image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>


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
<script src="assets/js/metisMenu.min.js"></script>
<script src="assets/js/jquery.slimscroll.js"></script>
<script src="assets/js/waves.min.js"></script>
<script  src="assets/js/ajaxfileupload.js"></script>

<script src="./plugins/bootstrap-md-datetimepicker/js/moment-with-locales.min.js"></script>
<script src="./plugins/bootstrap-md-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
<script src="./plugins/jquery-sparkline/jquery.sparkline.min.js"></script>
<!-- Plugins js -->
<script src="./plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="./plugins/select2/js/select2.min.js"></script>
<script src="./plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="./plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js"></script>
<script src="./plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.min.js"></script>
<!-- Plugins Init js -->
<script src="assets/pages/form-advanced.js"></script>
<!-- Sweet-Alert  -->
<script src="./plugins/sweet-alert2/sweetalert2.min.js"></script>
<script src="assets/pages/sweet-alert.init.js"></script>
<!-- App js -->
<script src="assets/js/app.js"></script>

<script type="text/javascript">
    function a(){
        var account ="<%=session.getAttribute("mess")%>"
        var url="${pageContext.request.contextPath}/canting/servlet/index/info"
        $.ajax({
            url: url,
            method: "post",
            data: {"account": account},
            dataType: "json",
            success: function (data) {
                $("#num1").text(data.num);
                $("#yestnum").text(data.rate1);
                $("#sale").text(data.sale);
                $("#yestsale").text(data.rate2);
                $("#allnum").text(data.allnum);
                $("#allsale").text(data.allsale);
                b();
                c();
            }
        });
    }
    function b(){
        var account ="<%=session.getAttribute("mess")%>"
        var url="${pageContext.request.contextPath}/canting/servlet/activity/show"
        $.ajax({
            url:url,
            method:"post",
            data:{"account":account},
            dataType:"json",
            success:function(data){
                var i;
                var html="";
                $("#activityshow").empty();
                html+=  '<div class="carousel-item active">\n' +
                    '                                        <img height="400" width="650" src='+data[0].aimage+'  id="image1" alt="..." class="d-block img-fluid">\n' +
                    '                                        <div class="carousel-caption d-none d-md-block">\n' +
                    '                                            <h5 >'+data[0].atheme+'</h5>\n' +
                    '                                        </div>\n' +
                    '                                    </div>';
                for(i=1;i<data.length;i++){
                    html+=  '<div class="carousel-item">\n' +
                        '                                        <img height="400" width="650" src='+data[i].aimage+' id="image1" alt="..." class="d-block img-fluid">\n' +
                        '                                        <div class="carousel-caption d-none d-md-block">\n' +
                        '                                            <h5 >'+data[i].atheme+'</h5>\n' +
                        '                                        </div>\n' +
                        '                                    </div>';
                }
                html+='';
                if(html!=""){
                    $("#activityshow").prepend(html);
                }
            }
        });
    }
    function c() {
        var account ="<%=session.getAttribute("mess")%>"
        var url="${pageContext.request.contextPath}/canting/servlet/store/info"
        $.ajax({
            url: url,
            method: "post",
            data: {"account": account},
            dataType: "json",
            success: function (data) {
                $('#safe_image').attr('src', data.ssafeimage);
            }
        })
    }
</script>

</body>
</html>
