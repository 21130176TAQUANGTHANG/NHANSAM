<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Category" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 12/27/2023
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forgotPassword.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/Login.css">
</head>
<body>

<header id="header">
    <div class="header-menu">

        <div class="logo">
            <a href="index.jsp"><i class="bi bi-yin-yang" style="font-size: 30px; color: #BF1E2E;"></i></a>
        </div>

        <div class="menu">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp" style="color: #BF1E2E;">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Products.jsp"style="color: #BF1E2E;">SẢN PHẨM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp"style="color: #BF1E2E;">GIỎ HÀNG  </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="policy.jsp"style="color: #BF1E2E;">CHÍNH SÁCH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp"style="color: #BF1E2E;">LIÊN HỆ</a>
                </li>
            </ul>
        </div>

        <div class="search">
            <form action="./search" method="post">
                <label>
                    <input type="text" placeholder="Tìm kiếm" name="text">
                </label>
                <button type="submit" style="height: 30px;
    border: none;
    background-color: snow;"><i class="bi bi-search"></i></button>
            </form>
        </div>

        <div class="account">
            <div class="sign-in">
                <% User auth = (User) session.getAttribute("auth"); %>
                <% if(auth == null){ %>
                <a href="sign-up.jsp" style="color:#BF1E2E;
    text-decoration: none;
    font-size: 20px;">Đăng ký</a>
                <a href="login.jsp" style="color: #BF1E2E;
    text-decoration: none;
    font-size: 20px;">Đăng nhập</a>
                <% } else { %>
                <p>Chào bạn: <%= auth.getFullname() %> </p>
                <a href="logout.jsp">Đăng xuất</a>
                <% } %>
            </div>
        </div>
        <div class="shopping-img">
            <a href="cart.jsp"><i class="bi bi-bag-fill" style="font-size: 30px"></i></a>
        </div>
    </div>
</header>
<form action="./forgotPassword" method="post">
    <div class="card-body">

        <div class="form-group">
            <h2 >Vui lòng nhập email của bạn:</h2>
            <input ctype="text" name="email" required="">

                <div class="card-footer">
                    <button class="btn btn-success" type="submit">Gửi</button>
                </div>
        </div>


    </div>
</form>

<footer style="background-color: #BF1E2E;">
    <div class="footer" style="display: flex;
    justify-content: space-around;
    align-items: center;">
        <div class="footer-category">
            <ul style="list-style: none; padding: 30px">
                <%
                    ControllerDAO dao = new ControllerDAO();
                    List<Category> list = dao.getNAMECategory();
                    for (Category p: list) {
                %>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none"><%=p.getName()%></a></li>
                <% }%>

            </ul>
        </div>

        <div class="footer-information">
            <ul style="list-style: none; padding: 30px">
                <li style="padding: 10px;"><i class="bi bi-geo-alt"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Địa chỉ: 123 đường ABC, Quận Gò Vấp, TPH.HCM</a></li>

                <li style="padding: 10px"><i class="bi bi-telephone-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Số điện thoại: 01234567812</a></li>

                <li style="padding:10px"><i class="bi bi-envelope"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Địa chỉ email:index@gmail.com</a></li>

            </ul>
        </div>

        <div class="footer-question">
            <h2 style="color: white;">Hỗ trợ khách hàng</h2>
            <label>
                <input type="text" required="Nhập email vào đây">
            </label>
            <input type="submit" style="border-radius: 20px; border: none">
        </div>

    </div>
</footer>
</body>
</html>
