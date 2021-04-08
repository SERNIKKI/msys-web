package com.msys.canteen.servlets;

import com.msys.canteen.dao.Store_accountDao;
import com.msys.canteen.entity.Store_account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Register")
public class Store_registerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        String username = req.getParameter("username").trim();
        String userpassword = req.getParameter("userpassword").trim();
        String useremail = req.getParameter("useremail").trim();
        System.out.println(useremail+'\n'+username+'\n'+userpassword);
        Store_accountDao sa= new Store_accountDao();
        try {
           if(!sa.isexist(username)){

               sa.add(new Store_account(username,userpassword,useremail));
               req.getRequestDispatcher("login.jsp").forward(req,resp);
           }
           else {
               System.out.println("账号已存在");
               req.getRequestDispatcher("404.jsp").forward(req,resp);
           }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
