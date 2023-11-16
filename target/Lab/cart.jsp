<%@ page import="com.hcmuaf.login.User" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 11/9/2023
  Time: 2:36 PM
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
                    <a class="nav-link" href="#">SẢN PHẨM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">CART </a>
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

<section class="h-100 h-custom">
    <div class="container h-100 py-5">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">

                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col" class="h5">Sản phẩm</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Price</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>

                        <tr>
                            <td class="align-middle" style="padding-right: 50px">
                                <h3>1</h3>
                            </td>
                            <th scope="row">
                                <div class="d-flex align-items-center">
                                    <img src="img/namlinhxanh400g.png" style="width: 200px; height: 190px;" class="img-fluid rounded-3 ">
                                    <div class="flex-column ms-4">
                                        <p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g</p>
                                    </div>
                                </div>
                            </th>
                            <td class="align-middle">
                                <div class="d-flex flex-row">
                                    <button class="btn btn-link px-2"
                                            onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                        <i class="fas fa-minus"></i>
                                    </button>

                                    <input id="form1" min="0" name="quantity" value="2" type="number"
                                           class="form-control form-control-sm" style="width: 50px;" />

                                    <button class="btn btn-link px-2"
                                            onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                </div>
                            </td>
                            <td class="align-middle">
                                <p class="mb-0" style="font-weight: 500;">$9.99</p>
                            </td>
                            <td class="align-middle border-bottom-0">
                                <a href="#"><i class="bi bi-x-lg" style="color: #BF1E2E;"></i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                    <div class="card-body p-4">

                        <div class="row">
                            <div class="col-lg-4 col-xl-3">
                                <div class="d-flex justify-content-between" style="font-weight: 500;">
                                    <p class="mb-2">Subtotal</p>
                                    <p class="mb-2">$23.49</p>
                                </div>

                                <div class="d-flex justify-content-between" style="font-weight: 500;">
                                    <p class="mb-0">Shipping</p>
                                    <p class="mb-0">$2.99</p>
                                </div>

                                <hr class="my-4">

                                <div class="d-flex justify-content-between mb-4" style="font-weight: 500;">
                                    <p class="mb-2">Total (tax included)</p>
                                    <p class="mb-2">$26.48</p>
                                </div>

                                <button type="button" class="btn btn-primary btn-block btn-lg">
                                    <div class="d-flex justify-content-between">
                                        <span>Checkout</span>
                                        <span>$26.48</span>
                                    </div>
                                </button>

                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
</body>
</html>
