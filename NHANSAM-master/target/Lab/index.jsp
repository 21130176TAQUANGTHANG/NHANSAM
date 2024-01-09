<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">

</head>
<style>

    .direction{
        text-align: center;
    }
    .direction button{
        font-family: cursive;
        font-weight: bold;
        background-color: #ffffff44;
        border:none;
        width:50px;
        height:50px;
        border-radius: 50%;
        transition: 0.5s;
        margin:0 10px;
    }
    .direction button:hover{
        background-color: #ffffff;
    }
    .item{
        border-radius: 15px;
        width:300px;
        height:380px;
        overflow: hidden;
        transition: 0.5s;
        margin:10px;
        scroll-snap-align: start;
    }
    .item .content table td{
        padding:10px 0;
        border-bottom: 1px solid #AEC0CE;
    }
    .item .content table td:nth-child(2){
        text-align: right;
    }
    .item .nameGroup{
        text-align: center;
        border-bottom:none!important;
    }
    #list{
        display: flex;
        width:max-content;
    }
    #formList{
        width:1280px;
        max-width: 100%;
        overflow: auto;
        margin:10px auto 0px;
        scroll-behavior: smooth;
        scroll-snap-type: both;
    }
    #formList::-webkit-scrollbar{
        display: none;
    }
    @media screen and (max-width: 1024px){
        .item{
            width: calc(33.3vw - 20px);
        }
        .direction{
            display: none;
        }
    }
    @media screen and (max-width: 768px){
        .item{
            width: calc(50vw - 20px);
        }
        .direction{
            display: none;
        }
    }

</style>
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
<%-------------------------------Card Slider--------------------------------%>
<h2 style="text-align: center;
    color: red;">Sản phẩm bán chạy</h2>
<div id="formList">
    <div id="list">
        <div class="item">
            <div class="product-ite" style="width: auto">
                <img src="https://kgin.com.vn/wp-content/uploads/2023/08/vien-sam-lc-dtht-1.jpg" alt="Mô tả hình ảnh" width="200" height="190">
                <a href="Products/DongTrungHaThao/dtht3.jsp"><p>Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</p></a>
                <div class="buy">
                    <p>1,100,000</p>
                    <button type="button" class="btn-ginseng">Mua</button>
                </div>
            </div>
        </div>
        <div class="item">

            <div class="product-ite" style="width: auto">
                <img src="https://sinai.vn/media/product/156/2617.jpg" alt="Mô tả hình ảnh" width="200" height="190">
                <a href="Products/HongSam/hs6.jsp"><p>Trà Hồng Sâm Buleebang Hàn Quốc 3g x 100 Gói</p></a>
                <div class="buy">
                    <p>340,000</p>
                    <button type="button" class="btn-ginseng">Mua</button>
                </div>

            </div>
        </div>
        <div class="item">

            <div class="product-ite" style="width: auto">
                <img src="img/namlinhxanh400g.png" alt="">
                <a href="Products/Namlimxanh/sp1.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </p></a>
                <div class="buy">
                    <p>4.000.000 VND</p>
                    <button type="button" class="btn-ginseng">Mua</button>
                </div>
            </div>

        </div>
        <div class="item">

            <div class="product-ite" style="width: auto">
                <img src="https://kgin.com.vn/wp-content/uploads/2021/09/kgin-cao-linh-chi-dtht-dai-dien-2.jpg" alt="Mô tả hình ảnh" width="200" height="190">
                <a href="Products/DongTrungHaThao/dtht4.jsp"><p>Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</p></a>
                <div class="buy">
                    <p>850,000</p>
                    <button type="button" class="btn-ginseng">Mua</button>
                </div>

            </div>
        </div>

        <div class="item">
            <div class="product-ite">
                <img src="https://samyenngochoang.com/wp-content/uploads/2020/08/Yen-chung-hu-100ml.gif" alt="Mô tả hình ảnh" width="200" height="190">
                <a href="Products/Yenxao/yx6.jsp"><p>Yến Chưng Hồng Hoa Cúc Táo Đỏ Đường Stevia- Hũ 100ml </p></a>
                <div class="buy">
                    <p>110,000</p>
                    <button type="button" class="btn-ginseng">Mua</button>
                </div>
            </div>
        </div>

        <div class="item">

            <div class="product-ite" style="width: auto">
                <img src="https://kgin.com.vn/wp-content/uploads/2022/07/nam-dong-trung-1.jpg" alt="Mô tả hình ảnh" width="213" height="190">
                <a href="Products/DongTrungHaThao/dtht1.jsp"><p>Nấm Đông Trùng Hạ Thảo Hàn Quốc 100G Sấy khô </p></a>
                <div class="buy">
                    <p>2,000,000</p>
                    <button type="button" class="btn-ginseng">Mua</button>
                </div>
            </div>

        </div>
        <div class="item">

            <div class="product-ite" style="width: auto">
                <img src="https://japana.vn/uploads/product/2022/05/18/1652855345-bo-gan-matsukiyo-turmeric-loc-6-chai-x-100ml-0.jpg" alt="Mô tả hình ảnh" width="200" height="190">
                <a href="Products/NuocBoGan/nbg4.jsp"><p>Nước Uống Tinh Chất Nghệ Bổ Gan Matsukiyo Turmeric (Lốc 6 Chai x 100ml) </p></a>
                <div class="buy">
                    <p>490,000</p>
                    <button type="button" class="btn-ginseng">Mua</button>
                </div>
            </div>

        </div>
        <div class="item">
            <div class="product-ite">
                <img src="img/namlinhxanh2bich.png" alt="">
                <a href="Products/Namlimxanh/sp5.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại 2 bịch 0,5kg </p></a>
                <div class="buy">
                    <p>1.750.000 VND</p>
                    <button type="button" class="btn-ginseng">Mua</button>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="direction">
    <button id="prev"> < </button>
    <button id="next"> > </button>
