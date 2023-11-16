package com.hcmuaf.Product;

import com.hcmuaf.login.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "AddProduct", value = "/add-cart")
public class AddProduct extends HttpServlet {
    private final ControllerDAO dao = new ControllerDAO(); // Đối tượng DAO chỉ cần tạo một lần

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try (PrintWriter out = resp.getWriter()) {
            HttpSession session = req.getSession();
            ArrayList<ItemCart> cartList = (ArrayList<ItemCart>) session.getAttribute("cart-list");

            if (cartList == null) {
                cartList = new ArrayList<>();
                session.setAttribute("cart-list", cartList);
                out.println("session is connected");
            }

            int id = Integer.parseInt(req.getParameter("id"));
            ItemCart cm = new ItemCart();
            cm.setId(id);
            cm.setQuantity(1);

            cartList.add(cm);
        }

    }
}


