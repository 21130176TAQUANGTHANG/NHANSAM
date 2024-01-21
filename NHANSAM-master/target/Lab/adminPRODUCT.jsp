<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adminPRODUCT.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css">
</head>

<style>
    .crud{
        padding: 10px;
        margin: 10px;
    }
    .addp{
        display: flex;
        justify-content: flex-end;
    }
    .addp button{
        padding: 10px;
        border-radius: 20px;
        color: white;
        background-color: green;
    }

    .popup {
        display: none;
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%); /* Để căn giữa màn hình */
        width: 60%; /* Độ rộng của popup */
        max-width: 350px; /* Độ rộng tối đa */
        background-color: rgba(0, 0, 0, 0.5);
        z-index: 1; /* Set z-index to 1 to bring it above other elements */
    }

    .popup-content {
        background-color: #fefefe;
        padding: 20px;
        border: 1px solid #888;
        width: 100%;
        box-sizing: border-box; /* Đảm bảo rằng padding không làm tăng kích thước toàn bộ popup */
    }

    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    /* Style the form elements as needed */
    #myForm label, input {
        margin-bottom: 10px;
        display: block;
        width: 300px;
    }

    .addpopop {
        display: flex;
        padding: 10px;
        justify-content: center;
    }
    .addpopop button {
        padding: 10px 20px 10px 20px;
        background-color: green;
        border-radius: 20px;
        color: white;
    }

</style>

<body>
<header>
    <% User auth = (User) session.getAttribute("auth"); %>
    <% if(auth == null){ %>
    <h1>Trang giành cho quản trị viên</h1>
    <% } else { %>
    <h1>Trang giành cho quản trị viên</h1>
    <p>Chào bạn: <%= auth.getFullname() %> </p>
    <% } %>
</header>

<nav class="admin-nav">
    <a href="index.jsp">Trang chủ</a>
    <a href="#">Biểu đồ</a>
    <a href="adminUSER.jsp">Tài khoản người dùng</a>
    <a href="adminPRODUCT.jsp">Sản phẩm</a>
</nav>

<div class="crud">
    <div class="addp">
        <button id="openPopupBtn"><i class="bi bi-plus-circle-fill"></i>Thêm sản phẩm</button>
    </div>
</div>

<%--POP UP--%>
<div id="popupForm" class="popup">
    <div class="popup-content">
        <span class="close" id="closePopupBtn">&times;</span>
        <h3 style="padding-bottom: 25px;
    border-bottom: 1px solid black;">Thêm sản phẩm</h3>

        <form action="Addproduct" method="post" id="myForm">

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="img">Image URL:</label>
            <input type="text" id="img" name="img" required>

            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" required>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" required>

            <label for="cateID">Category ID (int):</label>
            <input type="number" id="cateID" name="cateID" required>

            <div class="addpopop">
                <button type="submit" >Thêm</button>
            </div>
        </form>
    </div>
</div>

<%--POP UP--%>


<div class="card">
    <h2>User Accounts</h2>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Tên sản phẩm</th>
            <th>Hình ảnh</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <% ControllerDAO dao = new ControllerDAO();
            List<Product> list = dao.getAllProduct();
            for (Product p : list) {


        %>
        <tr>
            <td><%=p.getId()%></td>
            <td><%=p.getName()%></td>
            <td><img src="<%=p.getImage()%>"></td>
            <td><%= p.getQuantity()%></td>
            <td><%=p.getPrice()%></td>
            <td>
                <a href="Editproduct?pid=<%=p.getId()%>"><i class="bi bi-pencil-square"></i></a>
            </td>
            <td>
                <a href="DeleteProduct?pid=<%=p.getId()%>" onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?');">
                    <i class="bi bi-trash3-fill" style="color: red"></i>
                </a>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>



</body>
<script>
    // Get the popup and buttons
    var popup = document.getElementById('popupForm');
    var openBtn = document.getElementById('openPopupBtn');
    var closeBtn = document.getElementById('closePopupBtn');

    // Function to open the popup
    openBtn.onclick = function() {
        popup.style.display = 'block';
    }

    // Function to close the popup
    closeBtn.onclick = function() {
        popup.style.display = 'none';
    }

</script>


</html>