<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.fashionstore.model.Order" %>
<%@ page import="com.fashionstore.model.OrderItem" %>

<%
    Order order =
        (Order) request.getAttribute("order");

    List<OrderItem> orderItems =
        (List<OrderItem>) request.getAttribute("orderItems");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Order Details - FashionStore</title>

</head>

<body>

    <h1>Order Details</h1>

    <h2>
        Order #<%= order.getOrderId() %>
    </h2>

    <p>
        <strong>Status:</strong>
        <%= order.getOrderStatus() %>
    </p>

    <p>
        <strong>Order Date:</strong>
        <%= order.getOrderDate() %>
    </p>

    <hr>

    <h2>Order Items</h2>

    <% if (orderItems == null || orderItems.isEmpty()) { %>

        <p>No items found for this order.</p>

    <% } else { %>

        <% for (OrderItem item : orderItems) {

            double itemTotal =
                item.getPrice() * item.getQuantity();
        %>

            <div>

                <p>
                    <strong>Product ID:</strong>
                    <%= item.getProductId() %>
                </p>

                <p>
                    <strong>Size ID:</strong>
                    <%= item.getProductSizeId() %>
                </p>

                <p>
                    <strong>Price:</strong>
                    ₹<%= item.getPrice() %>
                </p>

                <p>
                    <strong>Quantity:</strong>
                    <%= item.getQuantity() %>
                </p>

                <p>
                    <strong>Item Total:</strong>
                    ₹<%= itemTotal %>
                </p>

                <hr>

            </div>

        <% } %>

    <% } %>

    <h2>
        Order Total:
        ₹<%= order.getTotalAmount() %>
    </h2>

    <br>

    <a href="<%= request.getContextPath() %>/orders">
        Back to My Orders
    </a>

    <br><br>

    <a href="<%= request.getContextPath() %>/home">
        Continue Shopping
    </a>

</body>

</html>