</div>

<script>
    document.getElementById('next').onclick = function(){
        const widthItem = document.querySelector('.item').offsetWidth;
        document.getElementById('formList').scrollLeft += widthItem;
    }
    document.getElementById('prev').onclick = function(){
        const widthItem = document.querySelector('.item').offsetWidth;
        document.getElementById('formList').scrollLeft -= widthItem;
    }
</script>
<%-------------------------------Card Slider--------------------------------%>


<div class="product">
    <ul class="menu-product">
        <li class="item-product activee">
            <a class="content-item" href="#menu_1">Nâm lim xanh</a>
            <i class="bi bi-chevron-down"></i>
        </li>
        <li class="item-product">
            <a class="content-item" href="#menu_2">Đông trùng hạ thảo</a>
            <i class="bi bi-chevron-down"></i>
        </li>
        <li class="item-product">
            <a class="content-item" href="#menu_3">Hồng sâm</a>
            <i class="bi bi-chevron-down"></i>
        </li>
        <li class="item-product">
            <a class="content-item" href="#menu_4">Nấm linh chi</a>
            <i class="bi bi-chevron-down"></i>
        </li>
        <li class="item-product">
            <a class="content-item" href="#menu_5">Yến xào</a>
            <i class="bi bi-chevron-down"></i>
        </li>
        <li class="item-product">
            <a class="content-item" href="#menu_6">Ngưu hoàn Thanh Tâm</a>
            <i class="bi bi-chevron-down"></i>
        </li>
        <li class="item-product">
            <a class="content-item" href="#menu_7">Nước uống bổ gan</a>
            <i class="bi bi-chevron-down"></i>
        </li>
    </ul>
</div>


