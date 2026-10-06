<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.fashionstore.model.Order" %>

<%
    List<Order> orders =
        (List<Order>) request.getAttribute("orders");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>My Orders - FashionStore</title>

</head>

<body>

    <h1>My Orders</h1>

    <% if (orders == null || orders.isEmpty()) { %>

        <h2>You have no orders yet.</h2>

        <a href="<%= request.getContextPath() %>/home">
            Continue Shopping
        </a>

    <% } else { %>

        <% for (Order order : orders) { %>

            <div>

                <h2>
                    Order #<%= order.getOrderId() %>
                </h2>

                <p>
                    <strong>Total:</strong>
                    ₹<%= order.getTotalAmount() %>
                </p>

                <p>
                    <strong>Status:</strong>
                    <%= order.getOrderStatus() %>
                </p>

                <p>
                    <strong>Order Date:</strong>
                    <%= order.getOrderDate() %>
                </p>

                <a href="<%= request.getContextPath() %>/order-details?orderId=<%= order.getOrderId() %>">
                    View Order Details
                </a>

                <hr>

            </div>

        <% } %>

    <% } %>

    <br>

    <a href="<%= request.getContextPath() %>/home">
        Continue Shopping
    </a>

</body>

</html>