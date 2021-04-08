package com.msys.canteen.entity;

public class Store_activity {
    private int aid;
    private int sid;
    private String aimage;
    private String atheme;
    private int astate;
    private String adate;

    public Store_activity() {
    }

    public Store_activity( int a_id,String a_image, String a_theme ,String a_date) {
        aid=a_id;
        aimage = a_image;
        atheme = a_theme;
        adate=a_date;
    }


    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getAimage() {
        return aimage;
    }

    public void setAimage(String aimage) {
        this.aimage = aimage;
    }

    public String getAtheme() {
        return atheme;
    }

    public void setAtheme(String atheme) {
        this.atheme = atheme;
    }

    public int getAstate() {
        return astate;
    }

    public void setAstate(int astate) {
        this.astate = astate;
    }

    public String getAdate() {
        return adate;
    }

    public void setAdate(String adate) {
        this.adate = adate;
    }

    @Override
    public String toString() {
        return "Store_activity{" +
                "aid=" + aid +
                ", sid=" + sid +
                ", aimage='" + aimage + '\'' +
                ", atheme='" + atheme + '\'' +
                ", astate=" + astate +
                ", adate='" + adate + '\'' +
                '}';
    }
}
