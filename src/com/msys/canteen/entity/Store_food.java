package com.msys.canteen.entity;

import java.io.Serializable;

public class Store_food implements Serializable {
    private int _id;
    private int mid;
    private int sid;
    private int fid;
    private String fname;
    private String fimage;
    private String fintroduction;
    private int fprice;
    private int fnum;
    private String funit;
    private String fkind;

    public Store_food() {
    }

    public Store_food(int _id, int m_id, int s_id, int f_id, String f_name, String f_image, String f_introduction, int f_price, int f_num, String f_unit, String f_kind) {
        this._id = _id;
        mid = m_id;
        sid = s_id;
        fid = f_id;
        fname = f_name;
        fimage = f_image;
        fintroduction = f_introduction;
        fprice = f_price;
        fnum = f_num;
        funit = f_unit;
        fkind = f_kind;
    }
    public Store_food(String kind,int f_id,String f_name, String f_introduction, int f_price ,String f_image, String f_kind, int f_num) {
        fid=f_id;
        fname = f_name;
        fimage = f_image;
        fintroduction = f_introduction;
        fprice = f_price;
        fnum = f_num;
        fkind = f_kind;
        fkind=kind;
    }
    public Store_food(int s_id, String f_name, String f_image, String f_introduction, int f_price, int f_num, String f_kind) {
        sid = s_id;
        fname = f_name;
        fimage = f_image;
        fintroduction = f_introduction;
        fprice = f_price;
        fnum = f_num;
        fkind = f_kind;
    }

    public int get_id() {
        return _id;
    }

    public void set_id(int _id) {
        this._id = _id;
    }

    public int getmid() {
        return mid;
    }

    public void setmid(int m_id) {
        mid = m_id;
    }

    public int getsid() {
        return sid;
    }

    public void setsid(int s_id) {
        sid = s_id;
    }

    public int getfid() {
        return fid;
    }

    public void setfid(int f_id) {
        fid = f_id;
    }

    public String getfname() {
        return fname;
    }

    public void setfname(String f_name) {
        fname = f_name;
    }

    public String getfimage() {
        return fimage;
    }

    public void setfimage(String f_image) {
        fimage = f_image;
    }

    public String getfintroduction() {
        return fintroduction;
    }

    public void setfintroduction(String f_introduction) {
        fintroduction = f_introduction;
    }

    public int getfprice() {
        return fprice;
    }

    public void setfprice(int f_price) {
        fprice = f_price;
    }

    public int getfnum() {
        return fnum;
    }

    public void setfnum(int f_num) {
        fnum = f_num;
    }

    public String getfunit() {
        return funit;
    }

    public void setfunit(String f_unit) {
        funit = f_unit;
    }

    public String getfkind() {
        return fkind;
    }

    public void setfkind(String f_kind) {
        fkind = f_kind;
    }

    @Override
    public String toString() {
        return "Store_food{" +
                "F_id=" + fid +
                "，S_id=" + sid +
                ", F_name='" + fname + '\'' +
                ", F_image='" + fimage + '\'' +
                ", F_introduction='" + fintroduction + '\'' +
                ", F_price=" + fprice +
                ", F_num=" + fnum +
                ", F_kind='" + fkind + '\'' +
                '}';
    }
}
