package com.hcmuaf.cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Checkout", value = "/Checkout")
public class Checkout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String district = request.getParameter("district");

        HttpSession session = request.getSession();

        // Kiểm tra và đặt thông báo vào session nếu có lỗi
        if (fullname == null || fullname.trim().isEmpty()) {
            session.setAttribute("errorFullName", "Vui lòng nhập họ và tên");
        }

        if (phone == null || !phone.matches("\\d{10,11}")) {
            session.setAttribute("errorPhone", "Số điện thoại không hợp lệ");
        }

        if (email == null || !email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
            session.setAttribute("errorEmail", "Email không hợp lệ");
        }

        if (address == null || address.trim().isEmpty()) {
            session.setAttribute("errorAddress", "Vui lòng nhập địa chỉ giao hàng");
        }

        if (city == null || city.trim().isEmpty()) {
            session.setAttribute("errorCity", "Vui lòng chọn thành phố");
        }

        if (district == null || district.trim().isEmpty()) {
            session.setAttribute("errorDistrict", "Vui lòng chọn quận");
        }

        // Kiểm tra nếu có lỗi, chuyển hướng về trang thanh toán
        if (hasErrors(session)) {
            response.sendRedirect("checkout.jsp");
            return;
        }

        // Xử lý thanh toán khi không có lỗi
        // ...

        // Đặt thông báo thành công vào session nếu cần
        session.setAttribute("successMessage", "Thanh toán thành công");

        // Chuyển hướng về trang thanh toán hoặc trang thông báo thành công
        response.sendRedirect("index.jsp");


    }

    private boolean hasErrors(HttpSession session) {
        return session.getAttribute("errorFullName") != null ||
                session.getAttribute("errorPhone") != null ||
                session.getAttribute("errorEmail") != null ||
                session.getAttribute("errorAddress") != null ||
                session.getAttribute("errorCity") != null ||
                session.getAttribute("errorDistrict") != null;
    }

}