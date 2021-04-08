package com.msys.canteen.servlets;

import com.google.gson.Gson;
import com.msys.canteen.dao.OrderDao;
import com.msys.canteen.entity.Order_info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name="Order_infoServlet",urlPatterns = {"/canting/servlet/order/info"})
public class Order_infoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String id = req.getParameter("id");

        List<Order_info> list = null;
        try {
            list = new OrderDao().showinfo(id);
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