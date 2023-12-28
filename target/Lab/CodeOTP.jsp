<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 12/27/2023
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CodeOTP.jsp</title>
</head>
<body>
<h3>
    <i class="fa fa-lock fa-4x"></i>
</h3>
<h2 class="text-center">Enter OTP</h2>

<div class="panel-body">

    <form action="./ValidateOTP" method="post">

        <div class="form-group">
            <div class="input-group">
											<span class="input-group-addon"><i
                                                    class="glyphicon glyphicon-envelope color-blue"></i></span> <input
                    id="opt" name="otp" placeholder="Enter OTP"
                    class="form-control" type="text" required="required">
            </div>
        </div>
        <div class="form-group">
            <input name="recover-submit"
                   class="btn btn-lg btn-primary btn-block"
                   value="Reset Password" type="submit">
        </div>

        <input type="hidden" class="hide" name="token" id="token"
               value="">
    </form>
</div>
</body>
</html>
