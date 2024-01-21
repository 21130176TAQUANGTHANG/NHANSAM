package com.hcmuaf.login;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = "/doLogin")
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        ControllerDAO dao = new ControllerDAO();
        User a = dao.checkLogin(username, password);
        HttpSession session = request.getSession();

        if (a == null) {
            request.setAttribute("error", "email hoặc mật khẩu không chính xác");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            if ("admin".equals(username) && "admin".equals(password)) {
                session.setAttribute("auth", a);
                response.sendRedirect("admin.jsp");
            } else {
                session.setAttribute("auth", a);
                response.sendRedirect("index.jsp");
//                Mail.sendMail(username,"Heloo bro", "you are handsoe");
            }
        }
    }
}