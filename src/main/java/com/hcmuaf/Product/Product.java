package com.hcmuaf.Product;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Product {

    private int id;
    private String name;
    private String image;
    private String type;
    private int quantity;
    private double  price;
    private int cateID;

    public Product() {
    }

    public Product(int id, String name, String image, String type, int quantity, double price, int cateID) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.type = type;
        this.quantity = quantity;
        this.price = price;
        this.cateID = cateID;
    }
    public Product(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.name = rs.getString("name");
        this.image = rs.getString("image");
        this.type = rs.getString("type");
        this.quantity = rs.getInt("quantity");
        this.price = rs.getDouble("price");
        this.cateID = rs.getInt("cateID");
    }

    @Override
    public String toString() {
        return "ProductItem{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", type='" + type + '\'' +
                ", quantity=" + quantity +
                ", price=" + price +
                ", cateID=" + cateID +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }
}
