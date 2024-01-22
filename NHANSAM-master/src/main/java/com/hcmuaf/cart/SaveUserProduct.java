package com.hcmuaf.cart;

import com.hcmuaf.Product.OrderDetail;
import com.hcmuaf.Product.OrderProduct;
import com.hcmuaf.db.ControllerDAO;
import com.hcmuaf.login.History;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
@WebServlet(name = "SaveUserProduct", value = "/checkout")
public class SaveUserProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullname = req.getParameter("fullname");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String city = req.getParameter("city");
        String district = req.getParameter("district");
        String checkbox = req.getParameter("agreeCheckbox");


        ControllerDAO dao = new ControllerDAO();
        int totalproduct =0;
        HttpSession session = req.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        if (cart != null) {
            Map<Integer, CartProduct> cartData = cart.getData();

            // Sử dụng cartData để lấy thông tin từ giỏ hàng
            for (Map.Entry<Integer, CartProduct> entry : cartData.entrySet()) {
                totalproduct += entry.getValue().quantity * entry.getValue().product.getPrice();
            }

            OrderProduct orderProduct = new OrderProduct(fullname, phone, email, address, district, city, totalproduct);
            int orderID = dao.historyProduct(orderProduct);

            for (Map.Entry<Integer, CartProduct> Productentry : cartData.entrySet()) {
                OrderDetail orderDetail = new OrderDetail(Productentry.getValue().product.getId(), orderID, Productentry.getValue().quantity, Productentry.getValue().product.getPrice() * Productentry.getValue().quantity);
                dao.OrderDetail(orderDetail);
            }
            for (Map.Entry<Integer, CartProduct> detail : cartData.entrySet()) {
                History orderDetail = new History(orderID, fullname, phone, email, address, detail.getValue().getQuantity(), detail.getValue().getSubtotal());
                dao.history(orderDetail);
            }

            resp.sendRedirect("Success.html");
        }


    }

}
