<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.Product.ProductItem" %>
<%@ page import="com.hcmuaf.login.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>JSP - Hello World</title>
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
                    <a class="nav-link" aria-current="page" href="index.jsp">TRANG CHỦ</a>
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


<!--<div class="introduce">-->
<!--    <div id="carouselExampleIndicators" class="carousel slide">-->
<!--        <div class="carousel-indicators">-->
<!--            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>-->
<!--            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>-->
<!--            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>-->
<!--        </div>-->
<!--        <div class="carousel-inner">-->
<!--            <div class="carousel-item active">-->
<!--                <img src="/img/a%20(1).png" class="d-block w-100" alt="...">-->
<!--            </div>-->
<!--            <div class="carousel-item">-->
<!--                <img src="/img/a%20(2).png" class="d-block w-100" alt="...">-->
<!--            </div>-->
<!--            <div class="carousel-item">-->
<!--                <img src="/img/a%20(3).png" class="d-block w-100" alt="...">-->
<!--            </div>-->
<!--        </div>-->
<!--        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">-->
<!--            <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
<!--            <span class="visually-hidden">Previous</span>-->
<!--        </button>-->
<!--        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">-->
<!--            <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
<!--            <span class="visually-hidden">Next</span>-->
<!--        </button>-->
<!--    </div>-->
<!--</div>-->


<div class="product">
    <ul class="menu-product">
        <% List<Category> categoryList = new ControllerDAO().getAllCategory();
            for (Category c:categoryList) {

            %>
        <li class="item-product activee">
            <a class="content-item" href="category?id=<%=c.getId()%>%>"><%=c.getProductName()%></a>
            <i class="bi bi-chevron-down"></i>
        </li>

        <%}%>
    </ul>
</div>

<%--<%--%>
<%--    List<ProductItem>productList= new LoginDAO().getAllProduct();--%>
<%--    for(ProductItem product :productList){--%>

<%--%>--%>

<div class="tab_content">
    <div class="product-container" id="menu_1">
    <%
        ControllerDAO dao = new ControllerDAO();
        List<ProductItem> listP = dao.getAllProduct();
        request.setAttribute("listP", listP);
    %>
<% for(ProductItem product:listP){

%>

        <!-- nấm lim xanh -->
        <div class="product-ite">
            <img src="<%=product.getImage()%>" alt="">
            <a href="Products/Namlimxanh/sp1.jsp"><p><%=product.getName()%></p></a>
            <div class="buy">
                <p><%=product.getPrice()%></p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <%}%>
    </div>
</div>


<%--<script src="https://code.jquery.com/jquery-3.7.1.js" ></script>--%>

<%--<script>--%>
<%--    $(document).ready(function (){--%>
<%--        $('.product-container').hide();--%>
<%--        $('.product-container:first-child').fadeIn();--%>
<%--        $('.menu-product li').click(function (){--%>
<%--            $('.menu-product li').removeClass('activee');--%>
<%--            $(this).addClass('activee');--%>

<%--            //show tab-content--%>
<%--            let id_tab_content=$(this).children('a').attr('href');--%>
<%--            $('.product-container').hide();--%>
<%--            $(id_tab_content).fadeIn();--%>
<%--            return false;--%>

<%--        });--%>
<%--    });--%>

<%--</script>--%>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<!--jquery-->
</body>
</html>
