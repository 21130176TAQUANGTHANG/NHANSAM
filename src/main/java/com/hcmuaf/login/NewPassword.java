package com.hcmuaf.login;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NewPassword", value = "/NewPassword")
public class NewPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        RequestDispatcher dispatcher;

        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
            // Lấy email từ session
            String email = (String) session.getAttribute("email");

            // Thực hiện logic để cập nhật mật khẩu mới
            ControllerDAO controllerDAO = new ControllerDAO();
            boolean passwordUpdated = controllerDAO.updatePassword(newPassword, email);

            if (passwordUpdated) {
                dispatcher = request.getRequestDispatcher("CodeOTP.jsp");
            } else {
                request.setAttribute("message", "Failed to update password. Please try again.");
                dispatcher = request.getRequestDispatcher("ErrorPage.jsp");
            }
        } else {
            request.setAttribute("message", "Passwords do not match.");
            dispatcher = request.getRequestDispatcher("UpdataPassword.jsp");
        }

        dispatcher.forward(request, response);

    }
}