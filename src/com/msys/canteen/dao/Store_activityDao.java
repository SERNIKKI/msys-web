package com.msys.canteen.dao;

import com.msys.canteen.entity.Store_activity;
import com.msys.canteen.entity.Store_food;
import com.msys.canteen.tools.ObjectToBeanUtils;
import com.msys.canteen.utils.DBUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Store_activityDao {
    QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
    public boolean add(int S_id,String theme,String image) throws SQLException {
        // 商家当前的活动不能超过12个
        String sql0="select count(*) from store_activity where S_id=? and A_state=?";
        Object[] param = new Object[]{S_id,1};
        Number query=queryRunner.query(sql0,new ScalarHandler<>(),param);
        int n= query.intValue();
        if(n>12){
            return false;
        }
        String sql = "ALTER TABLE store_activity AUTO_INCREMENT =1;\n"+
                "INSERT INTO store_activity(S_id,A_theme,A_image,A_date) VALUES (?,?,?,?)";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateNow = sdf.format(new Date());
        String A_date=dateNow.substring(0,4)+"年"+dateNow.substring(5,7)+"月"+dateNow.substring(8,10)+"日";

        Object[] params = new Object[]{S_id,theme,image,A_date};
        // 执行查询，并返回所需要的类型
        try {
            queryRunner.update(sql,params);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public List<Store_activity> selectactivity(int S_id,int A_state) throws Exception {
        String sql="select A_id,A_image,A_theme,A_date from store_activity where S_id=? and A_state=? order by A_id desc";
        Object[] params = new Object[]{S_id,A_state};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Store_activity> list0 = ObjectToBeanUtils.objectToBean(list, Store_activity.class);
        return list0;
    }
    public List<Store_food> selectallfoods(int S_id) throws Exception {
        String sql="select F_kind,F_id,F_name,F_introduction,F_price,F_image,F_kind,F_num from store_food where S_id=? order by F_id";
        Object[] params = new Object[]{S_id};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Store_food> list0 = ObjectToBeanUtils.objectToBean(list, Store_food.class);
        return list0;
    }

    public List<Store_food> selectfood(int F_id) throws Exception {
        String sql="select F_kind,F_id,F_name,F_introduction,F_price,F_image,F_kind,F_num from store_food where F_id=? ";
        Object[] params = new Object[]{F_id};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
            //list = queryRunner.query(sql,new BeanListHandler<>(Store_food.class),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Store_food> list0 = ObjectToBeanUtils.objectToBean(list, Store_food.class);
        return list0;
    }

    /* public int selectID(String name)throws SQLException{
         QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
         String sql="select * from user where user_name=?";
         User user=queryRunner.query(sql,new BeanHandler<>(User.class),name);
         return user.getId();
     }
     public String selectbyID(int id)throws SQLException{//这里
         QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
         String sql="select user_name from user where id = ?";
         Object[] params = new Object[]{id};
         return queryRunner.query(sql,new ScalarHandler<>(),params);//好神奇
     }
     public List<User> selectBy(String condition, int pageNum, int pageSize)throws SQLException{
         QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
         String sql="select * from user ";
         if(condition!=null&& !condition.isEmpty()){
             sql+=condition;
         }
         sql+=" order by id";
         if(pageSize>0){
             sql+=" limit "+pageSize*(pageNum-1)+" , "+pageSize;
         }

         List<User> users=queryRunner.query(sql,new BeanListHandler<>(User.class));
         return users;
     }
     public boolean addUserWithRole(User user){
         QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
         // 提供执行的sql
         String sql = "INSERT INTO user(user_name,user_password,roleID) VALUES (?, ? ,?)";
         Object[] params = new Object[]{user.getuser_name(),user.getuser_password(),user.getroleID()};
         // 执行查询，并返回所需要的类型
         int rows = 0;
         try {
             rows = queryRunner.update(sql,params);
         } catch (SQLException e) {
             return false;
         }
         if(rows>0){
             return true;
         }
         return false;
     }
     public int countRows(String condition)throws SQLException{
         QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
         String sql="select count(*) from user where 1=1";
         if(condition!=null&&!condition.isEmpty()){
             sql+=condition;
         }
         Number query=queryRunner.query(sql,new ScalarHandler<>());
         return query.intValue();
     }*/
    public boolean update(int A_id) throws SQLException {
        String sql="update store_activity set A_state=? where A_id=?";
        Object[] params=new Object[]{0,A_id};
        int update = queryRunner.update(sql,params);
        return update==1?true:false;
    }
    public boolean delete(int id) throws SQLException{
        String sql="delete from store_activity where A_id=?";
        int update=queryRunner.update(sql,id);
        return update==1?true:false;
    }

    @Test
    public static void main(String[] args) throws Exception {
        /*Store_account store_account=new Store_account("yb123456",""+MD5Utils.getMD5("123456",32));
        System.out.println(new Store_accountDao().add(store_account));*/
        //System.out.println(new Store_accountDao().check(new Store_account("yb123456","123456")));
//        Store_food store_food=new Store_food(0,"白菜","ddd","好吃",2,100,"小菜");
//        System.out.println(new Store_foodDao().add(store_food));
  //      System.out.println(new Store_activityDao().selectactivity(0,1));
        System.out.println(new Store_activityDao().update(1));
    }
}

