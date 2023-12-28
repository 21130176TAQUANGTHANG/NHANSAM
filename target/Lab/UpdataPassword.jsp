<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 12/27/2023
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UpdataPassword.jsp</title>
</head>
<body>
<form action="NewPassword" method="post">
    <!-- User Name Input -->
    <div class="form-group row justify-content-center px-3">
        <div class="col-9 px-0">
            <input type="text" name="password" placeholder="&#xf084; &nbsp; New Password"
                   class="form-control border-info placeicon">
        </div>
    </div>
    <!-- Password Input -->
    <div class="form-group row justify-content-center px-3">
        <div class="col-9 px-0">
            <input type="password" name="confPassword"
                   placeholder="&#xf084; &nbsp; Confirm New Password"
                   class="form-control border-info placeicon">
        </div>
    </div>

    <!-- Log in Button -->
    <div class="form-group row justify-content-center">
        <div class="col-3 px-3 mt-3">
            <input type="submit" value="Reset"
                   class="btn btn-block btn-info">
        </div>
    </div>
</form>
</body>
</html>
