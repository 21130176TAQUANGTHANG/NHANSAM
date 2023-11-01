package com.hcmuaf.services;


import com.hcmuaf.beans.Product;
import com.hcmuaf.beans.User;
import com.hcmuaf.db.JDBIConnector;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    private static ProductService instance;


    private ProductService() {
    }

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }

    public  List<Product> getAll(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products")
                    .mapToBean(Product.class)
                    .list();
        });
    }

    public User checkLogin(String username, String password) {
        List<User> users = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE username = ?")
                        .bind(0, username)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (users.size() != 1) return null;
        User user = users.get(0);
        if (!user.getPassword().equals(hashPassword(password))
                ||!user.getUsername().equals(username)) return null;
        return user;
    }
    public String hashPassword(String password) {
        try {
            MessageDigest sha256 = null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public boolean register(String username, String password, String confirm, String email, String phone, String address) {
//        check register with username and password
//        if(!password.equals(confirm))return false;
//        return UserDao.getInstance().register(username, password, email, phone, address);
        return false;
    }
}
