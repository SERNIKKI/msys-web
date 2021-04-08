package com.msys.canteen.dao;

import com.msys.canteen.entity.Order;
import com.msys.canteen.entity.Order_info;
import com.msys.canteen.tools.ObjectToBeanUtils;
import com.msys.canteen.utils.DBUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class OrderDao {
    QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
    public List<Order> showorder(int S_id,int sign) throws Exception {
        String sql="";
        if(sign==0){
            sql="SELECT DISTINCT orders._id,date,price,state,uname FROM orders,`user`,goods WHERE state<2 AND orders._openid=`goods`._openid AND goods._openid = user._openid AND orders._id = goods._id AND goods.S_id=? ";
        }
        if(sign==1){
            sql="SELECT DISTINCT orders._id,date,price,state,uname FROM orders,`user`,goods WHERE state=0 AND orders._openid=`goods`._openid AND goods._openid = user._openid AND orders._id = goods._id AND goods.S_id=?";
        }
        if(sign==2){
            sql="SELECT DISTINCT orders._id,date,price,state,uname FROM orders,`user`,goods WHERE state=1 AND orders._openid=`goods`._openid AND goods._openid = user._openid AND orders._id = goods._id AND goods.S_id=?";
        }
        if(sign==3){
            sql="SELECT DISTINCT orders._id,date,price,state,uname FROM orders,`user`,goods WHERE state>1 AND state<4 AND orders._openid=`goods`._openid AND goods._openid = user._openid AND orders._id = goods._id AND goods.S_id=?";
        }
        Object[] params = new Object[]{S_id};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Order> orderlist = ObjectToBeanUtils.objectToBean(list, Order.class);;
        return orderlist;
    }
    public List<Order_info> showinfo(String id) throws Exception {
        String sql="SELECT F_name,goods_num FROM store_food,goods WHERE goods._id=? and goods.F_id=store_food.F_id";
        Object[] params = new Object[]{id};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Order_info> orderlist = ObjectToBeanUtils.objectToBean(list, Order_info.class);;
        return orderlist;
    }
    public boolean inform(String id) throws SQLException {
        String sql="update orders set state=1 where _id=?";
        Object[] params = new Object[]{id};
        int update=queryRunner.update(sql,params);
        return update==1?true:false;
    }
    public String getstore_name(String id) throws SQLException {
        String sql="select S_name from store_account,goods where goods.S_id=store_account.S_id and _id=?";
        Object[] params = new Object[]{id};
        Object[] result = queryRunner.query(sql,new ArrayHandler(),params);
        String sname=(String)result[0];
        return sname;
    }
    @Test
    public static void main(String[] args) throws Exception {
        System.out.println(new OrderDao().showorder(0,0));
       // System.out.println(new OrderDao().getstore_name(1));
    }
}
