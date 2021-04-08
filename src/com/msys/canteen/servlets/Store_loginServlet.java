package com.msys.canteen.servlets;
import com.msys.canteen.dao.Store_accountDao;
import com.msys.canteen.entity.Store_account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Login")
public class Store_loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String account = request.getParameter("account").trim();
        String password = request.getParameter("password").trim();
        Store_account store_account = new Store_account(account,password);
        try {
            if(new Store_accountDao().check(store_account))
            {
                request.getSession().setAttribute("mess", account);
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }
            else
            {
                request.getRequestDispatcher("faillogin.jsp").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
