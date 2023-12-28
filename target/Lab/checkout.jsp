<%@ page import="com.hcmuaf.cart.CartProduct" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="com.hcmuaf.cart.Cart" %><%--
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
            <a href="index.html"><i class="bi bi-yin-yang" style="font-size: 30px; color: #BF1E2E;"></i></a>
        </div>

        <div class="menu">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.html" style="color: #BF1E2E;">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Products.jsp" style="color: #BF1E2E;">SẢN PHẨM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp" style="color: #BF1E2E;">CART </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="policy.html" style="color: #BF1E2E;">CHÍNH SÁCH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp" style="color: #BF1E2E;">LIÊN HỆ</a>
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
                <a href="sign-up.jsp" style="color:#BF1E2E;
    text-decoration: none;
    font-size: 20px;">Đăng ký</a>
                <a href="login.jsp" style="color: #BF1E2E;
    text-decoration: none;
    font-size: 20px;">Đăng nhập</a>
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
        <div class="fullname user">
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

        <div class="city">
            <label for="city">Thành phố</label>
            <select id="city" onchange="populateDistricts()">
                <option value="">Chọn thành phố</option>
                <option value="angiang">An Giang</option>
                <option value="vungtau">Bà Rịa - Vũng Tàu </option>
                <option value="bacgiang">Bắc Giang</option>
                <option value="backan">Bắc Kạn</option>
                <option value="baclieu">Bạc Liêu</option>
                <option value="bacninh">Bắc Ninh</option>
                <option value="bentre">Bến tre</option>
                <option value="binhdinh">Bình Định</option>
                <option value="binhduong">Bình Dương</option>
                <option value="binhphuoc">Bình Phước</option>
                <option value="binhthuan">Bình Thuận</option>
                <option value="camau">Cà Mau</option>
                <option value="cantho">Cần Thơ</option>
                <option value="caobang">Cao Bằng</option>
                <option value="danang">Đà Nẵng</option>
                <option value="daklak">Đắk Lắk</option>
                <option value="daknong">Đắk Nông</option>
                <option value="dienbien">Điện Biên</option>
                <option value="dongnai">Đồng Nai</option>
                <option value="dongthap">Đồng Tháp</option>
                <option value="gialai">Gia Lai</option>
                <option value="hagiang">Hà Giang</option>
                <option value="hanam">Hà Nam</option>
                <option value="hanoi">Hà Nội</option>
                <option value="hatinh">Hà Tĩnh</option>
                <option value="haiduong">Hải Dương</option>
                <option value="haiphong">Hải Phòng</option>
                <option value="haugiang">Hậu Giang</option>
                <option value="hochiminh">Hồ Chí Minh</option>
                <option value="hoabinh">Hòa Bình</option>
                <option value="hungyen">Hưng Yên</option>
                <option value="khanhhoa">Khánh Hòa</option>
                <option value="kiengiang">Kiên Giang</option>
                <option value="kontum">Kon Tum</option>
                <option value="laichau">Lai Châu</option>
                <option value="lamdong">Lâm Đồng</option>
                <option value="langson">Lạng Sơn</option>
                <option value="laocai">Lào Cai</option>
                <option value="longan">Long An</option>
                <option value="namdinh">Nam Định</option>
                <option value="nghean">Nghệ An</option>
                <option value="ninhbinh">Ninh Bình</option>
                <option value="ninhthuan">Ninh Thuận</option>
                <option value="phutho">Phú Thọ</option>
                <option value="phuyen">Phú Yên</option>
                <option value="quangbinh">Quảng Bình</option>
                <option value="quangnam">Quảng Nam</option>
                <option value="quangngai">Quảng Ngãi</option>
                <option value="quangninh">Quảng Ninh</option>
                <option value="quangtri">Quảng Trị</option>
                <option value="soctrang">Sóc Trăng</option>
                <option value="sonla">Sơn La</option>
                <option value="tayninh">Tây Ninh</option>
                <option value="thaibinh">Thái Bình</option>
                <option value="thainguyen">Thái Nguyên</option>
                <option value="thanhhoa">Thanh Hóa</option>
                <option value="thuathienhue">Thừa Thiên Huế</option>
                <option value="tiengiang">Tiền Giang</option>
                <option value="travinh">Trà Vinh</option>
                <option value="tuyenquang">Tuyên Quang</option>
                <option value="vinhlong">Vĩnh Long</option>
                <option value="vinhphuc">Vĩnh Phúc</option>
                <option value="yenbai">Yên Bái</option>
            </select>
        </div>
        <div class="district">
            <label for="district">Quận</label>
            <select id="district">
                <option value="">Chọn Quận</option>
            </select>
        </div>
    </div>

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
                <span>Tổng tiền: <b style="padding:0 10px;"><%= session.getAttribute("totalPrice") %></b></span>
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
