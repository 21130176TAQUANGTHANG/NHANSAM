package com.hcmuaf.Product;

import java.io.Serializable;
import java.util.List;

public class ItemCart implements Serializable {
    private ProductItem product;
    private int quantity;
    public ItemCart(List<ProductItem> id, int i) {
    }

    public ItemCart(ProductItem product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "ItemCart{" +
                ", product=" + product +
                ", quantity=" + quantity +
                '}';
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
