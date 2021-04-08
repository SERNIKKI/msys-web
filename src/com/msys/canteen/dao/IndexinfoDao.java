package com.msys.canteen.dao;

import com.msys.canteen.entity.Indexinfo;
import com.msys.canteen.tools.ObjectToBeanUtils;
import com.msys.canteen.utils.DBUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

public class IndexinfoDao {
    QueryRunner queryRunner = new QueryRunner(DBUtils.getDataSource());
    public Indexinfo selectinfo(int sid) throws Exception {
        String sql="SELECT F_price,goods_num ,goods_time FROM store_food,goods WHERE goods.S_id=? and goods.F_id=store_food.F_id ";
        Object[] params = new Object[]{sid};
        List<Object[]> list= null;
        try {
            list = queryRunner.query(sql, new ArrayListHandler(),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 工具类
        List<Indexinfo> indexinfo = ObjectToBeanUtils.objectToBean(list, Indexinfo.class);
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime yesterday=now.plusDays(-1);
        String nowtime = now.format(DateTimeFormatter.ofPattern("yyyyMMdd"));
        String yestime = yesterday.format(DateTimeFormatter.ofPattern("yyyyMMdd"));
        int todaynum=0;
        int yesnum=0;
        int allnum=0;
        int todaysale=0;
        int yessale=0;
        int allsale=0;
        double rate1=0;
        double rate2=0;
        for (Indexinfo info:indexinfo) {
            String goods_time =info.getDate()+"";
            String goodtime=goods_time.substring(0,8);
            if(goodtime.compareTo(nowtime)==0){
                todaynum+=info.getFoodnum();
                todaysale+=info.getFoodprice()*info.getFoodnum();
            }
            if(goodtime.compareTo(nowtime)<0){
                yesnum+=info.getFoodnum();
                yessale+=info.getFoodprice()*info.getFoodnum();
            }
            allnum+=info.getFoodnum();
            allsale+=info.getFoodprice()*info.getFoodnum();
        }
        if(yessale==0||yesnum==0){
            rate1=0;
            rate2=0;
        }else {
            rate1=(double)Math.round(((todaynum / (double)yesnum-1)*100)*100)/100;
            rate2=(double)Math.round(((todaysale / (double)yessale-1)*100)*100)/100;
        }
        Indexinfo indexinfo1=new Indexinfo();
        if(rate1>=0&&rate2>=0){
             indexinfo1=new Indexinfo(todaynum+"",allnum+"","￥"+todaysale+"","￥"+allsale+"","+"+rate1+"%","+"+rate2+"%");
        }else if(rate1>=0&&rate2<0){
             indexinfo1=new Indexinfo(todaynum+"",allnum+"","￥"+todaysale+"","￥"+allsale+"","+"+rate1+"%","-"+rate2+"%");
        }else if(rate1<0&&rate2>=0){
             indexinfo1=new Indexinfo(todaynum+"",allnum+"","￥"+todaysale+"","￥"+allsale+"","-"+rate1+"%","+"+rate2+"%");
        }else{
             indexinfo1=new Indexinfo(todaynum+"",allnum+"","￥"+todaysale+"","￥"+allsale+"","-"+rate1+"%","-"+rate2+"%");
        }
        return indexinfo1;
    }
    @Test
    public static void main(String[] args) throws Exception {
        System.out.println(new IndexinfoDao().selectinfo(10));

    }
}
