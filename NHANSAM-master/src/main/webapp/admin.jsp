<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="javax.naming.ldap.Control" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/admin.css">

</head>
<body>

<header>
    <h1>Chào mừng đến trang admin</h1>
</header>

<nav class="admin-nav">
    <a href="index.jsp">Trang chủ</a>
    <a href="#">Dashboard</a>
    <a href="adminUSER.jsp">Users</a>
    <a href="adminPRODUCT.jsp">Products</a>
    <a href="#">Settings</a>
</nav>

<section>
    <div class="card">
        <h2>Total Users</h2>
        <p>50</p>
    </div>

    <div class="card">
        <h2>Total Products</h2>
        <p>100</p>
    </div>

    <!-- Add more cards for different sections as needed -->

</section>

<footer>
    &copy; 2023 Admin Management
</footer>

</body>
</html>
