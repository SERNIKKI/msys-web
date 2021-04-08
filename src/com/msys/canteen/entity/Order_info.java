package com.msys.canteen.entity;

public class Order_info {
    private String name;
    private int num;

    public Order_info() {
    }

    public Order_info(String name, int num) {
        this.name = name;
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "Order_info{" +
                "name='" + name + '\'' +
                ", num=" + num +
                '}';
    }
}
