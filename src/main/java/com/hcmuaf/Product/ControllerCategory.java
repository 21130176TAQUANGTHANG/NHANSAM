package com.hcmuaf.Product;

import com.hcmuaf.login.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ControllerCategory",value = "/category")
public class ControllerCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cateID = req.getParameter("id");
        ControllerDAO dao = new ControllerDAO();
        List<ProductItem> listC = dao.getIDCategory(cateID);
        List<ProductItem> listP = dao.getAllProduct();

        req.setAttribute("listC",listC);
        req.setAttribute("listP",listP);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}