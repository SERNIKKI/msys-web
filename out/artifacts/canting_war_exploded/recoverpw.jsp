<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/11/13
  Time: 19:03
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
                    <a href="#" class="logo logo-admin"><img src="assets/images/logo-msys.png" height="80" alt="logo"></a>
                </h3>

                <div class="p-3">
                    <h4 class="text-muted font-18 mb-3 text-center">找回密码</h4>
                    <div class="alert alert-info" role="alert">
                        请输入您的邮箱，我们将会向您发送一封电子邮件!
                    </div>

                    <form class="form-horizontal m-t-30" onsubmit='return clicked()'>

                        <div class="form-group">
                            <label for="account">用户名</label>
                            <input type="text" class="form-control" id="account" name="account" placeholder="请输入您的用户名">
                        </div>
                        <div class="form-group">
                            <label for="email">电子邮箱</label>
                            <input type="email" class="form-control" id="email" placeholder="请输入您的电子邮箱">
                        </div>

                        <div class="form-group row m-t-20">
                            <div class="col-12 text-right">
                                <button class="btn btn-primary w-md waves-effect waves-light" onclick="verify(this)">发送</button>
                            </div>
                        </div>

                    </form>
                </div>

            </div>
        </div>

        <div class="m-t-40 text-center">
            <p class="text-muted">找回密码了 ? <a href="login.jsp" class="text-white"> 登陆 </a> </p>
            2020 © 美食易食 <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="https://blog.sernikki.cn" title="">蕾咪</a></span>
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
    <script type="text/javascript">

        var oTxt1 = document.getElementById('account');
        var oTxt2 = document.getElementById('email');
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
                return false;
            }
        }
        var wait=30;
        function verify(o) {
            if(clicked()==false){
                alert("请将用户信息填写完整！！");
                return false;
            }
            time(o);
            var account =$('#account').val()
            var email=$('#email').val()
            var url="${pageContext.request.contextPath}/canting/servlet/info/verify"
            $.ajax({
                url:url,
                method:"post",
                data:{"account":account,"email":email},
                dataType:"json",
                success:function(data){
                    if(data.status="success"){
                        alert(data.message);
                    }else{
                        console.log("hhh");
                        wait=2;
                        console.log(wait);
                        alert(data.message);
                        return false;
                    }
                },
                timeout:1000,
                error:function (error) {
                }
            })
        }

        function time(obj) {
            if (wait == 0) {
                obj.removeAttribute("disabled");
                obj.innerHTML="获取验证码";
                wait = 30;
                console.log(wait)
            } else {
                obj.setAttribute("disabled", true);
                obj.innerHTML=wait+"秒后重新发送";
                wait--;
                setTimeout(function() {
                        time(obj)
                    },
                    1000)
            }
        }
    </script>
</body>
</html>
