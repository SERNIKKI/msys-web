package com.msys.canteen.dao;


import com.msys.canteen.entity.Store_account;
import com.msys.canteen.tools.ObjectToBeanUtils;
import com.msys.canteen.utils.DBUtils;
import com.msys.canteen.utils.MD5Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;
import org.junit.Test;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class Store_accountDao {
    QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
    private static ResultSet rs = null;
    private  static PreparedStatement ps = null;
    public boolean add(Store_account store_account) {

        // 提供执行的sql
        String sql = "ALTER TABLE store_account AUTO_INCREMENT =1;\n"+
                "INSERT INTO store_account(S_account,S_password,S_email) VALUES (?, ?,?)";
        Object[] params = new Object[]{store_account.getAccount(),MD5Utils.convertMD5(store_account.getPassword()),store_account.getEmail()};
        // 执行查询，并返回所需要的类型
        int rows = 0;
        try {
            rows = queryRunner.update(sql,params);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        if(rows>0){
            return true;
        }
        return false;
    }
    public List<String> selectAllName() throws SQLException{
        String sql="select DISTINCT S_name from store_account";
        List<String> list=queryRunner.query(sql,new ColumnListHandler<String>("store_name"));
        return list;
    }

    public int selectID(String name) throws Exception {
        String sql="select S_id from store_account where S_account=?";
        Object[] params = new Object[]{name};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Store_account> list0 = ObjectToBeanUtils.objectToBean(list, Store_account.class);
        Store_account store_account=list0.get(0);
        return store_account.getStore_id();
    }
    public String selectpwd(String name) throws Exception {
        String sql="select S_account,S_password from store_account where S_account=?";
        Object[] params = new Object[]{name};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Store_account> list0 = ObjectToBeanUtils.objectToBean(list, Store_account.class);
        Store_account store_account=list0.get(0);
        return MD5Utils.convertMD5(store_account.getPassword());
    }

    public boolean verify(String account,String email) throws Exception {
        String sql="select S_name,S_location,S_telephone,S_email from store_account where S_account=?";
        Object[] params = new Object[]{account};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Store_account> list0 = ObjectToBeanUtils.objectToBean(list, Store_account.class);
        if(list0!=null){
            Store_account store_account=list0.get(0);
            if(store_account.getEmail().equals(email)){
                return true;
            }
        }
        return false;
    }

    public Store_account selectinfo(int id) throws Exception {
        String sql="select S_name,S_location,S_telephone,S_email,S_time,S_image,S_content from store_account where S_id=?";
        Object[] params = new Object[]{id};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Store_account> list0 = ObjectToBeanUtils.objectToBean(list, Store_account.class);
        Store_account store_account=list0.get(0);
        return store_account;
    }

    public boolean check(Store_account store_account) throws SQLException {
        String sql = "select * from store_account where S_account = ?";
        ps = DBUtils.getConnection().prepareStatement(sql);
        ps.setString(1,store_account.getAccount());
        rs = ps.executeQuery();
        if(rs.next()){
            String pwd = rs.getString("S_password");
            if(pwd.equals(MD5Utils.convertMD5(store_account.getPassword())))
            return true;
        }
        return false;
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
    public boolean update(Store_account store_account) throws SQLException {
        String sql="update store_account set S_password=? where S_id=?";
        Object[] params=new Object[]{store_account.getPassword(),store_account.getStore_id()};
        int update = queryRunner.update(sql,params);
        return update==1?true:false;
    }
    public boolean updateinfo(Store_account store_account,int S_id) throws SQLException {
        String sql="update store_account set S_name=?,S_location=?,S_telephone=?,S_email=?,S_time=?,S_image=?,S_content=? where S_id=?";
        Object[] params=new Object[]{store_account.getName(),store_account.getLocation(),store_account.getTelephone(),store_account.getEmail(),store_account.getCreatetime(),store_account.getSafeimage(),store_account.getScontent(),S_id};
        int update = queryRunner.update(sql,params);
        return update==1?true:false;
    }

    public boolean delete(int id) throws SQLException{
        String sql="delete from store_account where S_id=?";
        int update=queryRunner.update(sql,id);
        return update==1?true:false;
    }
    public boolean isexist(String account) throws SQLException {
        String sql = "select * from store_account where S_account = ?";
        ps = DBUtils.getConnection().prepareStatement(sql);
        ps.setString(1,account);
        rs = ps.executeQuery();
        if(rs.next()) {
            return true;
        }
        return false;
    }
    @Test
    public static void main(String[] args) throws Exception {
        //Store_account store_account=new Store_account("yb123456",""+MD5Utils.getMD5("123456",32));
       // System.out.println(new Store_accountDao().add(store_account));*/
        //System.out.println(new Store_accountDao().check(new Store_account("yb123456","666666")));
       // System.out.println(new Store_accountDao().selectinfo(1));
        //System.out.println(new Store_accountDao().verify("ljz123456","2226450890@qq.com"));
        System.out.println(new Store_accountDao().check(new Store_account("ljz123456","123456")));
//        System.out.println(new Store_accountDao().selectID("ljz123456"));
    }
}

