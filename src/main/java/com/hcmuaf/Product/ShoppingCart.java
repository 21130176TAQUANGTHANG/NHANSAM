package com.hcmuaf.Product;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
    private List<ProductItem> items;

    public ShoppingCart() {
        this.items = new ArrayList<>();
    }

    public List<ProductItem> getItems() {
        return items;
    }

    public void addItem(ProductItem item) {
        items.add(item);
    }

    public void removeItem(ProductItem item) {
        items.remove(item);
    }

}
