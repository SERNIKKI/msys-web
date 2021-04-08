package com.msys.canteen.servlets;
import com.alibaba.fastjson.JSONObject;
import com.msys.canteen.dao.Store_activityDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name="Activity_deleteServlet",urlPatterns = {"/canting/servlet/activity/delete"})
public class Activity_deleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id=req.getParameter("id");
        JSONObject jsonObject=new JSONObject();
        if(id!=null){
            try {
                boolean delete=new Store_activityDao().delete(Integer.parseInt(id));
                if(delete){
                    jsonObject.put("message","删除成功");
                    jsonObject.put("status","success");
                }else {
                    jsonObject.put("message","删除失败");
                    jsonObject.put("status","fail");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        resp.setContentType("application/json;charset=utf-8");
        String jsonString=jsonObject.toJSONString();
        resp.getWriter().println(jsonString);
    }
}

