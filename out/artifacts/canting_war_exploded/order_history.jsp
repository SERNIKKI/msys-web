<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/11/15
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>美食易食后台管理系统</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Themesbrand" name="author" />
    <link rel="shortcut icon" href="assets/images/logo-msys.png">
    <!-- Sweet Alert -->
    <link href="./plugins/sweet-alert2/sweetalert2.min.css" rel="stylesheet" type="text/css">
    <!-- DataTables -->
    <link href="./plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="./plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- Responsive datatable examples -->
    <link href="./plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
</head>
<body onload="a(3)">
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
                            <i class="mdi mdi-bell noti-icon"  ></i>

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
<!-- page wrapper start -->
<div class="wrapper">
    <div class="page-title-box">
        <div class="container-fluid">

            <div class="row">
                <div class="col-sm-12">
                    <h4 class="page-title">历史订单</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
                        <li class="breadcrumb-item"><a>订单管理</a></li>
                        <li class="breadcrumb-item active">历史订单</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- end container-fluid -->

    </div>
    <!-- page-title-box -->

    <div class="page-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card m-b-20">
                        <div class="card-body">
                            <div class="table-responsive order-table">
                                <table class="table table-hover mb-0">
                                    <thead>
                                    <tr>
                                        <th scope="col">用户名</th>
                                        <th scope="col">订单号</th>
                                        <th scope="col">订单详情</th>
                                        <th scope="col">付款</th>
                                        <th scope="col" >下单时间</th>
                                        <th scope="col">状态</th>
                                        <button  type="button" class="btn btn-primary" onclick="a(3)">
                                            刷新
                                        </button>
                                    </tr>
                                    </thead>
                                    <tbody id="orderitems">
                                    <%--                                             订单--%>
                                    </tbody>
                                </table>
                                <nav aria-label="Page navigation example" id="page">
                                </nav>
                            </div>

                        </div>
                    </div>
                </div> <!-- end col -->
            </div>
        </div>
        <div class="modal fade" id="orderinfo" role="dialog" tabindex="-1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header ">

                        <h4 class="modal-title">订单详情</h4>
                    </div>
                    <div class="modal-body">


                        <div class="card m-b-30" id="infoitem">
                            <%--                                详情列表--%>
                        </div>
                        <button type="button" class="btn btn-primary waves-effect waves-light" onclick="shut()">关闭</button>


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

