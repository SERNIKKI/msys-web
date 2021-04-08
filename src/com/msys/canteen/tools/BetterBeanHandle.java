package com.msys.canteen.tools;

import org.apache.commons.dbutils.handlers.BeanHandler;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * 复写BeanHandler的handle方法，获取注解字段映射
 * @author
 *
 */
public class BetterBeanHandle<T> extends BeanHandler<T>{
    private Class<T> calzz;
    public BetterBeanHandle(Class<T> type) {
        super(type);
        this.calzz=type;
    }

    @Override
    public T handle(ResultSet rs) throws SQLException {
        Field[] fields = calzz.getDeclaredFields();//反射获取字段属性
        T t=null;
        try {
            if (rs.next()) {
                //如果结果集存在数据，反射新建一个对象。
                t = calzz.newInstance();
                //将结果集数据映射到对象的每个有注解的字段上
                for (Field field : fields) {
                    field.setAccessible(true);
                    //获取注解字段
                    Column column = field.getAnnotation(Column.class);
                    //判断该字段是否有注解，如果有，才获取其值，也即你查询出来的数据，如果没有在对象字段写注解，是不会映射的，但也不报错。
                    if (column!=null) {
                        //获取注解值，业绩表字段名
                        String colVal = column.value();
                        //为对象属性值设值，rs.getObject(colVal)表示从结果集中查询出的列明对应的值。
                        field.set(t, rs.getObject(colVal));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }
}