<%@ page import="com.hcmuaf.login.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/Login.css">
</head>
<body>
<header id="header">
    <div class="header-menu">

        <div class="logo">
            <a href="index.jsp"><img src="img/Screenshot%202023-10-19%20101211.png" alt=""></a>
        </div>

        <div class="menu">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">SẢN PHẨM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">TIN TỨC </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">HỆ THỐNG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">LIÊN HỆ</a>
                </li>
            </ul>
        </div>

        <div class="search">
            <form action="./search" method="post">
                <label>
                    <input type="text" placeholder="Tìm kiếm" name="text">
                </label>
                <button type="submit"><i class="bi bi-search"></i></button>
            </form>
        </div>

        <div class="account">
            <div class="sign-in">
                <% User auth = (User) session.getAttribute("auth"); %>
                <% if(auth == null){ %>
                <a href="sign-up.jsp">Đăng ký</a>
                <a href="login.jsp">Đăng nhập</a>
                <% } else { %>
                <p>Chào bạn: <%= auth.getFullname() %> </p>
                <a href="logout.jsp">Đăng xuất</a>
                <% } %>
            </div>
        </div>
        <div class="shopping-img">
            <a href=""> <img src="img/shopping.png" alt="" width="40px"></a>
        </div>


    </div>
</header>

<div id="login-super">
    <div class="login">
        <div class="content">
            <h2>Đăng nhập</h2>
        </div>
        <%
            String error = (String)request.getAttribute("error");
            if(error != null) {
        %>
        <p style="color: red; text-align: center; margin-right: 0">
            <%= error %>
        </p>
        <%
            }
        %>
        <form action=./doLogin method="post">
            <div class="input-box">
                <div class="input">
                    <label>
                        <input type="text" value="<%= request.getParameter("username")!=null?request.getParameter("username"):"" %>" name="username" placeholder="username">
                    </label>
                </div>
                <div class="input">
                    <label>
                        <input name="password" type="password" placeholder="mật khẩu" required>
                    </label>
                </div>
            </div>
            <div class="submit">
                <button type="submit">Đăng nhập</button>
            </div>
            <div class="sign_up">
                <p>Nếu mà chưa có tài khoản</p>
                <i class="bi bi-arrow-right"></i>
                <a href="sign-up.jsp">Đăng ký</a>
            </div>
        </form>
    </div>


</div>
</body>
</html>