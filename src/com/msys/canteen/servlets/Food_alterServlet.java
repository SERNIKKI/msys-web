package com.msys.canteen.servlets;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.msys.canteen.dao.Store_foodDao;
import com.msys.canteen.entity.Store_food;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name="Food_alterServlet",urlPatterns = {"/canting/servlet/food/alter"})
public class Food_alterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id=req.getParameter("id");
        JSONObject jsonObject=new JSONObject();
        List<Store_food> list= null;
        try {
            list = new Store_foodDao().selectfood(Integer.parseInt(id));

        } catch (Exception e) {
            e.printStackTrace();
        }
        Store_food store_food=list.get(0);
        Gson gson = new Gson();
        String json = gson.toJson(store_food);
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json; charset=utf-8");
        PrintWriter writer = resp.getWriter();
        writer.append(json);

    }
}

