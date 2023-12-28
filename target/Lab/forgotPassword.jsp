<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 12/27/2023
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forgotPassword.jsp</title>
</head>
<body>

<b>---------------------------------------------------------------------------------------</b>
<form action="./forgotPassword" method="post">
    <div class="card-body">
        <div class="form-group">
            <label for="email-for-pass">Enter your email address</label> <input
                class="form-control" type="text" name="email" id="email-for-pass" required=""><small
                class="form-text text-muted">Enter the registered email address . Then we'll
            email a OTP to this address.</small>
        </div>
    </div>
    <div class="card-footer">
        <button class="btn btn-success" type="submit">Get New
            Password</button>
    </div>
</form>
</body>
</html>
