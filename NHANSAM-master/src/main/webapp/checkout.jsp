<%@ page import="com.hcmuaf.cart.CartProduct" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="com.hcmuaf.cart.Cart" %>
<%@ page import="com.hcmuaf.login.User" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 12/20/2023
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>checkout.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/checkout.css">
    <script src="css/checkout.js"></script>
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
<%

    Cart cart = (Cart) session.getAttribute("cart");
    int totalQuantity = 0; // Default value if cart is null
    int totalPrice = 0;    // Default value if cart is null

    if (cart != null) {
        totalQuantity = cart.getTotal(); // Số sản phẩm trong giỏ hàng
        totalPrice = cart.getTotalPrice(); // Tổng tiền
    }

    session.setAttribute("totalQuantity", totalQuantity);
    session.setAttribute("totalPrice", totalPrice);
%>

<div id="confirm-bill">
<h1>Thủ tục thanh toán</h1>
<div id="bill-wrapper">
    <div id="information-customer">
        <h2>Thông tin khách hàng</h2>


        <form action="checkout" method="post" >
            <div class="fullname user">


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

            <label>Họ và tên:</label>
            <input type="text" name="fullname">
        </div>
        <div class="phone user">
            <label>Số điện thoại:</label>
            <input type="text" name="phone">
        </div>
        <div class="email user">
            <label>Email:</label>
            <input type="text" name="email">
        </div>
        <div class="address user">
            <label>Địa chỉ giao hàng:</label>
            <input type="text" name="address">
        </div>


        <div class="submit" style="padding: 20px;
    display: flex;
    justify-content: center;">
            <button type="submit" class="btn btn-success">Thanh toán</button>
        </div>
        </form>
    </div>
    <%
        String successMessage = (String) session.getAttribute("successMessage");
        if (successMessage != null) {
    %>
    <div class="alert alert-success" role="alert">
        <%= successMessage %>
    </div>
    <%
            session.removeAttribute("successMessage");
        }
    %>
    <div class="information-bill">
        <h2>Đơn hàng của bạn</h2>
        <div class="bill">
            <div>
                <span>Số sản phẩm: <span style="color: crimson"><%= session.getAttribute("totalQuantity") %></span></span>
            </div>
            <div>
                <span>Giao Hàng: Miễn phí</span>
            </div>
            <div>
                <span name="total">Tổng tiền: <b style="padding:0 10px;"><%= session.getAttribute("totalPrice") %></b></span>
            </div>


        </div>
        <div class="product-bill">
            <%-- Hiển thị danh sách sản phẩm trong giỏ hàng --%>
            <% for (CartProduct cartProduct : cart.getData().values()) { %>
            <div class="fix-product">
                <div>

                <img src="<%= cartProduct.getProduct().getImage() %>">
                </div>
                <div>

                <p><%= cartProduct.getProduct().getName() %></p>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</div>
</div>
</body>



</html>
