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
      <li class="breadcrumb-item"><a href="yx1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Yến Tươi Rút Lông Ngọc Hoàng Yến Hộp 5 Túi 100g</a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="https://samyenngochoang.com/wp-content/uploads/2020/07/1_Yen-tuoi-Ngoc-Hoang-Yen.jpg" alt="">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Yến Tươi Rút Lông Ngọc Hoàng Yến Hộp 5 Túi 100g</h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E"> Ngọc Hoàng Yến</b> </p>
        <p>Xuất xứ: Việt Nam</p>
        <p>Trọng lượng: 100g</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">700,000</b> </p>
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
      <img src="https://samyenngochoang.com/wp-content/uploads/2020/07/7_Yen-tuoi-Ngoc-Hoang-Yen-1024x689.jpg" alt="">
      <p><i class="bi bi-magic"></i><b>Yến Tươi Rút Lông</b>Yến tươi là yến khô còn lông được nhặt sạch thủ công nhưng chưa được
      làm khô bằng quạt và do đó phải bảo quản tươi ở nhiệt độ đông (0°C) và dùng ngay trong vòng 1 tháng.</p>

      <p><i class="bi bi-magic"></i><b>Yến Tươi Rút Lông</b>Yến tươi Ngọc Hoàng Yến được đóng gói hút chân không, mỗi túi nặng 20g (đủ cho 1 lần dùng ở người lớn)</p>
      p><i class="bi bi-magic"></i><b>Yến Rút Lông</b> Sản phẩm còn đạt chứng nhận vệ sinh An toàn thực phẩm
      theo công bố 168/2017/NNPTNN - TG, giấy kiểm tra chất lượng số AR17VD-036321-01.</p>
    </div>

    <div class="congdung">
      <b>Hướng dẫn sử dụng</b>

      <p><i class="bi bi-dot"></i>Cách chế biến Yến tươi rút lông:<br>
        <i class="bi bi-check-lg"></i>Đối với yến tươi, liều lượng cho mỗi lần dùng ở người lớn là khoảng 20g, nên khi chế biến cho
        1 người dùng thì chưng mỗi lần 1 túi (20g yến tươi).<br>
        <i class="bi bi-check-lg"></i>Rã đông yến tươi trong ngăn mát tủ lạnh hoặc ở nhiệt độ thường<br>
        <i class="bi bi-check-lg"></i>Cho yến vào chén, thêm nước trắng hoặc nước dừa vào vừa đủ. Chưng cách thủy trong 20- 25 phút.<br>
        <i class="bi bi-check-lg"></i>Cho đường phèn với nước vào nồi, đun đến khi đường tan hoàn toàn.<br>
        <i class="bi bi-check-lg"></i>Gừng xắt lát mỏng.<br>
        <i class="bi bi-check-lg"></i>Hạt chia ngâm với nước cho nở hoàn toàn.<br>
        <i class="bi bi-check-lg"></i>Nấu chín hạt sen, táo tàu, câu ký tử (nên nấu riêng từng món).<br>
        <i class="bi bi-check-lg"></i>Thêm 2 lát gừng vô tô yến đang chưng.<br>
        <i class="bi bi-check-lg"></i>Tùy món có thể thêm, hạt chia, hạt sen, nhãn nhục, táo tàu, câu kỷ tử. Tiếp tục chưng thêm 3-5 phút nữa.<br>
        <i class="bi bi-check-lg"></i>Không nên cho đường và các nguyên liệu như hạt sen, táo tàu, nhãn nhục, câu kỷ tử vào chén yến để chưng ngay từ đầu
        vì sẽ làm sợi yến không nở bung hết.</p>
    </div>

    <div class="congdung">
      <b>Cách dùng: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Yến sau khi chưng có thể dùng ngay được hoặc bảo quản trong ngăn mát tủ lạnh
        trong 5 ngày. Khi ăn có thể dùng lạnh hoặc hâm nóng đều được.<br>
        <i class="bi bi-caret-right-square-fill"></i>Thời điểm ăn yến sào là lúc bụng đói vào buổi sáng hoặc buổi tối trước khi đi
        ngủ để dưỡng chất được hấp thụ hoàn toàn.</p>
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
