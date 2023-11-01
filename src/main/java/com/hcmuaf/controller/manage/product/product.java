package com.hcmuaf.controller.manage.product;

import com.hcmuaf.beans.Product;
import com.hcmuaf.beans.User;
import com.hcmuaf.services.PermissionService;
import com.hcmuaf.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Index", value = "/manage/product/index")
public class product extends HttpServlet {
    private static String name="product";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list= ProductService.getInstance().getAll();
        request.setAttribute("list",list);
        System.out.println("list:"+list);
        if(request.getSession().getAttribute("auth")==null) {
            response.sendRedirect("/login.jsp");
            return;
        }
        int per= PermissionService.getInstance().checkAccess(name, ((User)(request.getSession().getAttribute("auth"))).getId());
        if(per>2) response.getWriter().println("BAN CO TOAN QUYEN TAI DAY");
        if(per>1) response.getWriter().println("BAN CO TOAN QUYEN SUA DU LIEU");
        if(per>0) response.getWriter().println("BAN CO TOAN QUYEN XEM DU LIEU");
        if(per==0) {
            response.sendRedirect("/login.jsp");
            return;
        }
//        request.getRequestDispatcher("/manage/product/index.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
