package com.hcmuaf.cart;

import com.hcmuaf.Product.ProductItem;

import java.util.Collection;
import java.util.HashMap;

public class Cart {
    HashMap<Integer, ProductItem> data;

    public Cart() {
        this.data = new HashMap<>();
    }

    public ProductItem get(int id) {
        return data.get(id);
    }
    public int put(ProductItem item){
        if(data.containsKey(item.getId()))
            data.get(item.getId()).quantityUp();
        else data.put(item.getId(),item);
        return data.get(item.getId()).getQuantity();
    }
    public int put(int id,int quantity){
        if (data.containsKey(id)) data.get(id).quantityUp(quantity);
        return data.get(id).getQuantity();
    }
    public boolean remove(int id ){
        return data.remove(id) ==null;
    }
    public double total(){
        double sum =0;
        for (ProductItem p: data.values())
            sum +=(p.getQuantity()*p.getPrice());
            return sum;
    }
    public Collection<ProductItem> list() {
        return data.values();
    }
}
