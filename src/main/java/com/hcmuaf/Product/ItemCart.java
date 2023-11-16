package com.hcmuaf.Product;

import java.io.Serializable;

public class ItemCart implements Serializable {
    private int id;
    private ProductItem product;
    private int quantity;
    public ItemCart() {
    }

    public ItemCart(int id, ProductItem product, int quantity) {
        this.id = id;
        this.product = product;
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "ItemCart{" +
                "id=" + id +
                ", product=" + product +
                ", quantity=" + quantity +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ProductItem getProduct() {
        return product;
    }

    public void setProduct(ProductItem product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
