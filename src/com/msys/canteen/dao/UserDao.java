package com.msys.canteen.dao;

import com.msys.canteen.entity.User;
import com.msys.canteen.tools.ObjectToBeanUtils;
import com.msys.canteen.utils.DBUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class UserDao {
    QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
    public String selectemail(String name) throws Exception {
        String sql="select email from user where uname=?";
        Object[] params = new Object[]{name};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<User> list0 = ObjectToBeanUtils.objectToBean(list, User.class);
        User user=list0.get(0);
        return user.getEmail();
    }
    @Test
    public static void main(String[] args) throws Exception {
        System.out.println(new UserDao().selectemail("高鹏"));
    }
}
