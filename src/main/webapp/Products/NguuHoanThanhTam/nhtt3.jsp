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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ 10 Viên </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://nhansamthinhphat.com/storage/product/2022-04-15/ancungnguuhanquocvuhoangthanhtamhopgo10vien-lnbnzoulcw9i.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ 10 Viên</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Cheong Sim Won </b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 375g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">2,500,000</b> </p>
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
            <img src="https://saigonsava.com/wp-content/uploads/2021/03/an-cung-nguu-vu-hoang-thanh-tam-hop-go-10-vien-1024x1024.jpg" alt="">
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ</b> An cung ngưu vũ hoàng thanh tâm hộp gỗ đã được kiểm nghiệm
                lâm sàng có tác dụng hỗ trợ điều trị hiệu quả cho các bệnh nhân bị đột quỵ, tai biến mạch máu não, nhồi máu cơ tim</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ</b> Hoạt huyết và hỗ trợ điều trị cho người bị rối loạn tiền đình,
                đau đầu, thiếu máu não, tắc động mạch vành.</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ</b>Đặc biệt dùng rất tốt cho người bị suy nhược thần kinh vì
                áp lực công việc, lao động trí óc cường độ cao và đối mặt với những biến cố trong cuộc sống.</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ</b>Phục hồi các chức năng do di chứng để lại sau khi bị tai biếm mạch máu
                não như bán thân bất toại (liệt nửa người), rối loạn chức năng diễn đạt ngôn ngữ.</p>

        </div>

        <div class="congdung">
            <b>Thành phần trong An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ:</b>

            <p><i class="bi bi-dot"></i>Trong sản phẩm An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ là những vị thuốc quý bao gồm:<br>
                <i class="bi bi-check-lg"></i> Nhân sâm 112mg.<br>
                <i class="bi bi-check-lg"></i>Cam thảo 225mg.<br>
                <i class="bi bi-check-lg"></i>Sơn dược 32mg.<br>
                <i class="bi bi-check-lg"></i>Da cừu 79mg.<br>
                <i class="bi bi-check-lg"></i>Đương quy 71mg.<br>
                <i class="bi bi-check-lg"></i>Quả mơ 72mg.<br>
                <i class="bi bi-check-lg"></i>Thược dược trắng 72mg.<br>
                <i class="bi bi-check-lg"></i>Mạch môn 72mg.<br>
                <i class="bi bi-check-lg"></i>Hoàng cầm 72mg.<br>
                <i class="bi bi-check-lg"></i>Phục linh 56mg.<br>
                <i class="bi bi-check-lg"></i>Xuyên khung 56mg.<br>
                <i class="bi bi-check-lg"></i>Ngưu hoàng 14mg.<br>
                <i class="bi bi-check-lg"></i>Nhung hươu 76mg.<br>
                <i class="bi bi-check-lg"></i>Mật ong 1650mg.<br>
                <i class="bi bi-check-lg"></i>Thần cốc 112mg.<br>
                <i class="bi bi-check-lg"></i>Thông hoàng 112mg.<br>
                <i class="bi bi-check-lg"></i>Thái hồ 56mg.<br>
                <i class="bi bi-check-lg"></i>Long não 45mg.<br>
                <i class="bi bi-check-lg"></i>Bách liêm 37mg.<br>
                <i class="bi bi-check-lg"></i>Đại đậu hoàng quyền 79mg.<br>
                <i class="bi bi-check-lg"></i>Kim bạc 0,4mg.<br>
                <i class="bi bi-check-lg"></i>Cây keo 79mg.<br>
                <i class="bi bi-check-lg"></i>Phong phong 72mg.<br>
                <i class="bi bi-check-lg"></i>Bạch truật 72mg.<br>
                <i class="bi bi-check-lg"></i>Càn cương 37mg.<br>
                <i class="bi bi-check-lg"></i>Cát cảnh 56mg.</p>
        </div>

        <div class="congdung">
            <b>Đối tượng sử dụng An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Người phải hoạt động trí óc căng thẳng, thường xuyên.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người thừa cân.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người hút thuốc lá.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người bị bệnh về đường.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người ít vận động.</p>

        </div>
        <div class="congdung">
            <b>Cách sử dụng An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Từ 8 – 15 tuổi uống 2/3 viên/ lần/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Từ 5 – 7 tuổi uống 1/2 viên/ lần/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Từ 2 – 4 tuổi uống 1/3 viên/ lần/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Dưới 1 tuổi uống 1/4 viên/ lần/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Tuyệt đối không được tự ý sử dụng liều lượng theo ý, tốt nên tham khảo thêm thông tin từ bác sĩ.</p>

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

