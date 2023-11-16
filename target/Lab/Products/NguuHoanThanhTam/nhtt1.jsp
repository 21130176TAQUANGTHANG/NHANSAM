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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">An Cung Ngưu Hoàn Bio Apgold Hộp 10 Viên - Woohwang Cheongsimwon </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://nhansamthinhphat.com/uploads/product/images/an_cung_nguu_hoan_bio_apgold_hop_10_vien_woohwang_cheongsimwon_04.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>An Cung Ngưu Hoàn Bio Apgold Hộp 10 Viên - Woohwang Cheongsimwon</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Woohwang Cheongsimwon </b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 375g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">1,850,000</b> </p>
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
            <img src="https://hanquocgiare.com/wp-content/uploads/2019/08/an-cung-nguu-hoang-hoan-bio-apgold-hop-10-vien-woohwang-cheongsimwon-8.jpg" alt="">
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hoàn Bio Apgold</b> Sản phẩm An cung ngưu hoàn Bio Apgold là
                bài thuốc quý dùng để cấp cứu và điều trị nhanh chóng đột quỵ cũng như tai biến mạch máu não, góp phần hồi phục chức
                năng bị tổn thương do di chứng tai biến mạch máu não để lại.</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hoàn Bio Apgold</b> Mang lại công dụng ích khí, dưỡng huyết, trấn kinh an thần,
                trị phong do những bệnh vì khí huyết không đầy đủ, đờm nhiệt gây tức ngực, khó thở và dẫn tới nhức đầu hoa mắt,
                di chuyển và nói năng khó khăn, trí óc thiếu tỉnh táo..</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hoàn Bio Apgold</b>Giúp phòng ngừa hiện tượng chảy máu não, phục hồi hệ thần
                kinh chức năng, tăng cường hoạt huyết và hỗ trợ chữa trị cho bệnh nhân bị rối loạn tiền đình, đau đầu,
                thiếu máu lên não, phụ nữ giai đoạn tiền mãn kinh…</p>

        </div>

        <div class="congdung">
            <b>Thành phần trong viên An cung ngưu hoàn Bio Apgold:</b>

            <p><i class="bi bi-dot"></i>Trong sản phẩm An cung ngưu hoàn Bio Apgold Hàn Quốc hộp 10 viên là những tinh hoa được điều chế từ
                những dược liệu quý hiếm từ ngàn đời nay:<br>
                <i class="bi bi-check-lg"></i>Củ Hoài sơn 282 mg.<br>
                <i class="bi bi-check-lg"></i>Nhân sâm 97 mg.<br>
                <i class="bi bi-check-lg"></i>Cam thảo 202mg.<br>
                <i class="bi bi-check-lg"></i>Thần khúc 100mg.<br>
                <i class="bi bi-check-lg"></i>Bồ hoàng 100mg.<br>
                <i class="bi bi-check-lg"></i>Phòng phong 60mg.<br>
                <i class="bi bi-check-lg"></i>Mạch môn 60mg.<br>
                <i class="bi bi-check-lg"></i>Rễ Cát cánh 50mg.<br>
                <i class="bi bi-check-lg"></i>Sài hồ 50mg.<br>
                <i class="bi bi-check-lg"></i>Quả Mơ 50mg.<br>
                <i class="bi bi-check-lg"></i>Phục linh 50mg.<br>
                <i class="bi bi-check-lg"></i>Xuyên khung 50mg.<br>
                <i class="bi bi-check-lg"></i>Ngưu hoàng 14mg.<br>
                <i class="bi bi-check-lg"></i>Linh dương giác 38mg.<br>
                <i class="bi bi-check-lg"></i>Long não 41mg.<br>
                <i class="bi bi-check-lg"></i>Gừng 30mg.<br>
                <i class="bi bi-check-lg"></i>Bạch liễm 30mg.<br>
                <i class="bi bi-check-lg"></i>mật ong, lactose, cellulose vi tinh thể, glycerin, calci panthenat vừa đủ viên.</p>
        </div>

        <div class="congdung">
            <b>Đối tượng dùng viên An cung ngưu hoàn Bio Apgold: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>
                Dùng viên An cung ngưu hoàn Bio Apgold Hàn Quốc hộp 10 viên là giải pháp bảo vệ sức
                khỏe cho người bị huyết áp thấp, biến chứng do tai biến mạch máu não, đờm ứ trệ gây
                khó thở, tê liệt cơ mặt, rối loạn ngôn ngữ…<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Người tim đập nhanh, rối loạn tiền đình, rối loạn thần kinh thực vật, suy giảm trí nhớ,
                người cao tuổi hoặc làm việc trí óc căng thẳng cũng được khuyên dùng viên An cung ngưu
                hoàn Bio Apgold Hàn Quốc hộp 10 viên.<br>
            <i class="bi bi-caret-right-square-fill"></i>
            Lưu ý: Nếu huyết áp tăng cao đột ngột thì tuyệt đối không uống An Cung Hàn Quốc.
            </p>

        </div>
        <div class="congdung">
            <b>Hướng dẫn cách dùng viên An cung ngưu hoàn Bio Apgold: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>
                Cách dùng viên An cung ngưu hoàn Bio Apgold Hàn Quốc hộp 10 viên: Nhai và uống với nước ấm.
                Liều dùng của người lớn: ngày uống 1 lần, mỗi lần 1 viên.<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Thời hạn sử dụng: 36 tháng từ ngày sản xuất. Ngày sản xuất, hạn sử dụng được in
                trên bao bì. Bảo quản nơi khô ráo, tránh ánh sáng.
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
