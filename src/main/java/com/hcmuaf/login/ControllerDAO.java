package com.hcmuaf.login;

import com.hcmuaf.Product.Category;
import com.hcmuaf.Product.ProductItem;
import com.hcmuaf.db.DBContext;

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

    public User checkLogin( String username, String password){
        try {
            String query="SELECT*FROM user WHERE username=? AND password=?";
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
        String query="SELECT*FROM user WHERE username=?";
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
    public void signup(String username,String password){
        String query = "INSERT INTO user(username, password, Fullname, phone, address, role) VALUES(?, ?, 0, 0, 0, 0)";
        try {
            conn= new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
   public List<ProductItem> getAllProduct(){
        List<ProductItem>list=new ArrayList<>();
        String query = "SELECT*FROM product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductItem(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list;
   }
    public List<ProductItem> searchByName(String text) {
        List<ProductItem> list = new ArrayList<>();
        String query = "SELECT * FROM product\n" +
                "WHERE name LIKE ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + text + "%"); // Sửa lại để sử dụng "%" đúng cách
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductItem(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6)
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


    public List<Category> getAllCategory(){
        List<Category>list=new ArrayList<>();
        String query = "SELECT*FROM category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list;
    }
    public List<ProductItem> getIDCategory(String id){
        List<ProductItem>list=new ArrayList<>();
        String query = "SELECT * FROM product WHERE cateID =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductItem(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6)
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
        ControllerDAO dao = new ControllerDAO();
        List<Category>list = dao.getAllCategory();
        for (Category a:list) {
            System.out.println(a);
        }
    }
}
