package com.msys.canteen.servlets;
import com.alibaba.fastjson.JSONObject;
import com.msys.canteen.dao.Store_accountDao;
import com.msys.canteen.dao.Store_activityDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name="Activity_addServlet",urlPatterns = {"/canting/servlet/activity/add"})
public class Activity_addServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String image=req.getParameter("image");
        String account=req.getParameter("account");
        String theme=req.getParameter("theme");
        int S_id = 0;
        try {
            S_id = new Store_accountDao().selectID(account);
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean insert=false;
        if(image!=null&&image!=""&&theme.length()>1){
            System.out.println("image="+image+"theme="+theme);
            try {
                insert=new Store_activityDao().add(S_id,theme,image);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
//        System.out.println(insert);
        JSONObject jsonObject=new JSONObject();
        if(insert){
            jsonObject.put("message","添加成功");
            jsonObject.put("status","success");
        }else {
            jsonObject.put("message","添加失败");
            jsonObject.put("status","error");
        }
        resp.setContentType("application/json;charset=utf-8");
        String jsonString=jsonObject.toJSONString();
        resp.getWriter().println(jsonString);


    }
}

