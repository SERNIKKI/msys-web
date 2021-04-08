package com.msys.canteen.servlets;

import com.alibaba.fastjson.JSONObject;
import com.msys.canteen.utils.SendmailUtils;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="Store_register_verifyServlet",urlPatterns = {"/canting/servlet/info/register_verify"})
public class Store_registerverifyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//    String account=req.getParameter("account");
    String code = req.getParameter("code");
    String email=req.getParameter("email");
        System.out.println(email+code);
    JSONObject jsonObject=new JSONObject();
        try{
            new SendmailUtils().send(email,code);
            jsonObject.put("message","发送成功，请注意接收");
            jsonObject.put("status","success");
        }catch (MessagingException mex) {
            mex.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }


}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
