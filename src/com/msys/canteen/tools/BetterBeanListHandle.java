package com.msys.canteen.tools;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 * 复写handle方法，获取注解字段映射
 */
public class BetterBeanListHandle<T> extends BeanListHandler<T>{
    private Class<T> clazz;
    public BetterBeanListHandle(Class<T> type) {
        super(type);
        this.clazz=type;
    }
    @Override
    public List<T> handle(ResultSet rs) throws SQLException {
        List<T> list = new ArrayList<T>();
        T obj = null;
        try {
            while (rs.next()) {
// 1. 对象
                obj = clazz.newInstance();
// 2. 对象属性
                Field[] fs = clazz.getDeclaredFields();
                for (Field f : fs) {
                    f.setAccessible(true);
// 获取属性上的注解
                    Column column = f.getAnnotation(Column.class);
                    if (column!=null) {
// 获取字段名称
                        String columnName = column.value();
// 获取字段名称， 对应的值
                        Object columnValue = rs.getObject(columnName);
                        f.set(obj, columnValue);
                    }

                }
// 对象添加到list集合
                list.add(obj);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
