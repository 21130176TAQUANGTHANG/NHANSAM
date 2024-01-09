<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
<header>
    <h1>Admin Management</h1>
</header>

<nav class="admin-nav">
    <a href="index.jsp">Trang chủ</a>
    <a href="#"> Biểu đồ bán hàng</a>
    <a href="adminUSER.jsp">Users</a>
    <a href="adminPRODUCT.jsp">Products</a>
    <a href="#">Settings</a>
</nav>

<div class="card">
    <h2>User Accounts</h2>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Tên sản phẩm</th>
            <th>Loại sản phẩm</th>
            <th>Giá</th>
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
            <td><%=p.getPrice()%></td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>
