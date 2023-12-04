package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ListProduct",value = "/listProduct")
public class ListProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ControllerDAO dao = new ControllerDAO();
        Product list = (Product) dao.getAllProduct();

        if(list==null){
            req.getRequestDispatcher("Productss.jsp").forward(req,resp);

        }else{
            HttpSession session= req.getSession();
            session.setAttribute("listP",list);
            resp.sendRedirect("Productss.jsp");
        }

    }
}
