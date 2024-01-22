package com.hcmuaf.login;

public class History {
    int orderID;
    String fullname;
    String phone;
    String email;
    String address;
    int quantity;
    int totalprice;
    String orderdate;

    public History(int orderID, String fullname, String phone, String email, String address, int quantity, int totalprice) {
        this.orderID = orderID;
        this.fullname = fullname;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.quantity = quantity;
        this.totalprice = totalprice;
    }

    @Override
    public String toString() {
        return "History{" +
                "orderID=" + orderID +
                ", fullname='" + fullname + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", quantity=" + quantity +
                ", totalprice=" + totalprice +
                ", orderdate='" + orderdate + '\'' +
                '}';
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(int totalprice) {
        this.totalprice = totalprice;
    }

    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }
}
