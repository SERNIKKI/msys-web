package com.msys.canteen.utils;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import javax.sql.DataSource;
import java.net.URL;
import java.sql.Connection;
import java.sql.SQLException;

public class DBUtils {
    private static DataSource dataSource;
    public static Connection getConnection(){
        URL resource = DBUtils.class.getResource("/hikari.properties");
        HikariConfig configuration = new HikariConfig(resource.getPath());
        dataSource = new HikariDataSource(configuration);
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return connection;
    }
    public static DataSource getDataSource(){
        getConnection();
        return dataSource;
    }
    public static void close(Connection connection){

        if(connection!=null){
            try{
                connection.close();
            }
            catch (SQLException e){
                e.printStackTrace();
            }
        }
    }
    public static void main(String[] args) throws SQLException {
        Connection connection = getConnection();
        if(connection!=null)
            System.out.println("连接成功");
    }
}

