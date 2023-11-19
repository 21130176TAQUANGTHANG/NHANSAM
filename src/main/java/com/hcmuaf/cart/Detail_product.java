package com.hcmuaf.cart;

public class Detail_product {
    private int id;
    private String cate_id;
    private String name;
    private String trademark;
    private String product_group;
    private String describe;
    private String function;
    private String user_manual;
    private String preserve;

    public Detail_product(int id, String cate_id, String name, String trademark, String product_group, String describe, String function, String user_manual, String preserve) {
        this.id = id;
        this.cate_id = cate_id;
        this.name = name;
        this.trademark = trademark;
        this.product_group = product_group;
        this.describe = describe;
        this.function = function;
        this.user_manual = user_manual;
        this.preserve = preserve;
    }

    @Override
    public String toString() {
        return "Detail_product{" +
                "id=" + id +
                ", cate_id='" + cate_id + '\'' +
                ", name='" + name + '\'' +
                ", trademark='" + trademark + '\'' +
                ", product_group='" + product_group + '\'' +
                ", describe='" + describe + '\'' +
                ", function='" + function + '\'' +
                ", user_manual='" + user_manual + '\'' +
                ", preserve='" + preserve + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCate_id() {
        return cate_id;
    }

    public void setCate_id(String cate_id) {
        this.cate_id = cate_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
    }

    public String getProduct_group() {
        return product_group;
    }

    public void setProduct_group(String product_group) {
        this.product_group = product_group;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }

    public String getUser_manual() {
        return user_manual;
    }

    public void setUser_manual(String user_manual) {
        this.user_manual = user_manual;
    }

    public String getPreserve() {
        return preserve;
    }

    public void setPreserve(String preserve) {
        this.preserve = preserve;
    }
}
