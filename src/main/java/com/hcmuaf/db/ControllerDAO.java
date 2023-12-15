package com.hcmuaf.db;

import com.hcmuaf.Product.Category;
import com.hcmuaf.Product.Product;
import com.hcmuaf.login.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControllerDAO {
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs= null;


    public List<User> getAllAccount(){
        List<User>list=new ArrayList<>();
        String query = "SELECT * FROM users";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(
                        rs.getInt(1), // Sửa đúng số cột trả về từ câu truy vấn
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list;
    }
    public User checkLogin(String username, String password){
        try {
            String query="SELECT*FROM users WHERE username=? AND password=?";
            conn = new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            rs = ps.executeQuery();
            while (rs.next()) {
                User a = new User(
                        rs.getInt(1), // Sửa đúng số cột trả về từ câu truy vấn
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );
                return a;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }
    public User checkLoginExist( String username){
        String query="SELECT*FROM users WHERE username=?";
        try {
            conn = new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            ps.setString(1,username);
            rs=ps.executeQuery();
            while (rs.next()) {
                User a = new User(
                        rs.getInt(1), // Sửa đúng số cột trả về từ câu truy vấn
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );
                return a;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }
    public void signup(String username,String password, String Fullname, String phone,String address){
        String query = "INSERT INTO users(username, password, Fullname, phone, address, role) VALUES(?, ?, ?, ?, ?, 0)";
        try {
            conn= new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,Fullname);
            ps.setString(4,phone);
            ps.setString(5,address);
            ps.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            // Đóng tài nguyên ở đây
        }
        return list;
    }


    public Product getById(int proid){
        String query = "SELECT * FROM products WHERE id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,proid);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7));
                return p;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    return null;
    }


    public List<Product> searchByName(String text) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products \n" +
                "WHERE name LIKE ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + text + "%"); // Sửa lại để sử dụng "%" đúng cách
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            // Đóng tài nguyên (Connection, PreparedStatement, ResultSet) trong khối finally
            // Đảm bảo rằng tài nguyên được đóng dù có lỗi xảy ra hay không
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
        }
        return list;
    }
    public List<Category> getNAMECategory(){
        List<Category>list=new ArrayList<>();
        String query = "SELECT * FROM categories";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(
                        rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list;
    }



    public static void main(String[] args) {
        try {
            ControllerDAO dao = new ControllerDAO();
            List<Product> list = dao.getAllProduct();
            if (!list.isEmpty()) {
                for (Product a : list) {
                    System.out.println(a);
                }
            } else {
                System.out.println("Danh sách sản phẩm trống.");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
