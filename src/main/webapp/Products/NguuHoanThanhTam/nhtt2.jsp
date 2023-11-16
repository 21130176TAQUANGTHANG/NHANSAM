<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
            <a href="../../index.jsp"><img src="../../img/Screenshot%202023-10-19%20101211.png" alt=""></a>
        </div>

        <div class="menu">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="../../index.jsp">TRANG CHỦ</a>
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
                <a href="Sign_up.jsp" class="text-login">Đăng ký</a>
                <a href="Sign_in.jsp" class="text-login">Đăng nhập</a>

            </div>
        </div>
        <div class="shopping">
            <img src="../../img/shopping.png" alt="" style="width: 40px">
            <span class="quantity">0</span>
        </div>


    </div>
</header>

<div class="abc" style="padding: 20px 100px; border: 1px solid aliceblue;">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../../index.jsp" style="color: black;text-decoration: none; font-size: 16px;">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://vuhoangthanhtam.vn/uploads/images/product/2021/01/04/%E1%BA%A3nh-sp3.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">KwangDong Pharmaceutical </b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 300g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">1,900,000</b> </p>
                <label for="quantity">Số lượng: </label>
                <button class="quantity-btn" onclick="decrement()">-</button>
                <input type="number" id="quantity" name="quantity" value="1" min="1" class="quantity-input">
                <button class="quantity-btn" onclick="increment()">+</button>

                <div class="buy-item">
                    <a href="#"><i class="bi bi-cart"></i>Mua</a>
                </div>
                <div class="buy-item">
                    <a href="#"><i class="bi bi-cart"></i>add cart</a>
                </div>
            </div>


        </div>
    </div>

    <div class="information-product-item">
        <b style="font-size: 26px; color: #BF1E2E">Chi tiết sản phẩm</b>
        <div class="congdung">
            <img src="https://vuhoangthanhtam.vn/uploads/images/product/2021/01/04/vien_an_cung.jpg" alt="">
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm</b> An Cung Vũ Hoàng Thanh Tâm được bào chế với các nguyên liệu
                hoàn toàn từ tự nhiên, có tác dụng ổn định huyết áp, bồi bổ nguyên khí, hoạt huyết thông mạch, giúp cơ thể khỏe mạnh.
                Hỗ trợ làm tan các cục máu đông và làm tiêu các mảng xơ vữa, từ đó giúp tăng cường sự lưu thông máu ở cơ thể,
                làm thông thoáng các đoạn mạch hẹp</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm</b> Ngoài ra, An Cung Vũ Hoàng Thanh Tâm có tác dụng phòng ngừa đột quỵ do
                tim mạch, ổn định và điều hòa nhịp tim</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm</b>Điều trị sau tai biến mạch máu não, thiểu năng tuần hoàn não, rối loạn tiền đình
                như: rối loạn ngôn ngữ, liệt nửa người, hoa mắt, chóng mặt, tức ngực, khó thở.</p>

        </div>

        <div class="congdung">
            <b>Thành phần trong viên An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm:</b>

            <p><i class="bi bi-dot"></i>Trong sản phẩm An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm là những vị thuốc quý bao gồm:<br>
                <i class="bi bi-check-lg"></i>Nhân sâm 97mg, Hoài sơn 282mg, Đậu nành 70mg: là thành phần có tác dụng hỗ trợ điều hòa các bệnh về tim mạch, tiểu đường, huyết áp, loãng xương…).<br>
                <i class="bi bi-check-lg"></i>Bồ hoàng 100mg, Phục linh 50mg, Thần khúc 100mg: tăng cường trí nhớ tốt.<br>
                <i class="bi bi-check-lg"></i>Bạch thược 60mg: có tác dụng hạn chế tổn thương cho não bộ.<br>
                <i class="bi bi-check-lg"></i>Mạch môn 60mg, Long não 41mg: hỗ trợ chức năng lưu thông máu cho cơ thể.<br>
                <i class="bi bi-check-lg"></i>Hoàng cầm 60mg, Bạch liễm 30mg: hạn chế các cục máu đông tích tụ gây nguy hiểm.<br>
                <i class="bi bi-check-lg"></i>Đương quy 60mg, Xuyên khung 50mg: bồi dưỡng cơ thể với các dưỡng chất thiết yếu.<br>
                <i class="bi bi-check-lg"></i>Mật ong 1600mg, Phòng phong 60mg, Gừng 30mg: Hạn chế cảm lạnh cho người bệnh.<br>
                <i class="bi bi-check-lg"></i>Cát cánh 50mg, Sài hồ 50mg, Sừng linh dương 35mg: Bổ nguyên khí, hoạt huyết thông mạch.<br>
                <i class="bi bi-check-lg"></i>Các thành phần: Bạch truật 60mg, Quả mơ 50mg, Nguyên thốn hương 15mg, Quế chi 70mg, A giao 70mg, Cam thảo 202mg.<br>
                <i class="bi bi-check-lg"></i>Ngưu hoàng 14mg: có tác dụng lọc tim, thông các mạch, điều hòa gan và chữa liệt, có tác dụng thanh nhiệt giải độc, tức phong chỉ kinh, khu đàm khai khiếu.<br>
                <i class="bi bi-check-lg"></i>Phụ liệu: Glycerin, lactose, cellulose vi tinh thể, calci panthenat vừa đủ.<br>
                <i class="bi bi-check-lg"></i>Ngoài ra, còn có thành phần vàng cám lượng vừa đủ. Hình dạng viên hoàn An cung ngưu hoàng: Viên hoàn thể rắn, hình cầu, bọc vàng.</p>
        </div>

        <div class="congdung">
            <b>Đối tượng sử dụng An Cung Hàn Quốc Vũ Hoàng Thanh Tâm: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>
                Người bị huyết áp cao, biến chứng do tai biến mạch máu não như: đờm ứ trệ gây khó thở, liệt tứ chi, liệt cơ mặt, rối loạn
                ngôn ngữ --> Điều trị cao huyết áp, phòng chống đột quỵ<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Người tim đập nhanh, rối loạn thần kinh thực vật --> Lưu thông máu, hoạt huyết thông mạch.<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Người bị thiểu năng tuần hoàn não, rối loạn tiền đình, suy giảm trí nhớ --> Hoạt huyết thông mạch, phòng chống đột quỵ.<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Người cao tuổi hoặc người làm việc trí óc căng thẳng --> Phòng ngừa tai biến, phòng chống đột quỵ.<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Người có nguy cơ bị tai biến mạch máu não hoặc sau tai biến mạch máu não --> Điều trị sau tai biến, phòng chống đột quỵ.
            </p>

        </div>
        <div class="congdung">
            <b>Cách sử dụng An Cung Hàn Quốc Vũ Hoàng Thanh Tâm: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>
                02 hộp đầu: Uống 01 viên/ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Hộp thứ 03: Cách 02 ngày uống 01 viên .<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Hộp thứ 04 và 05: Cách 3-5 ngày uống 01 viên.
            </p>

        </div>
    </div>
</div>


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
