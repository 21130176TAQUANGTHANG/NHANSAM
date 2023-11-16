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
      <li class="breadcrumb-item"><a href="yx1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Yến Chưng Hồng Hoa Đường Stevia - Hũ 200ml</a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="https://ngochoangyen.com/wp-content/uploads/2023/10/yen-chung-hong-hoa-duong-stevia-200ml.jpg" alt="">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Yến Chưng Hồng Hoa Đường Stevia - Hũ 200ml</h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E"> Ngọc Hoàng Yến</b> </p>
        <p>Xuất xứ: Việt Nam</p>
        <p>Trọng lượng: 200ml</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">200,000</b> </p>
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
      <img src="https://samyenngochoang.com/wp-content/uploads/2020/08/2_Yen-chung-tam-hoa-1024x689.jpg" alt="">
      <p><i class="bi bi-magic"></i><b>Yến Chưng Hồng Hoa Đường Stevia</b>Yến chưng đường Stevia phù hợp với
        người tiểu đường, người ăn kiêng</p>
      <p><i class="bi bi-magic"></i><b>Yến Chưng Hồng Hoa Đường Stevia</b>100% sợi yến tự nhiên, không chất phụ gia, không chất bảo quản, không chất tạo mùi</p>
      <p><i class="bi bi-magic"></i><b>Yến Chưng Hồng Hoa Đường Stevia</b> Thích hợp để bồi bổ và hồi phục cơ thể sau bệnh, dưỡng thai,
        tăng cường dinh dưỡng cho trẻ em hay người lớn tuổi và là món quà biếu tặng vô cùng ý nghĩa</p>
      <p><i class="bi bi-magic"></i><b>Yến Chưng Hồng Hoa Đường Stevia</b> Sản phẩm còn đạt chứng nhận vệ sinh An toàn thực phẩm
        theo công bố 168/2017/NNPTNN - TG, giấy kiểm tra chất lượng số AR17VD-036321-01.</p>
    </div>

    <div class="congdung">
      <b>Nguyên liệu</b>

      <p><i class="bi bi-dot"></i>Nguyên liệu Yến chưng hồng hoa đường stevia:<br>
        <i class="bi bi-check-lg"></i>100% nguồn yến Việt được khai thác từ hệ thống nhà yến của Ngọc Hoàng Yến<br>
        <i class="bi bi-check-lg"></i>Đường Stevia Mỹ hiệu Kiva đạt chứng nhận organic USDA dành cho người ăn kiêng và tiểu đường<br>
        <i class="bi bi-check-lg"></i>Hồng hoa Trung Quốc loại thượng hạng<br>
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
