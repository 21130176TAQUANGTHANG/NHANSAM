package com.hcmuaf.login;

import com.hcmuaf.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SignUp", value = "/sign-up")
public class SignUp extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String Fullname = req.getParameter("Fullname");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        String re_password = req.getParameter("re_password");
        if(!password.equals(re_password)){
            resp.sendRedirect("sign-up.jsp");
        }else{
            ControllerDAO dao = new ControllerDAO();
            User a = dao.checkLoginExist(username);
            if(a==null){
                dao.signup(username,password,Fullname,phone,address);
                resp.sendRedirect("login.jsp");
            }else{
                resp.sendRedirect("sign-up.jsp");
            }
        }

    }
}