<div class="tab_content">

    <div class="product-container" id="menu_1">
        <!-- nấm lim xanh -->
        <div class="product-ite">
            <img src="img/namlinhxanh400g.png" alt="">
            <a href="Products/Namlimxanh/sp1.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </p></a>
            <div class="buy">
                <p>4.000.000 VND</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="img/namlinhxanh400g.png" alt="">
            <a href="Products/Namlimxanh/sp2.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 800g</p></a>
            <p class="sale">-5%</p>
            <div class="buy">
                <p>7.600.000 VND</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="img/namlinhxanhn0.5kg.png" alt="">
            <a href="Products/Namlimxanh/sp3.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại 1 - 0,5kg</p></a>
            <div class="buy">
                <p>2.450.000 VND</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="img/namlinhxanhn0.5kg.png" alt="">
            <a href="Products/Namlimxanh/sp4.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại 1 - 1kg</p></a>
            <p class="sale">-4%</p>
            <div class="buy">
                <p>4.700.000 VND</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="img/namlinhxanh2bich.png" alt="">
            <a href="Products/Namlimxanh/sp5.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại 2 bịch 0,5kg </p></a>
            <div class="buy">
                <p>1.750.000 VND</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>

        <div class="product-ite">
            <img src="img/namlinhxanh2bich.png" alt="">
            <a href="Products/Namlimxanh/sp6.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại 2 bịch 1kg </p></a>
            <p class="sale">-5%</p>
            <div class="buy">
                <p>3.400.000 VND</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
    </div>
    <!-- Đông trùng hạ thảo -->
    <div class="product-container" id="menu_2">
        <div class="product-ite">
            <img src="https://kgin.com.vn/wp-content/uploads/2022/07/nam-dong-trung-1.jpg" alt="Mô tả hình ảnh" width="213" height="190">
            <a href="Products/DongTrungHaThao/dtht1.jsp"><p>Nấm Đông Trùng Hạ Thảo Hàn Quốc 100G Sấy khô </p></a>
            <div class="buy">
                <p>2,000,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://kgin.com.vn/wp-content/uploads/2022/05/dt-go-den-1.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/DongTrungHaThao/dtht2.jsp"><p>Nước Đông Trùng Hạ Thảo Hàn Quốc Hộp Gỗ 60 Gói</p></a>
            <div class="buy">
                <p>1,750,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://kgin.com.vn/wp-content/uploads/2023/08/vien-sam-lc-dtht-1.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/DongTrungHaThao/dtht3.jsp"><p>Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</p></a>
            <div class="buy">
                <p>1,100,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://kgin.com.vn/wp-content/uploads/2021/09/kgin-cao-linh-chi-dtht-dai-dien-2.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/DongTrungHaThao/dtht4.jsp"><p>Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</p></a>
            <div class="buy">
                <p>850,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://vhpginseng.com/wp-content/uploads/2018/08/%C4%90%C3%B4ng-tr%C3%B9ng-h%E1%BA%A1-th%E1%BA%A3o-chi%E1%BA%BFt-xu%E1%BA%A5t-20-%E1%BB%91ng-Bio-science-4.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/DongTrungHaThao/dtht5.jsp"><p>Chất Chiết Đông Trùng Hạ Thảo Hộp 20 Ống Bio-science</p></a>
            <div class="buy">
                <p>1,200,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="http://hongsamhanquoc.net/Upload/Store/Default/2022/8/26/dong-trung-tay-tang-1.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/DongTrungHaThao/dtht6.jsp"><p>Đông Trùng Hạ Thảo nguyên con loại 1 hộp gỗ 10g</p></a>
            <div class="buy">
                <p>11,000,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
    </div>
    <!--    Hông sâm-->
    <div class="product-container" id="menu_3">
        <div class="product-ite">
            <img src="https://linhchihoanggia.com/data/Product/1682572709.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/HongSam/hs1.jsp"><p>Hồng Sâm Tẩm Mật Ong Hàn Quốc 6 Năm Tuổi ACHIMMADANG 300G </p></a>
            <div class="buy">
                <p>1,100,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://laza.vn/storage/product/2020-04-17/nuoc-hong-sam-linh-chi-tao-do-han-quoc-hop-30-goi-x-80ml-acgygwysyxqb-600x600.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/HongSam/hs2.jsp"><p>Nước Hồng Sâm Linh Chi Táo Đỏ Hàn Quốc Hộp 30 Gói x 80ml</p></a>
            <div class="buy">
                <p>750,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://nhansamthinhphat.com/storage/product/2022-04-08/hacsamcukho300ghopthiecchinhhangdaedonghanquoc-mlwsmwvqefo3.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/HongSam/hs3.jsp"><p>Hắc Sâm Củ Khô Daedong Hàn Quốc 300G Hộp Thiếc</p></a>
            <div class="buy">
                <p>7,200,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://cheongkwanjang.com.vn/wp-content/uploads/2021/11/nuoc-hong-sam-vital-tonic-hwal-gi-ruk-10.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/HongSam/hs4.jsp"><p>Nước Hồng Sâm Tăng Lực Vital Tonic KGC Hộp 10 Ống</p></a>
            <div class="buy">
                <p>940,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://laza.vn/storage/product/2020-04-24/10a-bg4kkwbdjn6w-600x600.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/HongSam/hs5.jsp"><p>Viên Cao Hồng Sâm KGC Cheong Kwan Jang Hàn Quốc Hộp 2 Lọ x 168G</p></a>
            <div class="buy">
                <p>2,700,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://sinai.vn/media/product/156/2617.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/HongSam/hs6.jsp"><p>Trà Hồng Sâm Buleebang Hàn Quốc 3g x 100 Gói</p></a>
            <div class="buy">
                <p>340,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
    </div>

    <!-- Nấm linh chi-->
    <div class="product-container" id="menu_4">
        <div class="product-ite">
            <img src="https://samyenngochoang.com/wp-content/uploads/2020/03/3_Nam-Linh-Chi-Thuong-Hoang-Han-Quoc-Cao-Cap-Goi-1-kg.jpg" alt="Mô tả hình ảnh" width="200" height="210">
            <a href="Products/NamLinhChi/nlc1.jsp"><p>Nấm Linh Chi Thượng Hoàng Hàn Quốc Cao Cấp Gói 1 Kg </p></a>
            <div class="buy">
                <p>3,800,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://www.linhchivn.com/wp-content/uploads/2023/06/fuji-do-1-1000.jpg" alt="Mô tả hình ảnh" width="200" height="210">
            <a href="Products/NamLinhChi/nlc2.jsp"><p>Nấm Linh Chi Fuji Đỏ Nguyên Tai Nhật Bản Gói 500G </p></a>
            <div class="buy">
                <p>1,249,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://samyenanhquan.com.vn/wp-content/uploads/2023/12/caohshopgo2lo1.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NamLinhChi/nlc3.jsp"><p>Cao Hồng Sâm Linh Chi ACHIMMADANG Hộp Gỗ 2 Hủ x 500G</p></a>
            <div class="buy">
                <p>2,100,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://kgin.com.vn/wp-content/uploads/2021/09/nam-linh-chi-nui-1.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NamLinhChi/nlc4.jsp"><p>Nấm Linh Chi Núi Đá Vàng Hàn Quốc Túi 1 Kg</p></a>
            <div class="buy">
                <p>2,300,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="data:image/jpeg;base64,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" alt="Mô tả hình ảnh" width="225" height="225">
            <a href="Products/NamLinhChi/nlc5.jsp"><p>Nấm Linh Chi Đỏ Hàn Quốc Loại 1 Cắt Lát Sẵn 1KG</p></a>
            <div class="buy">
                <p>3,000,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://linhchihoanggia.com/data/Product/1685085680.jpg" alt="Mô tả hình ảnh" width="200" height="225">
            <a href="Products/NamLinhChi/nlc6.jsp"><p>Nấm Linh Chi Đỏ Việt Nam Hoàng Gia 500G Nguyên Tai</p></a>
            <div class="buy">
                <p>450,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
    </div>

    <div class="product-container" id="menu_5">
        <div class="product-ite">
            <img src="https://ngochoangyen.com/wp-content/uploads/2023/04/yen-tho-con-long-100-g-12-14-to-1.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/Yenxao/yx1.jsp"><p>Yến Thô Còn Lông Ngọc Hoàng Yến Hộp 100g (12-14 Tổ) </p></a>
            <div class="buy">
                <p>2,900,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://samyenngochoang.com/wp-content/uploads/2020/07/rut-long-100g-scaled.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/Yenxao/yx2.jsp"><p>Yến Rút Lông Ngọc Hoàng Yến Hộp 100g (13-14 Tổ) </p></a>
            <div class="buy">
                <p>4,200,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://samyenngochoang.com/wp-content/uploads/2020/07/1_Yen-tuoi-Ngoc-Hoang-Yen.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/Yenxao/yx3.jsp"><p>Yến Tươi Rút Lông Ngọc Hoàng Yến Hộp 5 Túi 100g </p></a>
            <div class="buy">
                <p>700,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://ngochoangyen.com/wp-content/uploads/2023/10/yen-chung-hong-cuc-hoa-mat-ong-100ml.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/Yenxao/yx4.jsp"><p>Yến Chưng Hồng Cúc Hoa Mật Ong - Hũ 100ml </p></a>
            <div class="buy">
                <p>110,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://ngochoangyen.com/wp-content/uploads/2023/10/yen-chung-hong-hoa-duong-stevia-200ml.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/Yenxao/yx5.jsp"><p>Yến Chưng Hồng Hoa Đường Stevia - Hũ 200ml </p></a>
            <div class="buy">
                <p>200,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://samyenngochoang.com/wp-content/uploads/2020/08/Yen-chung-hu-100ml.gif" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/Yenxao/yx6.jsp"><p>Yến Chưng Hồng Hoa Cúc Táo Đỏ Đường Stevia- Hũ 100ml </p></a>
            <div class="buy">
                <p>110,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
    </div>

    <div class="product-container" id="menu_6">
        <div class="product-ite">
            <img src="https://nhansamthinhphat.com/uploads/product/images/an_cung_nguu_hoan_bio_apgold_hop_10_vien_woohwang_cheongsimwon_04.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NguuHoanThanhTam/nhtt1.jsp"><p>An Cung Ngưu Hoàn Bio Apgold Hộp 10 Viên - Woohwang Cheongsimwon </p></a>
            <div class="buy">
                <p>1,850,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://vuhoangthanhtam.vn/uploads/images/product/2021/01/04/%E1%BA%A3nh-sp3.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NguuHoanThanhTam/nhtt2.jsp"><p>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm</p></a>
            <div class="buy">
                <p>1,900,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://nhansamthinhphat.com/storage/product/2022-04-15/ancungnguuhanquocvuhoangthanhtamhopgo10vien-lnbnzoulcw9i.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NguuHoanThanhTam/nhtt3.jsp"><p>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ 10 Viên</p></a>
            <div class="buy">
                <p>2,500,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://product.hstatic.net/1000391837/product/ebae2696ece3e05d357229e2559c96a3_49bc9e1bad8b4463bbc2e6847af6bfc2_master.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NguuHoanThanhTam/nhtt4.jsp"><p>An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não Hộp Gỗ 60 Viên</p></a>
            <div class="buy">
                <p>1,500,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
    </div>
    <!--Nước uống Bổ Gan-->
    <div class="product-container" id="menu_7">
        <div class="product-ite">
            <img src="http://hongsamhanquoc.net/Upload/Store/Default/2021/4/28/bo-gan-pngi-hshq.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NuocBoGan/nbg1.jsp"><p>Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc 1 Chai </p></a>
            <div class="buy">
                <p>550,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://www.hangngoainhap.com.vn/images/202208/goods_img/3822-p2-1659672924.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NuocBoGan/nbg2.jsp"><p>Thực Phẩm Chức Năng Nước Uống Bổ Gan Hepalyse II Nhật Bản 10 Chai x 50ml  </p></a>
            <div class="buy">
                <p>600,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://aloola.vn/1_html/img/product/thum/1474108273_nuoc-uong-bo-gan-Hovenia%20Dulcis%20Thunberg-5.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NuocBoGan/nbg3.jsp"><p>Nước Uống Bổ Gan Hovenia Dulcis Thunberg Hộp 30 Gói </p></a>
            <div class="buy">
                <p>650,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
        <div class="product-ite">
            <img src="https://japana.vn/uploads/product/2022/05/18/1652855345-bo-gan-matsukiyo-turmeric-loc-6-chai-x-100ml-0.jpg" alt="Mô tả hình ảnh" width="200" height="190">
            <a href="Products/NuocBoGan/nbg4.jsp"><p>Nước Uống Tinh Chất Nghệ Bổ Gan Matsukiyo Turmeric (Lốc 6 Chai x 100ml) </p></a>
            <div class="buy">
                <p>490,000</p>
                <button type="button" class="btn-ginseng">Mua</button>
            </div>
        </div>
    </div>
</div>

<footer style="background-color: #BF1E2E;">
    <div class="footer" style="display: flex;
    justify-content: space-around;
    align-items: center;">
        <div class="footer-category">
            <ul style="list-style: none; padding: 30px">
                <%ControllerDAO dao = new ControllerDAO();
                    List<Category> list = dao.getNAMECategory();
                    for (Category p: list) {
                %>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none"><%=p.getName()%></a></li>
                <% }%>

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

<script src="https://code.jquery.com/jquery-3.7.1.js" ></script>

<script>
    $(document).ready(function (){
        $('.product-container').hide();
        $('.product-container:first-child').fadeIn();
        $('.menu-product li').click(function (){
            $('.menu-product li').removeClass('activee');
            $(this).addClass('activee');

            //show tab-content
            let id_tab_content=$(this).children('a').attr('href');
            $('.product-container').hide();
            $(id_tab_content).fadeIn();
            return false;

        });
    });

</script>
<!-- Add this script to your HTML file -->

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>