<!-- Required datatable js -->
<script src="./plugins/datatables/jquery.dataTables.min.js"></script>
<script src="./plugins/datatables/dataTables.bootstrap4.min.js"></script>
<!-- Buttons examples -->
<script src="./plugins/datatables/dataTables.buttons.min.js"></script>
<script src="./plugins/datatables/buttons.bootstrap4.min.js"></script>
<script src="./plugins/datatables/jszip.min.js"></script>
<script src="./plugins/datatables/pdfmake.min.js"></script>
<script src="./plugins/datatables/vfs_fonts.js"></script>
<script src="./plugins/datatables/buttons.html5.min.js"></script>
<script src="./plugins/datatables/buttons.print.min.js"></script>
<script src="./plugins/datatables/buttons.colVis.min.js"></script>
<!-- Responsive examples -->
<script src="./plugins/datatables/dataTables.responsive.min.js"></script>
<script src="./plugins/datatables/responsive.bootstrap4.min.js"></script>
<!-- Datatable init js -->
<script src="assets/pages/datatables.init.js"></script>
<!-- App js -->
<script src="assets/js/app.js"></script>
<script type="text/javascript">
    function a(o){
        var account ="<%=session.getAttribute("mess")%>"
        var url="${pageContext.request.contextPath}/canting/servlet/order/Show"
        var sign=o;
        $.ajax({
            url:url,
            type:"POST",
            data:{"account":account,"sign":sign},
            dataType:"json",
            success:function(data){
                console.log(data)
                s=sign;
                var i;
                var j,pagenum,lastpage,nextpage;

                var html="";
                var ihtml="";
                $("#orderitems").empty();
                $("#page").empty();
                if(data.length<=5) {
                    for (i = 0; i < data.length; i++) {
                        html += '<tr>\n' +
                            '                                        <td>' + data[i].uname + '</td>\n' +
                            '                                        <td>' + data[i].oid + '</td>\n' +
                            '                                        <td><button type="button"  class="btn btn-success order-ok waves-effect waves-light" id=' + data[i].oid + ' onclick="showinfo(this)" >查看订单</button></td>\n' +
                            '                                        <td>' + data[i].price + '</td>\n' +
                            '                                        <td>' + data[i].date + '</td>\n';
                        if (data[i].state == 2) {
                            html += '                                         <td><span class="badge btn-primary badge-pill"><i class="mdi mdi-checkbox-blank-circle text-warning"></i>已完成</span></td>\n' +
                                '                                    </tr>';
                        } else {
                            html += '                                         <td><span class="badge badge-info badge-pill"><i class="mdi mdi-checkbox-blank-circle text-warning"></i> 已取消</span></td>\n' ;

                        }
                    }
                }else{
                    for (i = 0; i < 5; i++) {

                        html += '<tr>\n' +
                            '                                        <td>' + data[i].uname + '</td>\n' +
                            '                                        <td>' + data[i].oid + '</td>\n' +
                            '                                        <td><button type="button"  class="btn btn-success order-ok waves-effect waves-light" id=' + data[i].oid + ' onclick="showinfo(this)" >查看订单</button></td>\n' +
                            '                                        <td>' + data[i].price + '</td>\n' +
                            '                                        <td>' + data[i].date + '</td>\n';
                        if (data[i].state == 2) {
                            html += '                                         <td><span class="badge btn-primary badge-pill"><i class="mdi mdi-checkbox-blank-circle text-warning"></i>已完成</span></td>\n' +
                                '                                    </tr>';
                        } else {
                            html += '                                         <td><span class="badge badge-info badge-pill"><i class="mdi mdi-checkbox-blank-circle text-warning"></i> 已取消</span></td>\n' ;

                        }
                    }
                }
                if(html!=""){
                    $("#orderitems").prepend(html);
                }

                ihtml+='<ul class="pagination center">\n';
                pagenum=parseInt((i-1)/5)+1;
                if(pagenum>1){
                    lastpage=pagenum-1;
                }else{
                    lastpage=pagenum;
                }
                ihtml+='<li class="page-item"><a class="page-link " onclick="b('+lastpage+')">上一页</a></li>';
                var n=parseInt(data.length/5);
                if((data.length%4)!=0){
                    n++;
                }
                if(pagenum==n){
                    nextpage=pagenum;
                }else {
                    nextpage=pagenum+1;
                }
                for(j=1;j<=n;j++){
                    ihtml+=' <li class="page-item"><a class="page-link " onclick="b('+j+')">'+j+'</a></li>';
                }
                ihtml+='<li class="page-item"><a class="page-link" onclick="b('+nextpage+')">下一页</a></li>';
                ihtml+='</ul>\n' ;
                if(ihtml!=""){
                    $("#page").prepend(ihtml);
                }
            }
        });
    }
    function b(e){
        var account ="<%=session.getAttribute("mess")%>"
        var url="${pageContext.request.contextPath}/canting/servlet/order/Show"
        var sign=s;
        $.ajax({
            url:url,
            type:"POST",
            data:{"account":account,"sign":sign},
            dataType:"json",
            success:function(data){
                var i;
                var j,pagenum,lastpage,nextpage;
                var html="";
                var ihtml="";
                $("#page").empty();
                $("#orderitems").empty();
                if(data.length<=5*e){
                    for (i = 5*(e-1); i < data.length; i++) {
                        html += '<tr>\n' +
                            '                                        <td>' + data[i].uname + '</td>\n' +
                            '                                        <td>' + data[i].oid + '</td>\n' +
                            '                                        <td><button type="button"  class="btn btn-success order-ok waves-effect waves-light" id=' + data[i].oid + ' onclick="showinfo(this)" >查看订单</button></td>\n' +
                            '                                        <td>' + data[i].price + '</td>\n' +
                            '                                        <td>' + data[i].date + '</td>\n';
                        if (data[i].state == 2) {
                            html += '                                         <td><span class="badge btn-primary badge-pill"><i class="mdi mdi-checkbox-blank-circle text-warning"></i>已完成</span></td>\n' +
                                '                                    </tr>';
                        } else {
                            html += '                                         <td><span class="badge badge-info badge-pill"><i class="mdi mdi-checkbox-blank-circle text-warning"></i> 已取消</span></td>\n' ;

                        }
                    }
                }else{
                    for (i = 5*(e-1); i < 5*e; i++) {
                        html += '<tr>\n' +
                            '                                        <td>' + data[i].uname + '</td>\n' +
                            '                                        <td>' + data[i].oid + '</td>\n' +
                            '                                        <td><button type="button"  class="btn btn-success order-ok waves-effect waves-light" id=' + data[i].oid + ' onclick="showinfo(this)" >查看订单</button></td>\n' +
                            '                                        <td>' + data[i].price + '</td>\n' +
                            '                                        <td>' + data[i].date + '</td>\n';
                        if (data[i].state == 2) {
                            html += '                                         <td><span class="badge btn-primary badge-pill"><i class="mdi mdi-checkbox-blank-circle text-warning"></i>已完成</span></td>\n' +
                                '                                    </tr>';
                        } else {
                            html += '                                         <td><span class="badge badge-info badge-pill"><i class="mdi mdi-checkbox-blank-circle text-warning"></i> 已取消</span></td>\n' ;

                        }
                    }
                }
                if(html!=""){
                    $("#orderitems").prepend(html);
                }

                ihtml+='<ul class="pagination center">\n';
                pagenum=parseInt((i-1)/5)+1;
                if(pagenum>1){
                    lastpage=pagenum-1;
                }else{
                    lastpage=pagenum;
                }
                ihtml+='<li class="page-item"><a class="page-link " onclick="b('+lastpage+')">上一页</a></li>';
                var n=parseInt(data.length/5);
                if((data.length%4)!=0){
                    n++;
                }
                if(pagenum==n){
                    nextpage=pagenum;
                }else {
                    nextpage=pagenum+1;
                }
                for(j=1;j<=n;j++){
                    ihtml+=' <li class="page-item"><a class="page-link " onclick="b('+j+')">'+j+'</a></li>';
                }
                ihtml+='<li class="page-item"><a class="page-link" onclick="b('+nextpage+')">下一页</a></li>';
                ihtml+='</ul>\n' ;
                if(ihtml!=""){
                    $("#page").prepend(ihtml);
                }
            }
        });
    }


    function showinfo(o) {
        var id=o.id
        var url="${pageContext.request.contextPath}/canting/servlet/order/info"
        $.ajax({
            url:url,
            method:"post",
            data:{"id":id},
            dataType:"json",
            success:function(data){
                var i;
                var html="";
                $("#infoitem").empty();
                for(i=0;i<data.length;i++){
                    html+='<h4 class="card-title font-16 mt-0" >名称：'+data[i].name+'</h4>\n' +
                        '                                <p class="card-text">数量：'+data[i].num+'</p>';
                }
                html+=""
                if(html!=""){
                    $("#infoitem").prepend(html);
                }
                $('#orderinfo').modal('show');
            },

            error:function (error) {
                alert(error)
            }
        })
    }
    function shut() {
        $('#orderinfo').modal('hide');
    }
</script>
</body>
</html>
