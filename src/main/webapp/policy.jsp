<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Category" %>
<%@ page import="java.util.List" %>
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
<div class="abc" style="padding: 20px 100px; border: 1px solid aliceblue;">
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="../../index.jsp" style="color: black;text-decoration: none; font-size: 16px;">Trang chủ</a></li>
        <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Chính sách đổi trả</a></li>
    </ol>
</nav>
</div>

<div class="policy">
    <p style="padding:20px 50px; font-size: 16px"> <i class="bi bi-caret-right-fill"></i>Quý khách khi mua hàng tại web chúng tôi hoàn toàn có thể an tâm về chất lượng sản phẩm mà mình nhận được. Chúng tôi cam kết tất cả các sản phẩm được gửi đến quý khách hàng đều là sản phẩm nguyên mới,
        chất lượng, đúng với thông tin mô tả trên website.<br>
        <i class="bi bi-caret-right-fill"></i> Trường hợp quý khách nhận được sản phẩm không đúng với mô tả trên website hoặc không còn ưng ý với sản phẩm đã đặt, quý khách hoàn toàn có thể mang sản phẩm đến cửa hàng của chúng tôi hoặc gửi sản phẩm lại để đổi sang sản phẩm khác trong vòng 2 ngày kể từ thời điểm nhận hàng.<br>
        <i class="bi bi-caret-right-fill"></i> Nhân sâm Thịnh Phát cam kết bán hàng nguyên mới và đảm bảo đúng chất lượng, sản phẩm mà khách hàng nhận được phải nguyên vẹn và
        đúng với các thông tin mô tả trên website.<br>
        <i class="bi bi-caret-right-fill"></i> Nếu Quý khách nhận được sản phẩm không đúng với cam kết trên,không ưng ý, Quý khách vui lòng mang sản phẩm đến cửa hàng hoặc gửi sản phẩm trong vòng 02 ngày kể từ thời điểm nhận hàng. Chúng tôi xin từ chơi hỗ trợ mọi khiếu nại về tình trạng ngoại quan của sản phẩm trong trường hợp Quý khách thông báo cho Nhân sâm Thịnh Phát sau thời gian này.
    </p>
    <br>
    <p style="padding:20px 50px; font-size: 16px">
        <b style="color: #BF1E2E">1. Chính sách đổi hàng</b><br>
        <i class="bi bi-chevron-compact-right"></i> Sản phẩm được đổi 1 lần duy nhất trong vòng 2 ngày kể từ ngày nhận hàng.<br>
        <i class="bi bi-chevron-compact-right"></i> Sản phẩm đổi phải có giá bằng hoặc cao hơn giá sản phẩm đã mua. Khách hàng sẽ không được hoàn lại tiền thừa nếu sản phẩm đổi có giá
        thấp hơn sản phẩm đã mua.<br>
        <i class="bi bi-chevron-compact-right"></i> Với các sản phẩm khuyến mãi, sản phẩm thanh lý...  không áp dụng chính sách đổi hàng theo nhu cầu của khách hàng nếu sản phẩm không bị lỗi do nhà sản xuất.<br>
        <i class="bi bi-chevron-compact-right"></i> Trường hợp sản phẩm được đặt trong thời gian diễn ra chương trình khuyến mãi, quý khách vui lòng đổi sản phẩm trong thời gian chương
        trình để được áp dụng mức giá ưu đãi.<br>
        <b style="color: #BF1E2E;">2. Hướng dẫn đổi sản phẩm</b><br>
        <i class="bi bi-dot"></i> <b style="color: #BF1E2E">Cách 1:</b> Đổi sản phẩm trực tiếp tại cửa hàng<br>
        <i class="bi bi-chevron-compact-right"></i> Khách hàng có nhu cầu đổi lại sản phẩm đã mua tại website, có thể mang sản phẩm kèm theo vận đơn đến cửa hàng để thực hiện việc đổi trả:<br>
        — Nhân sâm Thịnh Phát - 853 Nguyễn Kiệm, Phường 3, Quận Gò Vấp, Tp.HCM.<br>
        <i class="bi bi-exclamation-lg" style="color: #BF1E2E"></i> Lưu ý: Trong trường hợp muốn đổi một sản phẩm cùng loại, Quý khách nên liên hệ trước với chúng tôi qua số Hotline
        0907799988 để được tư vấn.<br>
        <i class="bi bi-dot"></i> <b style="color: #BF1E2E">Cách 2:</b> Gửi đổi sản phẩm qua đường bưu điện<br>
        <i class="bi bi-chevron-compact-right"></i> Khách hàng ở những khu vực không có cửa hàng nội bộ của Nhân sâm Thịnh Phát hoặc sản phẩm quý khách muốn đổi không có ở cửa hàng, khi có nhu cầu đổi sản phẩm đã mua tại website www.nhansamthinhphat.com quý khách vui lòng gửi sản phẩm, vận đơn kèm theo, hóa đơn giá trị gia tăng (nếu có) và quà tặng khuyến mãi kèm theo (nếu có) về địa chỉ: Cửa hàng Nhân sâm Thịnh Phát: 853 Nguyễn Kiệm, Phường 3, Quận Gò Vấp, Tp.HCM.<br>
        <i class="bi bi-chevron-compact-right"></i> Trên bưu phẩm ghi rõ "Đổi hàng E-commerce". Khách hàng chịu trách nhiệm về trạng thái nguyên vẹn của sản phẩm khi gửi về của hàng chúng tôi. Sau khi nhận được sản phẩm chúng tôi sẽ tiến hàng kiểm tra chất lượng (quá trình này mất khoảng từ 2 - 3 ngày). Nhân sâm Thịnh Phát sẽ thông báo kết hàng cho khách hàng qua điện thoại và tin nhắn sau khi việc kiểm tra hoàn tất.<br>
        <b style="color: #BF1E2E;">3. Điều khoản và điều kiện đổi hàng</b><br>
        <i class="bi bi-chevron-compact-right"></i> Vui lòng đọc kỹ Điều kiện đối hàng. Yêu cầu đối hàng được xem là hợp lệ nếu thỏa mãn đầy đủ các điều kiện sau:<br>
        <i class="bi bi-chevron-compact-right"></i> Sản phẩm chưa qua sử dụng, không bị dơ bẩn.<br>
        <i class="bi bi-chevron-compact-right"></i> Sản phẩm được đối phải được gửi kèm theo vận đơn được bỏ kèm trong kiện hàng (còn nguyên vẹn).<br>
        <i class="bi bi-chevron-compact-right"></i> Sản phẩm còn trong thời hạn hiệu lực cho phép đổi hàng (02 ngày kể từ thời điểm nhận hàng).<br>

        <b style="color: #BF1E2E;">4. Phí đổi hàng</b><br>
        <i class="bi bi-chevron-compact-right"></i> Nhân sâm Thịnh Phát miễn phí đổi hàng cho khách hàng khi mua sắm tại Nhân sâm Thịnh Phát trong trường hợp sản phẩm bị lỗi sản xuất, bị trầy xước, móp méo khi vận chuyển, giao nhầm.<br>
        <b style="color: #BF1E2E;">5. Chính sách hoàn tiền</b><br>
        <i class="bi bi-chevron-compact-right"></i> Nhân Sâm Thịnh Phát sẽ hoàn tiền cho quý khách khi đảm bảo các điều kiện đổi trả ở trên. Quý khách nhận tiền mặt tài Showrom địa chỉ: 853 Nguyễn Kiệm, phường 3, quận Gò Vấp, TP.HCM hoặc cung cấp số tài khoản ngân hàng để chúng tôi chuyển khoản hoàn tiền lại cho quý khách.<br>
        <i class="bi bi-fast-forward-fill"></i> Chúng tôi hân hạnh được phục vụ quý khách tốt nhất và hài lòng nhất. Trân trọng cảm ơn.
    </p>
</div>
<footer style="background-color: #BF1E2E;">
    <div class="footer" style="display: flex;
    justify-content: space-around;
    align-items: center;">
        <div class="footer-category">
            <ul style="list-style: none; padding: 30px">
                <%
                    ControllerDAO dao = new ControllerDAO();
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
</body>
</html>
