package com.msys.canteen.entity;

public class Order {
    private String  oid;
    private String uid;
    private String date;
    private int price;
    private int state;
    private String uname;
    private String oinfo;

    public Order() {
    }

    public Order(String  oid, String date, int price, int state, String uname) {
        this.oid = oid;
        this.date = date;
        this.price = price;
        this.state = state;
        this.uname = uname;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String  getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getOinfo() {
        return oinfo;
    }

    public void setOinfo(String oinfo) {
        this.oinfo = oinfo;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oid=" + oid +
                ", uid=" + uid +
                ", date='" + date + '\'' +
                ", price=" + price +
                ", state=" + state +
                ", uname='" + uname + '\'' +
                ", oinfo='" + oinfo + '\'' +
                '}';
    }
}
