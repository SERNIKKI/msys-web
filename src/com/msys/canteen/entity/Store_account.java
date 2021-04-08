package com.msys.canteen.entity;

public class Store_account {
    private int store_id;
    private String account;
    private String password;
    private String sname;
    private String slocation;
    private String stelephone;
    private String semail;
    private String screatetime;
    private String ssafeimage;
    private String scontent;
    public Store_account(){

    }

    public Store_account(String account, String password, String semail) {
        this.account = account;
        this.password = password;
        this.semail = semail;
    }
    public Store_account(int store_id) {
        this.store_id = store_id;
    }

    public Store_account(String sname, String slocation, String stelephone, String semail) {
        this.sname = sname;
        this.slocation = slocation;
        this.stelephone = stelephone;
        this.semail = semail;
    }

    public Store_account(String account, String password) {
        this.account = account;
        this.password = password;
    }

    public Store_account(int store_id, String account, String password) {
        this.store_id = store_id;
        this.account = account;
        this.password = password;
    }

    public Store_account(String name, String location, String telephone, String email, String createtime, String safeimage,String scontent) {
        this.sname = name;
        this.slocation = location;
        this.stelephone = telephone;
        this.semail = email;
        this.screatetime = createtime;
        this.ssafeimage = safeimage;
        this.scontent=scontent;
    }

    public int getStore_id() {
        return store_id;
    }

    public void setStore_id(int store_id) {
        this.store_id = store_id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return sname;
    }

    public void setName(String name) {
        this.sname = name;
    }

    public String getLocation() {
        return slocation;
    }

    public void setLocation(String location) {
        this.slocation = location;
    }

    public String getTelephone() {
        return stelephone;
    }

    public void setTelephone(String telephone) {
        this.stelephone = telephone;
    }

    public String getEmail() {
        return semail;
    }

    public void setEmail(String email) {
        this.semail = email;
    }

    public String getCreatetime() {
        return screatetime;
    }

    public void setCreatetime(String createtime) {
        this.screatetime = createtime;
    }

    public String getSafeimage() {
        return ssafeimage;
    }

    public void setSafeimage(String safeimage) {
        this.ssafeimage = safeimage;
    }

    public String getScontent() {
        return scontent;
    }

    public void setScontent(String scontent) {
        this.scontent = scontent;
    }

    @Override
    public String toString() {
        return "Store_account{" +
                "sname='" + sname + '\'' +
                ", slocation='" + slocation + '\'' +
                ", stelephone='" + stelephone + '\'' +
                ", semail='" + semail + '\'' +
                ", screatetime='" + screatetime + '\'' +
                ", ssafeimage='" + ssafeimage + '\'' +
                '}';
    }
}
