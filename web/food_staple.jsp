<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/11/13
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head >
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>美食易食后台管理系统</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Themesbrand" name="author" />
    <link rel="shortcut icon" href="assets/images/logo-msys.png">
    <!-- Sweet Alert -->
    <link href="./plugins/sweet-alert2/sweetalert2.min.css" rel="stylesheet" type="text/css">

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
</head>
<body  onload="a()">
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
                    <h4 class="page-title" >主食</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
                        <li class="breadcrumb-item"><a>菜品管理</a></li>
                        <li class="breadcrumb-item active">主食</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- end container-fluid -->

    </div>
    <!-- page-title-box -->

    <div  class="page-content-wrapper">
        <div class="container-fluid">
            <div class="row" id="food_show">

            </div>

            <!-- 修改模态窗体 -->
            <div class="modal fade" id="foodModal" role="dialog" tabindex="-1">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header ">

                            <h4 class="modal-title">修改信息</h4>
                        </div>
                        <div class="modal-body">


                            <div class="card m-b-30">
                                <img height="200" width="332" src="assets/images/upload_img.png"
                                     id="mimage" name="mimage" >
                                <input id="mimageURL" name="mimageURL" type="file" class="hide" onchange="model_upload_cover(this)" style="height: 25px;width: 70px">
                                <%--                            <img class="card-img-top img-fluid" src="assets/images/small/img-2.jpg" alt="Card image cap">--%>
                                <div class="card-body">
                                    <input type="text" class="form-control" id="mF_name" name="mF_name" placeholder="请输入菜品名称">
                                    <input type="text" class="form-control" id="mF_introduction" name="mF_introduction" placeholder="请输入菜品简介">
                                    <select class="form-control" name="mF_kind" id="mF_kind">
                                        <option>请选择种类</option>
                                        <option>主食</option>
                                        <option>小菜</option>
                                        <option>饮品</option>
                                        <option>汤粥</option>
                                    </select>
                                    <input type="text"  name="mF_price" id="mF_price" oninput="value=value.replace(/[^\d]/g,'')" class=" form-control" placeholder="请输入单价">
                                    <input type="text"  id="mF_num" name="mF_num" oninput="value=value.replace(/[^\d]/g,'')" class=" form-control" placeholder="请输入数量">
                                </div>

                                <div class="card-body">
                                    <button type="button" class="btn btn-primary waves-effect waves-light"  onclick="updatefood()">确定</button>
                                    <button type="button" class="btn btn-primary waves-effect waves-light"  onclick="cancelupdate()">取消</button>
                                </div>
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
        var url="${pageContext.request.contextPath}/canting/servlet/food/stapleShow"
        $.ajax({
            url:url,
            type:"POST",
            data:{"account":account},
            dataType:"json",
            success:function(data){
                var i;
                var html="";
                $("#food_show").empty();
                if(data!=null){
                for(i=0;i<data.length;i++){
                    html+=                       '<div class="col-md-6 col-lg-6 col-xl-3" >\n' +
                        '                            <div class="card m-b-30">\n' +
                        '                                <img height="200" width="332" src='+data[i].fimage+' alt="Card image cap">\n' +
                        '                                <div class="card-body">\n' +
                        '                                    <h4 class="card-title font-16 mt-0" >名称：'+data[i].fname+'</h4>\n' +
                        '                                    <p class="card-text">简介：'+data[i].fintroduction+'</p>\n' +
                        '                                </div>\n' +
                        '                                <ul class="list-group list-group-flush">\n' +
                        '                                    <li class="list-group-item">价格：￥'+data[i].fprice+'</li>\n' +
                        '                                    <li class="list-group-item">数量：'+data[i].fnum+'</li>\n' +
                        '                                </ul>\n' +
                        '                                <div class="card-body">\n' +
                        '                                    <button type="button" href="#" class="btn btn-primary"name='+data[i].fid+' onclick="alterfood(this)" >修改</button>\n' +
                        '                                    <button type="button" class="btn btn-info sa-params waves-effect waves-light" id='+data[i].fid+' onclick="deletefood(this)">删除</button>\n' +
                        '                                </div>\n' +
                        '                            </div>\n' +
                        '                        </div>';

                }
                html+="<div class=\"col-md-6 col-lg-6 col-xl-3\">\n" +
                    "\n" +
                    "                <div class=\"card m-b-30\">\n" +
                    "                    <img height=\"200\" width=\"332\" src=\"assets/images/upload_img.png\"\n" +
                    "                         id=\"image\" name=\"image\" >\n" +
                    "                    <input id=\"imageURL\" name=\"imageURL\" type=\"file\" class=\"hide\" onchange=\"upload_cover(this)\" style=\"height: 25px;width: 70px\">\n" +
                    "                    <%--                            <img class=\"card-img-top img-fluid\" src=\"assets/images/small/img-2.jpg\" alt=\"Card image cap\">--%>\n" +
                    "                    <div class=\"card-body\">\n" +
                    "                        <input type=\"text\" class=\"form-control\" id=\"F_name\" name=\"F_name\" placeholder=\"请输入菜品名称\">\n" +
                    "                        <input type=\"text\" class=\"form-control\" id=\"F_introduction\" name=\"F_introduction\" placeholder=\"请输入菜品简介\">\n" +
                    "                        <select class=\"form-control\" name=\"F_kind\" id=\"F_kind\">\n" +
                    "                            <option>请选择种类</option>\n" +
                    "                            <option>主食</option>\n" +
                    "                            <option>小菜</option>\n" +
                    "                            <option>饮品</option>\n" +
                    "                            <option>汤粥</option>\n" +
                    "                        </select>\n" +
                    "                        <input type=\"text\"  name=\"F_price\" id=\"F_price\" oninput=\"value=value.replace(/[^\\d]/g,'')\" class=\" form-control\" placeholder=\"请输入单价\">\n" +
                    "                        <input type=\"text\"  id=\"F_num\" name=\"F_num\" oninput=\"value=value.replace(/[^\\d]/g,'')\" class=\" form-control\" placeholder=\"请输入数量\">\n" +
                    "                    </div>\n" +
                    "\n" +
                    "                    <div class=\"card-body\">\n" +
                    "                        <button type=\"button\" class=\"btn btn-primary waves-effect waves-light\"  onclick=\"addfood()\">确定</button>\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "\n" +
                    "            </div><!-- end col -->"
                if(html!=""){
                    $("#food_show").prepend(html);
                }
                }
                else{
                    html+="<div class=\"col-md-6 col-lg-6 col-xl-3\">\n" +
                        "\n" +
                        "                <div class=\"card m-b-30\">\n" +
                        "                    <img height=\"200\" width=\"332\" src=\"assets/images/upload_img.png\"\n" +
                        "                         id=\"image\" name=\"image\" >\n" +
                        "                    <input id=\"imageURL\" name=\"imageURL\" type=\"file\" class=\"hide\" onchange=\"upload_cover(this)\" style=\"height: 25px;width: 70px\">\n" +
                        "                    <%--                            <img class=\"card-img-top img-fluid\" src=\"assets/images/small/img-2.jpg\" alt=\"Card image cap\">--%>\n" +
                        "                    <div class=\"card-body\">\n" +
                        "                        <input type=\"text\" class=\"form-control\" id=\"F_name\" name=\"F_name\" placeholder=\"请输入菜品名称\">\n" +
                        "                        <input type=\"text\" class=\"form-control\" id=\"F_introduction\" name=\"F_introduction\" placeholder=\"请输入菜品简介\">\n" +
                        "                        <select class=\"form-control\" name=\"F_kind\" id=\"F_kind\">\n" +
                        "                            <option>请选择种类</option>\n" +
                        "                            <option>主食</option>\n" +
                        "                            <option>小菜</option>\n" +
                        "                            <option>饮品</option>\n" +
                        "                            <option>汤粥</option>\n" +
                        "                        </select>\n" +
                        "                        <input type=\"text\"  name=\"F_price\" id=\"F_price\" oninput=\"value=value.replace(/[^\\d]/g,'')\" class=\" form-control\" placeholder=\"请输入单价\">\n" +
                        "                        <input type=\"text\"  id=\"F_num\" name=\"F_num\" oninput=\"value=value.replace(/[^\\d]/g,'')\" class=\" form-control\" placeholder=\"请输入数量\">\n" +
                        "                    </div>\n" +
                        "\n" +
                        "                    <div class=\"card-body\">\n" +
                        "                        <button type=\"button\" class=\"btn btn-primary waves-effect waves-light\"  onclick=\"addfood()\">确定</button>\n" +
                        "                    </div>\n" +
                        "                </div>\n" +
                        "\n" +
                        "            </div><!-- end col -->"
                    if(html!=""){
                        $("#food_show").prepend(html);
                    }
                }

            }
        });

    }



   <%--    图片上传--%>
    function upload_cover(obj) {
        // 调用 另外一个函数，请求ajax成功后，的一个匿名回调函数
        ajax_upload(obj.id, function (data) {
            //function(data)是上传图片的成功后的回调方法
            console.log("回调函数");
            console.log(data);
            var basePath = '${pageContext.request.contextPath }';
            console.log(basePath);
            //获取的图片的绝对路径
            var isrc = data.relatPath.replace(/\/\//g, '/');
            console.log(isrc);
            var imgSrc = basePath + isrc;
            console.log(imgSrc);
            //给<input>的src赋值去显示图片
            $('#image').attr('src', basePath + isrc).data('img-src', isrc);
        });
    }
   function model_upload_cover(obj) {
       // 调用 另外一个函数，请求ajax成功后，的一个匿名回调函数
       ajax_upload(obj.id, function (data) {
           //function(data)是上传图片的成功后的回调方法
           console.log("回调函数");
           console.log(data);
           var basePath = '${pageContext.request.contextPath }';
           console.log(basePath);
           //获取的图片的绝对路径
           var isrc = data.relatPath.replace(/\/\//g, '/');
           console.log(isrc);
           var imgSrc = basePath + isrc;
           console.log(imgSrc);
           //给<input>的src赋值去显示图片
           $('#mimage').attr('src', basePath + isrc).data('img-src', isrc);
       });
   }
    function ajax_upload(feid, callback) { //具体的上传图片方法
        if (image_check(feid)) { //自己添加的文件后缀名的验证
            console.log(feid);
            $.ajaxFileUpload({
                fileElementId: feid,    //需要上传的文件域的ID，即<input type="file">的ID。
                url: '${pageContext.request.contextPath}/canting/servlet/image/upload', //后台方法的路径
                type: 'post',   //当要提交自定义参数时，这个参数要设置成post
                dataType: 'json',   //服务器返回的数据类型。可以为xml,script,json,html。如果不填写，jQuery会自动判断。
                secureuri: false,   //是否启用安全提交，默认为false。
                async : true,   //是否是异步
                success: function(data) {   //提交成功后自动执行的处理函数，参数data就是服务器返回的数据。
                    console.log("函数是否执行成功")
                    if (callback) callback.call(this, data);
                },
                error: function(data, status, e) {  //提交失败自动执行的处理函数。
                    console.error(e);
                }
            });
        }
    }
    function image_check(feid) { //自己添加的文件后缀名的验证
        var img = document.getElementById(feid);
        return /.(jpg|png|gif|bmp)$/.test(img.value)?true:(function() {
            alert('图片格式仅支持jpg、png、gif、bmp格式，且区分大小写。');
            return false;
        })();
    }
    function addfood() {
        var name=$('#F_name').val()
        var introduce=$('#F_introduction').val()
        var kind=$('#F_kind').val()
        var price=$('#F_price').val()
        var num=$('#F_num').val()
        var image=$('#image')[0].src
        var account ="<%=session.getAttribute("mess")%>"
        var url="${pageContext.request.contextPath}/canting/servlet/food/add"
        $.ajax({
            url:url,
            data:{"name":name,"introduce":introduce,"kind":kind,"price":price,"num":num,"image":image,"account":account},
            method:"post",
            dataType:"json",
            success:function (result) {
                alert("添加成功")
                a();

            },
            error:function (error) {

                alert("添加失败！")
            }

        });
    }
   function deletefood(o) {
       var answer=window.confirm("确定要删除这个菜品吗？");
       if(!answer){
           return;
       }
       var id=o.id
       var url="${pageContext.request.contextPath}/canting/servlet/food/delete"
       $.ajax({
           url:url,
           method:"post",
           data:{"id":id},
           dataType:"json",
           success:function(result){
               alert("删除成功！");
               a();
           },

           error:function (error) {
               alert(error)
           }
       })
   }
   function alterfood(o) {
       var id=o.name
       var url="${pageContext.request.contextPath}/canting/servlet/food/alter"
       $.ajax({
           url:url,
           method:"post",
           data:{"id":id},
           dataType:"json",
           success:function(data){
               $('#mimage').attr('src', data.fimage);
               $("#mF_name").val(data.fname);
               $("#mF_introduction").val(data.fintroduction);
               $("#mF_kind").val(data.fkind);
               $("#mF_num").val(data.fnum);
               $("#mF_price").val(data.fprice);
               $('#foodModal').modal('show');
               updatedata=data;
           },
           error:function (error) {
               alert(error)
           }
       })
   }
   function updatefood() {
       var o=updatedata
       var id=o.fid
       var name=$('#mF_name').val()
       var introduce=$('#mF_introduction').val()
       var kind=$('#mF_kind').val()
       var price=$('#mF_price').val()
       var num=$('#mF_num').val()
       var image=$('#mimage')[0].src
       var url="${pageContext.request.contextPath}/canting/servlet/food/update"
       $.ajax({
           url:url,
           method:"post",
           data:{"id":id,"name":name,"introduce":introduce,"kind":kind,"price":price,"num":num,"image":image},
           dataType:"json",
           success:function(data){
               $('#foodModal').modal('hide');
               alert("修改成功");
               a();
           },

           error:function (error) {
               alert(error)
           }
       })
       $('#foodModal').modal('show');

   }
   function cancelupdate() {
       $('#foodModal').modal('hide');
   }

</script>
</body>
</html>

