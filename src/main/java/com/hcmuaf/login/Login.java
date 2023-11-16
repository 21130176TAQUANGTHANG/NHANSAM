package com.hcmuaf.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/doLogin")
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        ControllerDAO dao = new ControllerDAO();
        User a= dao.checkLogin(username,password);

        if(a == null){
            request.setAttribute("error", "email hoặc mật khẩu không chính xác");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("auth",a);
            response.sendRedirect("index.jsp");
        }

    }

}
