package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProductServlet", value = "/list-product")
public class ListProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ControllerDAO dao = new ControllerDAO();
        List<Product> list = dao.getAllProduct();

        if(list != null){
        HttpSession session = req.getSession();
        session.setAttribute("listP",list);

        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("Productss.jsp");
        dispatcher.forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
