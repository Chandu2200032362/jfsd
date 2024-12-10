<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign In</title>
    <link rel="stylesheet" href="css/cLogin.css" />
</head>
<body>
    <img alt="Main" src="images/main.jpg">
    <div class="loginWindow">
        <div class="loginHeader">Admin Login</div>
        <div class="loginContent">

            <div style="display: block; padding-top: 20px;">Username*</div>
            <input type="text" id="T1" />

            <div style="display: block; padding-top: 20px;">Password*</div>
            <input type="password" id="T2" />

            <div
                style="display: block; padding-top: 10px; padding-bottom: 10px; text-align: right">
                <label style="color: blue; cursor: pointer">Forgot Password</label>
            </div>

            <button class="signinButton" onClick="signIn()">Sign In</button>

            <div style="display: block; height: 80px;line-height:12px">
                <label id="ack"></label>
            </div>
           
    </div>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
    function signIn() {
        // Get input values
        var username = T1.value.trim();
        var password = T2.value.trim();

        // Validate credentials
        if (username === "admin" && password === "admin") {
            // Redirect to adminhome.html
            location.replace("adminhome.jsp");
        } else {
            // Show error message for invalid credentials
            ack.style.color = "red";
            ack.innerHTML = "Invalid Credentials";
        }
    }

    function signUp() {
        location.href = "/cSignUp.jsp";
    }
</script>
</html>
