
<html>
<head>
    <title>Title</title><meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
    <link rel="stylesheet" href="../../css/main.css">
    <link rel="stylesheet" href="../../css/product.css">
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
                    <a class="nav-link" href="#"style="color: #BF1E2E;">HỆ THỐNG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"style="color: #BF1E2E;">LIÊN HỆ</a>
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


<div class="abc" style="padding: 20px 100px; border: 1px solid aliceblue;">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../../index.jsp" style="color: black;text-decoration: none; font-size: 16px;">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="yx1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Yến Chưng Hồng Cúc Hoa Mật Ong - Hũ 100ml</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://ngochoangyen.com/wp-content/uploads/2023/10/yen-chung-hong-cuc-hoa-mat-ong-100ml.jpg" alt=""width="1200" height="668">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Yến Chưng Hồng Cúc Hoa Mật Ong - Hũ 100ml</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E"> Ngọc Hoàng Yến</b> </p>
                <p>Xuất xứ: Việt Nam</p>
                <p>Trọng lượng: 100ml</p>



                <div class="buy-item">
                    <a href="#"><i class="bi bi-cart"></i>Mua</a>
                </div>
                <div class="buy-item">
                    <a href="#"><i class="bi bi-cart"></i>add cart</a>
                    <a href="../../add-cart?id=<%= product.getId(28)%>">Thêm vào giỏ hàng</a>
                </div>
            </div>


        </div>
    </div>

    <div class="information-product-item">
        <b style="font-size: 26px; color: #BF1E2E">Chi tiết sản phẩm</b>
        <div class="congdung">
            <img src="https://samyenngochoang.com/wp-content/uploads/2020/08/Yen-chung-hu-100ml.gif" alt="">
            <p><i class="bi bi-magic"></i><b>Yến Chưng Hồng Cúc Hoa Mật Ong</b>Yến chưng đường phèn dịu mát, ngọt mà không ngán,
                hòa quyện với yến sào làm cho món ăn vừa bổ dưỡng vừa thanh đạm</p>

            <p><i class="bi bi-magic"></i><b>Yến Chưng Hồng Cúc Hoa Mật Ong</b>100% sợi yến tự nhiên, không chất phụ gia, không chất bảo quản, không chất tạo mùi</p>
            <p><i class="bi bi-magic"></i><b>Yến Chưng Hồng Cúc Hoa Mật Ong</b> Thích hợp để bồi bổ và hồi phục cơ thể sau bệnh, dưỡng thai,
                tăng cường dinh dưỡng cho trẻ em hay người lớn tuổi và là món quà biếu tặng vô cùng ý nghĩa</p>
            <p><i class="bi bi-magic"></i><b>Yến Chưng Hồng Cúc Hoa Mật Ong</b> Sản phẩm còn đạt chứng nhận vệ sinh An toàn thực phẩm
                theo công bố 168/2017/NNPTNN - TG, giấy kiểm tra chất lượng số AR17VD-036321-01.</p>
        </div>

        <div class="congdung">
            <b>Nguyên liệu</b>

            <p><i class="bi bi-dot"></i>Nguyên liệu Yến chưng hồng cúc hoa mật ong:<br>
                <i class="bi bi-check-lg"></i>100% nguồn yến Việt được khai thác từ hệ thống nhà yến của Ngọc Hoàng Yến<br>
                <i class="bi bi-check-lg"></i>Hồng hoa, Cúc hoa Trung Quốc loại thượng hạng<br>
                <i class="bi bi-check-lg"></i>Mật ong hoa cà phê<br>
                <i class="bi bi-check-lg"></i>Nước Vihawa</p>
        </div>

        <div class="congdung">
            <b>Yến chưng tươi Ngọc Hoàng Yến – Giải pháp hoàn hảo phù hợp cho mọi nhà </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Yến sào là loại thực phẩm chứa nhiều dưỡng chất đã được khoa học kiểm
                chứng và con người tin dùng qua hàng ngàn năm, dùng để bồi bổ sức khỏe, tăng cường đề kháng và bảo vệ cơ thể khỏi
                các tác nhân gây bệnh có hại.<br>
                <i class="bi bi-caret-right-square-fill"></i>Các loại yến hũ chưng sẵn được sản xuất công nghiệp có hạn dùng từ 6
                tháng đến 2 năm chứa hàm lượng tổ yến không cao, cộng thêm thành phần chất bảo quản, chất tạo đặc và hương liệu đã
                ít nhiều làm giảm đi giá trị dinh dưỡng và mất đi mùi vị vốn có đặc trưng của loại thực phẩm quý giá này.<br>
                <i class="bi bi-caret-right-square-fill"></i>Chưng yến vừa tốn công sức lại mất thời gian nên không phải ai cũng
                có có đủ điều kiện để tự chế biến. Hơn nữa, những người đang nằm bệnh viện hay ở nơi làm việc muốn ăn yến chưng
                nhưng không có dụng cụ thực hiện, thì yến hũ chưng tươi Ngọc Hoàng Yến sẽ là sự lựa chọn phù hợp nhờ sự tiện lợi
                và khả năng giao hàng nhanh chóng.</p>
        </div>

    </div>
</div>

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
    function increment() {
        var quantity = document.getElementById('quantity');
        quantity.value = parseInt(quantity.value) + 1;
    }

    function decrement() {
        var quantity = document.getElementById('quantity');
        if (parseInt(quantity.value) > 1) {
            quantity.value = parseInt(quantity.value) - 1;
        }
    }
</script>
</body>
</html>