package com.hcmuaf.Product;

import com.hcmuaf.login.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Search",value = "/search")
public class Search extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String text = req.getParameter("text");
        ControllerDAO dao = new ControllerDAO();
        List<ProductItem>list = dao.searchByName(text);

        req.setAttribute("searchResult", list);
        req.getRequestDispatcher("Productss.jsp").forward(req,resp);
    }
}
