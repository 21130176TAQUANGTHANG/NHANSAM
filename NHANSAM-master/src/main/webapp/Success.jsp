<%@ page import="com.hcmuaf.login.User" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 1/22/2024
  Time: 11:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
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
                    <a class="nav-link" href="Productss.jsp"style="color: #BF1E2E;">SẢN PHẨM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp"style="color: #BF1E2E;">GIỎ HÀNG </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="policy.jsp"style="color: #BF1E2E;">CHÍNH SÁCH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp"style="color: #BF1E2E;">LIÊN HỆ</a>
                </li>
            </ul>
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

<div class="successproduct">
    <h1>Cảm ơn bạn đã đặt hàng sản phẩm</h1>
    <a href="index.jsp">Nhấp vào đây để quay lại trang chủ</a>
</div>
</body>
</html>
