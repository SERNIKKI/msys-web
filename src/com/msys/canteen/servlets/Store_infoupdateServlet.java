package com.msys.canteen.servlets;

import com.alibaba.fastjson.JSONObject;
import com.msys.canteen.dao.Store_accountDao;
import com.msys.canteen.entity.Store_account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name="Store_infoupdateServlet",urlPatterns = {"/canting/servlet/info/update"})
public class Store_infoupdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account=req.getParameter("account");
        String name=req.getParameter("name");
        String location=req.getParameter("location");
        String telephone=req.getParameter("telephone");
        String email=req.getParameter("email");
        String date=req.getParameter("date");
        String image=req.getParameter("image");
        String content=req.getParameter("content");
        JSONObject jsonObject=new JSONObject();
        int S_id = 0;
        try {
            S_id = new Store_accountDao().selectID(account);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Store_account store_account=new Store_account(name, location, telephone, email, date, image,content);
        try {
              boolean update=new Store_accountDao().updateinfo(store_account,S_id);
              if(update){
                    jsonObject.put("message","保存成功");
                    jsonObject.put("status","success");
              }else {
                    jsonObject.put("message","保存失败");
                    jsonObject.put("status","fail");
              }
             } catch (SQLException e) {
                e.printStackTrace();
             }

        resp.setContentType("application/json;charset=utf-8");
        String jsonString=jsonObject.toJSONString();
        resp.getWriter().println(jsonString);


    }
}
