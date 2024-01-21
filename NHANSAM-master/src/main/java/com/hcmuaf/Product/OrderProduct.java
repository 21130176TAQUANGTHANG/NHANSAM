    package com.hcmuaf.Product;

    import java.io.Serializable;

    public class OrderProduct implements Serializable {
        int id;
        String name;
        String phone;
        String email;
        String address;
        String district;
        String city;
        double total;

        public OrderProduct() {
        }

        public OrderProduct(int id, String name, String phone, String email, String address, String district, String city, double total) {
            this.id = id;
            this.name = name;
            this.phone = phone;
            this.email = email;
            this.address = address;
            this.district = district;
            this.city = city;
            this.total = total;
        }

        public OrderProduct(String name, String phone, String email, String address, String district, String city, double total) {
            this.name = name;
            this.phone = phone;
            this.email = email;
            this.address = address;
            this.district = district;
            this.city = city;
            this.total = total;
        }

        @Override
        public String toString() {
            return "OrderProduct{" +
                    "name='" + name + '\'' +
                    ", phone='" + phone + '\'' +
                    ", email='" + email + '\'' +
                    ", address='" + address + '\'' +
                    ", district='" + district + '\'' +
                    ", city='" + city + '\'' +
                    ", total=" + total +
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

        public String getDistrict() {
            return district;
        }

        public void setDistrict(String district) {
            this.district = district;
        }

        public String getCity() {
            return city;
        }

        public void setCity(String city) {
            this.city = city;
        }

        public double getTotal() {
            return total;
        }

        public void setTotal(double total) {
            this.total = total;
        }
    }
