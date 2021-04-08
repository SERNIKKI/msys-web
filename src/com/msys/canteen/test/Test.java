package com.msys.canteen.test;

import com.msys.canteen.utils.DBUtils;

import java.sql.SQLException;

public class Test {
    public static void main(String[] args) throws SQLException {
        DBUtils.getConnection();
    }
}
