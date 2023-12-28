<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.cart.CartProduct" %>
<%@ page import="com.hcmuaf.cart.Cart" %>
<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 11/9/2023
  Time: 2:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>card.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/shoppingcart.css">
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
                    if (cart == null)
                        cart = new Cart();

                    Map<Integer, CartProduct> cartItems = cart.getData();
                %>

                <h2>Giỏ hàng của bản:</h2>

                <%
                    if (cartItems.isEmpty()) {
                %>
                <p>Giỏ hàng của bạn trống. Vui lòng thêm sản phẩm vào giỏ hàng</p>
                <%
                } else {
                    int totalPriceForAllProducts = 0;

                    for (Map.Entry<Integer, CartProduct> entry : cartItems.entrySet()) {
                        CartProduct cartProduct = entry.getValue();
                        Product product = cartProduct.getProduct();
                        totalPriceForAllProducts += cartProduct.getSubtotal();

                %>
                <div class="shopping-cart">
                    <table id="table-shopping">
                        <thead>
                        <tr class="text-cart">
                            <th></th>
                            <th>Image</th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <form action="Cart-Controller" method="post" onsubmit="return updateCart(<%= product.getId() %>)">
                                <td><button type="submit">UPDATA</button></td>
                                <td><img src="<%= product.getImage()%>" alt="Handbag"></td>
                                <td><%= product.getName()%></td>
                                <td><%= product.getPrice()%></td>
<%--                                <td>--%>
<%--                                    <input type="number" name="quantity" value="<%= cartProduct.getQuantity() %>" min="1" style="width: 40px;" onchange="updateCart(<%= product.getId() %>, this.value)">--%>
<%--                                </td>--%>
                                <td>
                                    <input type="number" name="quantity" id="quantity_<%= product.getId() %>"
                                           value="<%= cartProduct.getQuantity() %>" min="1" style="width: 40px;"
                                           onchange="updateTotal(<%= product.getPrice() %>, <%= product.getId() %>)">
                                </td>
                                <td><%= cartProduct.getSubtotal()%></td>
                                <td>
                                    <input type="hidden" name="productId" value="<%= product.getId() %>">
                                    <button class="remove" type="submit"><i class="bi bi-x-lg"></i></button>
                                </td>
                            </form>

                        </tr>

                        </tbody>
                    </table>

                </div>
                <%
                        }
                        session.setAttribute("totalPriceForAllProducts", totalPriceForAllProducts);
                    }
                %>
<%

    int totalQuantity = cart.getTotal(); // Số sản phẩm trong giỏ hàng
    int totalPrice = cart.getTotalPrice(); // Tổng tiền

    // Lưu thông tin giỏ hàng vào session
    session.setAttribute("totalQuantity", totalQuantity);
    session.setAttribute("totalPrice", totalPrice);


%>

<%--<div class="total">--%>
<%--    <p>Tổng giá: <%= session.getAttribute("totalPrice") %></p>--%>
<%--</div>--%>
<div class="total">
    <p>Tổng giá cho Tất cả Sản phẩm: <%= session.getAttribute("totalPriceForAllProducts") %></p>
</div>


<div class="checkout">
    <a href="checkout.jsp">Thanh Toán</a>
</div>

<a href="index.jsp">Continue Shopping</a>
<footer style="background-color: #BF1E2E;">
    <div class="footer" style="display: flex;
    justify-content: space-around;
    align-items: center;">
        <div class="footer-category">
            <ul style="list-style: none; padding: 30px">
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Nấm lim xanh</a></li>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Đông trùng hạ thảo</a></li>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Hồng sâm</a></li>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Nấm linh chi</a></li>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Yến xào</a></li>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">An Cung Ngưu hoàng</a></li>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Nước uống bổ gan</a></li>


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
<script>
    function updateTotal(price, productId) {
        const quantity = document.getElementById(`quantity_${productId}`).value;
        const subtotalElement = document.getElementById(`subtotal_${productId}`);
        const subtotal = price * quantity;
        subtotalElement.textContent = subtotal;
    }

    function updateCart(productId) {
        // Additional logic if needed before submitting the form
        return true; // Returning true to submit the form
    }
</script>

</body>
</html>
