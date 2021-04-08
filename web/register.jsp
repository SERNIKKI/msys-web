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
                    <h4 class="text-muted font-18 m-b-5 text-center">注册账号</h4>
                    <p class="text-muted text-center">注册成为商家.</p>

                    <form class="form-horizontal m-t-30" onsubmit="return check()" action="Register">



                        <div class="form-group">
                            <label for="username">用户名(6-10位,字母开头)</label>
                            <input type="text" class="form-control" id="username"name="username" placeholder="输入您的用户名">
                        </div>

                        <div class="form-group">
                            <label for="userpassword">密码(10-16位,字母开头)</label>
                            <input type="password" class="form-control" id="userpassword" name="userpassword" placeholder="输入您的密码">
                        </div>
                        <label for="useremail">电子邮箱</label>
                        <div class="form-group" style="display: flex;flex-direction: row;align-items: center">
                            <input type="email"  class="form-control" id="useremail" name="useremail" placeholder="输入你的电子邮箱">
                            <button class="btn btn-primary w-md waves-effect waves-light" type="button" onclick="sout()">发送验证码</button>
                        </div>
                        <div class="form-group">
                            <label for="code">验证码</label>
                            <input type="text" class="form-control" id="code" name="code" placeholder="请输入邮箱收到的验证码">
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label for="userpassword">密码</label>--%>
<%--                            <input type="password" class="form-control"   placeholder="确认您的密码">--%>
<%--                        </div>--%>

                        <div class="form-group row m-t-20" style="display: flex; flex-direction: row">

                                <button style="margin-left: 30px" class="btn btn-primary w-md waves-effect waves-light" type="reset">重置</button>


                                <button style="margin-left: 120px" class="btn btn-primary w-md waves-effect waves-light" type="submit">注册</button>

                        </div>

                        <div class="form-group m-t-10 mb-0 row">
                            <div class="col-12 m-t-20">
                                <p class="font-14 text-muted mb-0">注册表示您同意 <a href="#" class="text-primary">《美食易食后台管理使用条款》</a></p>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>

        <div class="m-t-40 text-center">
            <p class="text-muted">已经有账号了 ? <a href="login.jsp" class="text-white"> 登陆 </a> </p>
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
<script>
    function checkEmail(str){
        var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/
        if(re.test(str)){
            return true;
        }else{
            return false
        }
    }
    function checkUser(str){
        var re = /^[a-zA-z]\w{5,9}$/;
        if(re.test(str)){
            return true
        }else{
            return false
        }
    }
    function checkPwd(str){
        var re = /^[a-zA-z]\w{9,15}$/;
        if(re.test(str)){
            return true
        }else{
            return false
        }
    }
    function check() {
        var username = $("#username").val()
        var password = $("#userpassword").val()
        var email = $("#email").val()
        var code = $("#code").val()
        console.log(checkUser(username))
        if(username==''||password==''||email==''||code==''){
            alert("请将信息填写完整")
            return false;
        }else  if(checkUser(username)==false){
            alert("请输入6-10位且字母开头的账户")
            $('#username').val('')
            return false;
        }else  if(checkPwd(password)==false){
            alert("请输入10-16位密码")
            $('#userpassword').val('')
            return false;
        }
        if(code!=Rcode){
            alert("验证码错误")
            $('#code').val('')
            return false;
        }
        return true;
    }

    function sout() {
        console.log($("#useremail").val())
        if(checkEmail($("#useremail").val())){
            alert("您的邮箱为："+$("#useremail").val())
            var url1="${pageContext.request.contextPath}/canting/servlet/info/register_verify"
            var account = $("#username").val()
            var email = $("#useremail").val()
            Rcode = "";
            for(var i=0;i<6;i++){
                 var radom = Math.floor(Math.random()*10);
                Rcode += radom;
            }
            console.log("验证码："+Rcode)
            $.ajax({
                url:url1,
                method:"post",
                data:{
                    "email":email,
                    "code":Rcode,
                }
            })
            alert("请注意查收")
        }
        else {
            alert("请输入正确的邮箱")
        }
    }
</script>
</body>
</html>
