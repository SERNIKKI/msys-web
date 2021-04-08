package com.msys.canteen.servlets;

import com.msys.canteen.dao.OrderDao;
import com.msys.canteen.dao.UserDao;
import com.msys.canteen.utils.Sendmail2Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name="Order_informServlet",urlPatterns = {"/canting/servlet/order/inform"})
public class Order_informServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=utf-8");
        String id=req.getParameter("id");
        if(id!=null){
            try {
                new OrderDao().inform(id);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        String uname=req.getParameter("uname");
        try {
            String sname=new OrderDao().getstore_name(id);
            String email=new UserDao().selectemail(uname);
//            String emailUser = "2226450890@qq.com";
//            String emailPwd = "yggguysokwdmdhih";
//            String emailHost = "smtp.qq.com";
//            String emailAuth = "true";
//            String emailProtocol = "smtp";
//            int emailPort = 465;
//
//            //获取系统环境信息
//            Properties props = System.getProperties();
//            //设置邮件服务器
//            props.setProperty("mail.smtp.host", emailHost);
//            //设置密码认证
//            props.setProperty("mail.smtp.auth", emailAuth);
//            //设置传输协议
//            props.setProperty("mail.transport.protocol", emailProtocol);
//            //创建session对象
//            Session session = Session.getInstance(props);
//            //设置输出日志
//            session.setDebug(true);
//
//            //邮件发送对象
//            MimeMessage message = new MimeMessage(session);
//            //设置发件人
//            message.setFrom(new InternetAddress(emailUser));
//            //设置邮件主题
//            message.setSubject("订单完成通知");
//            //设置邮件内容
//            message.setText("尊敬的"+uname+"，您好,您在"+sname+"的订单已完成，请速来取餐");
//            //如果带网页内容使用Content发送
////                message.setContent((emailMsg),"text/html;charset=utf-8");
//
//            //获取邮件发送管道
//            Transport transport=session.getTransport();
//            //连接管道
//            transport.connect(emailHost,emailPort, emailUser, emailPwd);
//            //发送邮件
//            transport.sendMessage(message,new Address[]{new InternetAddress(email)});
//            //关闭管道
//            transport.close();
            String code="尊敬的"+uname+"，您好,您在"+sname+"的订单已完成，请速来取餐";
            new Sendmail2Utils().send(email,code);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
