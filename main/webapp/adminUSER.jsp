<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>

<header>
    <h1>Admin Management</h1>
</header>

<nav class="admin-nav">
    <a href="index.jsp">Trang chủ</a>
    <a href="#">Dashboard</a>
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
                <th>Email</th>
                <th>Mật khẩu</th>
                <th>Họ tên</th>
                <th>Số điện thoại</th>
                <th>Địa chỉ</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <%
                ControllerDAO dao = new ControllerDAO();
                List<User> list = dao.getAllAccount();
                for (User a :list) {
            %>
            <tr>
                <td><%=a.getId()%></td>
                <td><%=a.getUsername()%></td>
                <td><%=a.getPassword()%></td>
                <td><%=a.getFullname()%></td>
                <td><%=a.getPhone()%></td>
                <td><%=a.getAddress()%></td>
                <td><a href="#"><i class="bi bi-x-lg" style="color: rgba(255,0,0,0.81);"></i></a></td>
            </tr>
           <%}%>
            </tbody>
        </table>
    </div>

</body>
</html>
