package com.msys.canteen.servlets;
import com.alibaba.fastjson.JSONObject;
import com.msys.canteen.dao.Store_accountDao;
import com.msys.canteen.dao.Store_foodDao;
import com.msys.canteen.entity.Store_food;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="Food_addServlet",urlPatterns = {"/canting/servlet/food/add"})
public class Food_addServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String introduce=req.getParameter("introduce");
        String price=req.getParameter("price");
        String num=req.getParameter("num");
        String image=req.getParameter("image");
        String kind=req.getParameter("kind");
        String account=req.getParameter("account");
       System.out.println("name:"+name+"introduce"+introduce+"price"+price+"num"+num+"image"+image+"kind"+kind);
        int S_id = 0;
        try {
            S_id = new Store_accountDao().selectID(account);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Store_food store_food=new Store_food(S_id,name,image,introduce,Integer.parseInt(price),Integer.parseInt(num),kind);
//        System.out.println(store_food);
        boolean insert=new Store_foodDao().add(store_food);
//        System.out.println(insert);
        JSONObject jsonObject=new JSONObject();
        if(insert){
            jsonObject.put("message","添加成功");
            jsonObject.put("status","success");
        }else {
            jsonObject.put("message","添加失败");
            jsonObject.put("status","fail");
        }
        resp.setContentType("application/json;charset=utf-8");
        String jsonString=jsonObject.toJSONString();
        resp.getWriter().println(jsonString);


    }
}

