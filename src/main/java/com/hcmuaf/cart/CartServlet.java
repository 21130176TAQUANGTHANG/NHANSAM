package com.hcmuaf.cart;

import com.hcmuaf.Product.ProductItem;
import com.hcmuaf.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "CartServlet", value = "/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<ProductItem> cart = (List<ProductItem>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        String productId = request.getParameter("productId");
        if (productId != null) {
            ControllerDAO productDAO = new ControllerDAO();
            ProductItem product = (ProductItem) productDAO.findID(productId);

            if (product != null) {
                ProductItem item = new ProductItem(product.getId(),product.getName(),product.getImage(),product.getType(),product.getPrice(),product.getCateID());
                cart.add(item);
            }
        }

        session.setAttribute("cart", cart);
        response.sendRedirect("cart.jsp");
    }

}
