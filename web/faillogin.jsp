<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/11/13
  Time: 18:54
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

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <!-- Background -->
    <div class="account-pages"></div>
    <!-- Begin page -->
    <div class="wrapper-page">

        <div class="card">
            <div class="card-body">

                <h3 class="text-center m-0">
                    <a href="index.jsp" class="logo logo-admin"><img src="assets/images/logo-msys.png" height="80" alt="logo"></a>
                </h3>

                <div class="p-3">
                    <h4 class="text-muted font-18 m-b-5 text-center">登录失败!请重新输入账号密码</h4>
                    <p class="text-muted text-center">登入到美食易食管理系统</p>


                    <form class="form-horizontal m-t-30" action="Login" method="post" id="form" onsubmit='return clicked()' >
                        <div class="form-group">
                            <label for="account">用户名</label>
                            <input type="text" class="form-control" id="account" name="account" placeholder="请输入您的用户名">
                        </div>

                        <div class="form-group">
                            <label for="password">密码</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="请输入您的密码">
                        </div>

                        <div class="form-group row m-t-20">
                            <div class="col-6">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customControlInline">
                                    <label class="custom-control-label" for="customControlInline">记住我</label>
                                </div>
                            </div>
                            <div class="col-6 text-right">
                                <button class="btn btn-primary w-md waves-effect waves-light" type="submit">登陆</button>
                            </div>
                        </div>

                        <div class="form-group m-t-10 mb-0 row">
                            <div class="col-12 m-t-20">
                                <a href="recoverpw.jsp" class="text-muted"><i class="mdi mdi-lock"></i> 忘记密码?</a>
                                <u><a href="admin_login.jsp" class="text-primary"><i class="mdi mdi-account-key"></i>管理员登陆</a></u>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>

        <div class="m-t-40 text-center">
            <p class="text-white-50">没有账号 ? <a href="register.jsp" class="text-white"> 注册账号 </a> </p>
            <div class="col-12">
                2020 © 美食易食 <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="https://blog.sernikki.cn" title="">PQ</a></span>
            </div>
        </div>

    </div>

    <!-- END wrapper -->


    <!-- jQuery  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/waves.min.js"></script>


    <script src="./plugins/jquery-sparkline/jquery.sparkline.min.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>
<script>
    var oTxt1 = document.getElementById('account');
    var oTxt2 = document.getElementById('password');
    function isnull(val1,val2) {
        var str1 = val1.replace(/(^\s*)|(\s*$)/g, '');//去除空格;
        var str2 = val2.replace(/(^\s*)|(\s*$)/g, '');//去除空格;
        if (str1 == '' || str2 == '') {
            return false;
        }
        return  true;
    }
    function clicked() {
        if (!isnull(oTxt1.value, oTxt2.value)) {
            alert("请将用户信息填写完整！！");
            return false;
        }
    }


</script>
</body>
</html>
