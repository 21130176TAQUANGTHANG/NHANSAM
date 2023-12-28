<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.cart.Cart" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 11/11/2023
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Productss.jsp</title>
    <meta charset="UTF-8">
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
                    <a class="nav-link" href="Products.jsp"style="color: #BF1E2E;">SẢN PHẨM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp"style="color: #BF1E2E;">CART </a>
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
            <form action="" method="get">
                <label>
                    <input type="text" placeholder="Tìm kiếm" name="searchText">
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

            <%
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null)
                    cart = new Cart();

            %>

            <a href="cart.jsp"><i class="bi bi-bag-fill" style="font-size: 30px"></i></a>
            <span><%= cart.getTotal()%></span>
        </div>
    </div>
</header>

<div class="tab_content">
    <div class="product-container" id="menu_1">

        <%
            String searchText = request.getParameter("searchText");
            List<Product> list;
            ControllerDAO dao = new ControllerDAO();
            if (searchText != null && !searchText.isEmpty()) {
                list = dao.searchByName(searchText);
            } else {
                list = dao.getAllProduct();
            }
        %>
        <%
            for (Product product : list) {
        %>

        <div class="product-ite">
            <img src="<%= product.getImage()%>" alt="">
            <a href="<%=product.getType()%>"><p><%= product.getName()%></p></a>
            <div class="buy">
                <p><%= product.getPrice()%></p>
                <button type="button" class="btn-ginseng">Mua</button>
                <%
                    User us = (User) session.getAttribute("auth");
                    if (us == null) {
                %>
                <a href="login.jsp">Thêm vào giỏ hàng</a>
                <%
                } else {
                %>
                <a href="add-cart?id=<%= product.getId()%>">Thêm vào giỏ hàng</a>
                <%
                    }
                %>
            </div>
        </div>
        <%}
            %>
    </div>


</div>




<footer style="background-color: #BF1E2E;">
    <div class="footer" style="display: flex;
    justify-content: space-around;
    align-items: center;">
        <div class="footer-category">

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