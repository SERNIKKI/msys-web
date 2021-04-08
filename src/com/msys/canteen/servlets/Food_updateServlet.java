package com.msys.canteen.servlets;

import com.alibaba.fastjson.JSONObject;
            import com.msys.canteen.dao.Store_foodDao;
            import com.msys.canteen.entity.Store_food;

            import javax.servlet.ServletException;
            import javax.servlet.annotation.WebServlet;
            import javax.servlet.http.HttpServlet;
            import javax.servlet.http.HttpServletRequest;
            import javax.servlet.http.HttpServletResponse;
            import java.io.IOException;
            import java.sql.SQLException;

@WebServlet(name="Food_updateServlet",urlPatterns = {"/canting/servlet/food/update"})
public class Food_updateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id=req.getParameter("id");
        String name=req.getParameter("name");
        String introduce=req.getParameter("introduce");
        String price=req.getParameter("price");
        String num=req.getParameter("num");
        String image=req.getParameter("image");
        String kind=req.getParameter("kind");
        JSONObject jsonObject=new JSONObject();
        Store_food store_food=new Store_food(kind,Integer.parseInt(id),name,introduce,Integer.parseInt(price),image,kind,Integer.parseInt(num));
        if(id!=null){
            try {
                boolean update=new Store_foodDao().update(store_food);
                if(update){
                    jsonObject.put("message","修改成功");
                    jsonObject.put("status","success");
                }else {
                    jsonObject.put("message","修改失败");
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
