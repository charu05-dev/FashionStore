<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>


<meta charset="UTF-8">

<title>Login - FashionStore</title>

<style>

    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
    }

    .login-container {
        width: 400px;
        margin: 80px auto;
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
    }

    .form-group {
        margin-bottom: 18px;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
    }

    input {
        width: 100%;
        padding: 11px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    .login-btn {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 5px;
        background-color: #222;
        color: white;
        font-size: 16px;
        cursor: pointer;
        margin-top: 5px;
    }

    .login-btn:hover {
        background-color: #444;
    }

    .error {
        background-color: #ffe5e5;
        color: #c00;
        padding: 10px;
        border-radius: 5px;
        margin-bottom: 15px;
        text-align: center;
    }

    .register-link {
        text-align: center;
        margin-top: 20px;
    }

    .register-link a {
        color: #222;
        font-weight: bold;
        text-decoration: none;
    }

</style>


</head>

<body>

<div class="login-container">

<h2>Login</h2>


<% String error = (String) request.getAttribute("error"); %>

<% if (error != null) { %>

    <div class="error">
        <%= error %>
    </div>

<% } %>


<form action="<%= request.getContextPath() %>/login"
      method="post">


    <div class="form-group">

        <label>Email</label>

        <input type="email"
               name="email"
               required>

    </div>


    <div class="form-group">

        <label>Password</label>

        <input type="password"
               name="password"
               required>

    </div>


    <button type="submit"
            class="login-btn">

        Login

    </button>

</form>


<div class="register-link">

    Don't have an account?

    <a href="<%= request.getContextPath() %>/register">
        Create Account
    </a>

</div>


</div>

</body>
</html>
