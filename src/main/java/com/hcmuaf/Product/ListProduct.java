package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProduct",value = "/listProduct")
public class ListProduct extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ControllerDAO dao = new ControllerDAO();
        List<Product> list = dao.getAllProduct();

       if(list==null && list.isEmpty()){
           resp.sendRedirect("index.jsp");
       }else{
           HttpSession session = req.getSession();
           session.setAttribute("listP",list);
           resp.sendRedirect("Productss.jsp");
       }
    }
}
