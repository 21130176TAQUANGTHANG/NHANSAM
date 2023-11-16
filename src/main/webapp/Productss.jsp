<%@ page import="com.hcmuaf.Product.ProductItem" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.login.ControllerDAO" %>
<%@ page import="com.hcmuaf.login.User" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 11/11/2023
  Time: 1:35 PM
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
            <a href="index.jsp"><img src="img/Screenshot%202023-10-19%20101211.png" alt=""></a>
        </div>

        <div class="menu">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Productss.jsp">SẢN PHẨM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">CART </a>
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

<div class="tab_content">
    <div class="product-container" id="menu_1">



        <%
            String searchText = request.getParameter("text");
            List<ProductItem> productList;

            if (searchText != null && !searchText.isEmpty()) {

            // Nếu có văn bản tìm kiếm, sử dụng kết quả tìm kiếm
            productList = new ControllerDAO().searchByName(searchText);

            } else {
            // Ngược lại, hiển thị tất cả sản phẩm
            productList = new ControllerDAO().getAllProduct();
            }

            for (ProductItem product : productList) {
        %>



        <!-- nấm lim xanh -->
        <div class="product-ite">
            <img src="<%= product.getImage()%>" alt="">
            <a href="<%=product.getType()%>"><p><%= product.getName()%></p></a>
            <div class="buy">
                <p><%= product.getPrice()%></p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <%
            }
        %>

    </div>
</div>


</body>
</html>
