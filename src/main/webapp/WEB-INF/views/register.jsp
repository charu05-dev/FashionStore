<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>


<meta charset="UTF-8">

<title>Create Account - FashionStore</title>

<style>

    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
    }

    .register-container {
        width: 500px;
        margin: 50px auto;
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
        margin-bottom: 15px;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
    }

    input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    .register-btn {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 5px;
        background-color: #222;
        color: white;
        font-size: 16px;
        cursor: pointer;
        margin-top: 10px;
    }

    .register-btn:hover {
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

    .login-link {
        text-align: center;
        margin-top: 20px;
    }

    .login-link a {
        color: #222;
        font-weight: bold;
        text-decoration: none;
    }

</style>


</head>

<body>

<div class="register-container">

<h2>Create Account</h2>


<% String error = (String) request.getAttribute("error"); %>

<% if (error != null) { %>

    <div class="error">
        <%= error %>
    </div>

<% } %>


<form action="<%= request.getContextPath() %>/register"
      method="post">


    <div class="form-group">

        <label>Name</label>

        <input type="text"
               name="name"
               required>

    </div>


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


    <div class="form-group">

        <label>Phone</label>

        <input type="text"
               name="phone"
               required>

    </div>


    <div class="form-group">

        <label>Address</label>

        <input type="text"
               name="address"
               required>

    </div>


    <div class="form-group">

        <label>City</label>

        <input type="text"
               name="city"
               required>

    </div>


    <div class="form-group">

        <label>State</label>

        <input type="text"
               name="state"
               required>

    </div>


    <div class="form-group">

        <label>Pincode</label>

        <input type="text"
               name="pincode"
               required>

    </div>


    <button type="submit"
            class="register-btn">

        Register

    </button>

</form>


<div class="login-link">

    Already have an account?

    <a href="<%= request.getContextPath() %>/login">
        Login
    </a>

</div>


</div>

</body>
</html>
