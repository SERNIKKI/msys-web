package com.msys.canteen.entity;

public class Indexinfo {
    private String num;
    private String allnum;
    private String sale;
    private String allsale;
    private int foodnum;
    private int foodprice;
    private long  date;
    private String rate1;
    private String rate2;

    public Indexinfo() {
    }

    public Indexinfo( int foodprice,int foodnum, long date) {
        this.foodnum = foodnum;
        this.foodprice = foodprice;
        this.date = date;
    }

    public Indexinfo(String num, String allnum, String sale, String allsale) {
        this.num = num;
        this.allnum = allnum;
        this.sale = sale;
        this.allsale = allsale;
    }

    public Indexinfo(String num, String allnum, String sale, String allsale, String rate1, String rate2) {
        this.num = num;
        this.allnum = allnum;
        this.sale = sale;
        this.allsale = allsale;
        this.rate1 = rate1;
        this.rate2 = rate2;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getAllnum() {
        return allnum;
    }

    public void setAllnum(String allnum) {
        this.allnum = allnum;
    }

    public String getSale() {
        return sale;
    }

    public void setSale(String sale) {
        this.sale = sale;
    }

    public String getAllsale() {
        return allsale;
    }

    public void setAllsale(String allsale) {
        this.allsale = allsale;
    }

    public int getFoodnum() {
        return foodnum;
    }

    public void setFoodnum(int foodnum) {
        this.foodnum = foodnum;
    }

    public int getFoodprice() {
        return foodprice;
    }

    public void setFoodprice(int foodprice) {
        this.foodprice = foodprice;
    }

    public long getDate() {
        return date;
    }

    public void setDate(long date) {
        this.date = date;
    }

    public String getRate1() {
        return rate1;
    }

    public void setRate1(String rate1) {
        this.rate1 = rate1;
    }

    public String getRate2() {
        return rate2;
    }

    public void setRate2(String rate2) {
        this.rate2 = rate2;
    }

    @Override
    public String toString() {
        return "Indexinfo{" +
                "num='" + num + '\'' +
                ", allnum='" + allnum + '\'' +
                ", sale='" + sale + '\'' +
                ", allsale='" + allsale + '\'' +
                ", foodnum=" + foodnum +
                ", foodprice=" + foodprice +
                ", date=" + date +
                ", rate1='" + rate1 + '\'' +
                ", rate2='" + rate2 + '\'' +
                '}';
    }
}
