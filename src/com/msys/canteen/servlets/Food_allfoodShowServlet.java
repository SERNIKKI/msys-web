package com.msys.canteen.servlets;

import com.google.gson.Gson;
import com.msys.canteen.dao.Store_accountDao;
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

@WebServlet(name="Food_allfoodShowServlet",urlPatterns = {"/canting/servlet/food/allfoodsShow"})
public class Food_allfoodShowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String account = req.getParameter("account");
        int S_id = 0;
        try {
            S_id = new Store_accountDao().selectID(account);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<Store_food> list = null;
        try {
            list = new Store_foodDao().selectallfoods(S_id);

        } catch (Exception e) {
            e.printStackTrace();
        }
        Gson gson = new Gson();
        String json = gson.toJson(list);
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json; charset=utf-8");
        PrintWriter writer = resp.getWriter();
        writer.append(json);
    }

}