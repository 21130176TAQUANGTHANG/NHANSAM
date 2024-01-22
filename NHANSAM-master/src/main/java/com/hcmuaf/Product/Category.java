package com.hcmuaf.Product;

public class Category {
    private int id;
    private String name;

    private int cateID;
    public Category() {
    }

    public Category(int id, String name, int cateID) {
        this.id = id;
        this.name = name;
        this.cateID = cateID;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
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
}
