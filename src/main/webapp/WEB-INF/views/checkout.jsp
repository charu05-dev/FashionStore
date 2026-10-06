<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.fashionstore.model.User" %>
<%@ page import="com.fashionstore.model.CartItem" %>

<%
User user =
(User) request.getAttribute("user");


List<CartItem> cartItems =
    (List<CartItem>) request.getAttribute("cartItems");

Double cartTotal =
    (Double) request.getAttribute("cartTotal");


%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<title>Checkout - FashionStore</title>


</head>

<body>


<h1>Checkout</h1>


<!-- Customer Details -->

<h2>Delivery Details</h2>

<p>
    <strong>Name:</strong>
    <%= user.getName() %>
</p>

<p>
    <strong>Email:</strong>
    <%= user.getEmail() %>
</p>

<p>
    <strong>Phone:</strong>
    <%= user.getPhone() %>
</p>

<p>
    <strong>Address:</strong>
    <%= user.getAddress() %>
</p>

<p>
    <strong>City:</strong>
    <%= user.getCity() %>
</p>

<p>
    <strong>State:</strong>
    <%= user.getState() %>
</p>

<p>
    <strong>Pincode:</strong>
    <%= user.getPincode() %>
</p>


<hr>


<!-- Order Summary -->

<h2>Order Summary</h2>

<% for (CartItem item : cartItems) {

    double itemTotal =
        item.getPrice() * item.getQuantity();

%>

    <div>

        <h3>
            <%= item.getProductName() %>
        </h3>

        <p>
            Size: <%= item.getSize() %>
        </p>

        <p>
            Price: ₹<%= item.getPrice() %>
        </p>

        <p>
            Quantity: <%= item.getQuantity() %>
        </p>

        <p>
            Item Total: ₹<%= itemTotal %>
        </p>

    </div>

    <hr>

<% } %>


<h2>
    Total: ₹<%= cartTotal %>
</h2>


<!-- Place Order -->

<form
    action="<%= request.getContextPath() %>/place-order"
    method="post">

    <button type="submit">

        Place Order

    </button>

</form>


<br>

<a href="<%= request.getContextPath() %>/cart">

    Back to Cart

</a>


</body>

</html>
