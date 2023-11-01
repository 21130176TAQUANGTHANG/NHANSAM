<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <a href="index.jsp"><img src="/img/Screenshot%202023-10-19%20101211.png" alt=""></a>
        </div>

        <div class="menu">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp">TRANG CHỦ</a>
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
            <form action="">
                <label>
                    <input type="text" placeholder="Tìm kiếm" name="search">
                </label>
                <button type="submit"><i class="bi bi-search"></i></button>
            </form>
        </div>

        <div class="account">
            <div class="sign-in">
                <i class="bi bi-lock-fill"></i>
                <a href="sign-up.jsp" class="text-login">Đăng ký</a>
                <a href="login.jsp" class="text-login">Đăng nhập</a>

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
            <h2>Đăng ký</h2>
        </div>
        <form action="">
            <div class="input-box">
                <div class="input">
                    <label>
                        <input type="text" placeholder="email">
                    </label>
                </div>
                <div class="input">
                    <label>
                        <input type="password" placeholder="mật khẩu">
                    </label>
                </div>
                <div class="input">
                    <label>
                        <input type="password" placeholder="Xác nhận mật khẩu">
                    </label>
                </div><div class="input">
                <label>
                    <input type="text" placeholder="Họ & Tên">
                </label>
            </div><div class="input">
                <label>
                    <input type="text" placeholder="Địa chỉ">
                </label>
            </div><div class="input">
                <label>
                    <input type="text" placeholder="Số điện thoại">
                </label>
            </div>
            </div>
            <div class="submit">
                <button type="submit">Đăng ký</button>
            </div>
            <div class="sign_up">
                <p>Nếu đã có tài khoản</p>
                <i class="bi bi-arrow-right"></i>
                <a href="login.jsp">Đăng nhập</a>
            </div>
        </form>
    </div>


</div>

</body>
</html>
