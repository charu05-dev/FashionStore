<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
Integer orderId =
(Integer) request.getAttribute("orderId");


Double totalAmount =
    (Double) request.getAttribute("totalAmount");


%>

<!DOCTYPE html>

<html lang="en">

<head>


<meta charset="UTF-8">

<title>Order Confirmed - FashionStore</title>


</head>

<body>


<h1>Order Placed Successfully!</h1>

<h2>Thank you for shopping with FashionStore.</h2>

<p>
    Your order has been placed successfully.
</p>

<p>
    <strong>Order ID:</strong>
    <%= orderId %>
</p>

<p>
    <strong>Order Total:</strong>
    ₹<%= totalAmount %>
</p>

<br>

<a href="<%= request.getContextPath() %>/home">
    Continue Shopping
</a>

<br><br>

<a href="<%= request.getContextPath() %>/orders">
    View My Orders
</a>


</body>

</html>
