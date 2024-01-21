package com.hcmuaf.db;

import com.hcmuaf.Product.Category;
import com.hcmuaf.Product.OrderDetail;
import com.hcmuaf.Product.OrderProduct;
import com.hcmuaf.Product.Product;
import com.hcmuaf.login.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ControllerDAO {
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs= null;


    public boolean updatePassword(String password, String username) {
        try {
            String sql = "UPDATE `users` SET `password` = ? WHERE username = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, username);

            // Sử dụng executeUpdate cho các câu truy vấn UPDATE, INSERT, DELETE
            int rowsAffected = ps.executeUpdate();

            // Kiểm tra xem có dòng nào bị ảnh hưởng hay không
            return rowsAffected > 0;
        } catch (SQLException e) {
            throw new RuntimeException("Error updating password", e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

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
                        rs.getInt(7)
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
                        rs.getInt(7)
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
                        rs.getInt(7)
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

    public int historyProduct(OrderProduct orderProduct){
        String sql = "INSERT INTO orderproduct(name, phone,email,address,district, city, total) VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, orderProduct.getName());
            ps.setString(2, orderProduct.getPhone());
            ps.setString(3, orderProduct.getEmail());
            ps.setString(4, orderProduct.getAddress());
            ps.setString(5, orderProduct.getDistrict());
            ps.setString(6, orderProduct.getCity());
            ps.setDouble(7,orderProduct.getTotal());
            ps.executeUpdate();

            try (ResultSet rss = ps.getGeneratedKeys()) {
                if (rss.next()) {
                    return rss.getInt(1);
                }
                rss.close();
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return 0;

    }

    public void OrderDetail(OrderDetail orderDetail){
        String query = "INSERT INTO odersdetail(product_id, order_id, quantity, price) VALUES(?, ?, ?, ?)";
        try {
            conn= new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,orderDetail.getProduct_id());
            ps.setInt(2,orderDetail.getOrder_id());
            ps.setInt(3,orderDetail.getQuantity());
            ps.setDouble(4,orderDetail.getTotal());
            ps.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    public void addProduct(Product product){
        String sql = "INSERT INTO products(name, img, type,quantity,price,cateID) VALUES(?,?,0,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setInt(3, product.getQuantity());
            ps.setInt(4,product.getPrice());
            ps.setInt(5,product.getCateID());
            ps.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public boolean deleteProductById(int id) {
        String sql = "DELETE FROM products WHERE id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public boolean updateProducct(String name, String img, int quantity, int price, int cateID, String id){
        String sql = "UPDATE products SET name =?, img=?, quantity=?,price =?, cateID=? WHERE id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2,img);
            ps.setInt(3, quantity);
            ps.setInt(4,price);
            ps.setInt(5,cateID);
            ps.setString(6,id);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
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
        } catch (Exception e) {
            throw new RuntimeException(e);
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
       ControllerDAO dao = new ControllerDAO();
       System.out.println(dao.getById(40));
       System.out.println(dao.updateProducct("nam linh chi pro max","https://nhansamhanquoc.vn/pic/Product/cao-sam-h_638074087320465111_HasThumb_Thumb.jpg",100,14000000,2,"40"));
    }

}
