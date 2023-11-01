package com.hcmuaf.controller;

import com.hcmuaf.beans.User;
import com.hcmuaf.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/doLogin")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = UserService.getInstance().checkLogin(email, password);
//        if(user==null){
//            request.setAttribute("error", "Username or password is incorrect");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        }else{
//            HttpSession session = request.getSession(true);
//            session.setAttribute("auth", user);
////            session.setAttribute("login","Bạn đã đăng nhập");
//            response.sendRedirect("index.jsp");
//        }
        if(email.contains("@")){
            request.setAttribute("emailErr","Email is wrong");
            request.getRequestDispatcher("/login.jsp");
        }
        if("123@gmail.com".equals(email)&& "123".equals(password)){
            response.getWriter().println("Login success");
        }else{
            response.getWriter().println("Login Fail");
        }
    }
}
