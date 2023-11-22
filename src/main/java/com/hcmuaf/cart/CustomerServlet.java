package com.hcmuaf.cart;

import com.hcmuaf.login.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("username");
        String fullname = req.getParameter("Fullname");

        User c = new User();
        c.setUsername(email);
        c.setFullname(fullname);

        HttpSession session = req.getSession();
        session.setAttribute("customer", c);
        Cart cart = (Cart) session.getAttribute("cart");
    }
}
