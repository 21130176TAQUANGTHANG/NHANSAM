package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(name = "ListProduct",value = "/listProduct")
public class ListProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ControllerDAO dao = new ControllerDAO();
        @SuppressWarnings("unchecked")
        List<Product> list = dao.getAllProduct();

        req.setAttribute("listP", list);
        req.getRequestDispatcher("Productss.jsp").forward(req,resp);
    }
}
