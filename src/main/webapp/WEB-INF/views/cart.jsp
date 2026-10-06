<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.fashionstore.model.CartItem" %>

<%
List<CartItem> cartItems =
(List<CartItem>) request.getAttribute("cartItems");


double cartTotal = 0;


%>

<!DOCTYPE html>

<html lang="en">

<head>


<meta charset="UTF-8">

<title>Shopping Cart - FashionStore</title>


</head>

<body>


<h1>Your Shopping Cart</h1>

<% if (cartItems == null || cartItems.isEmpty()) { %>

    <h2>Your cart is empty.</h2>

    <a href="<%= request.getContextPath() %>/home">

        Continue Shopping

    </a>

<% } else { %>

    <% for (CartItem item : cartItems) {

        double itemTotal =
            item.getPrice() * item.getQuantity();

        cartTotal += itemTotal;

    %>

        <div>

            <h2>

                <%= item.getProductName() %>

            </h2>

            <p>

                Price: ₹<%= item.getPrice() %>

            </p>

            <p>

                Size: <%= item.getSize() %>

            </p>

            <p>

                Item Total: ₹<%= itemTotal %>

            </p>


            <!-- Decrease Quantity -->

            <form
                action="<%= request.getContextPath() %>/update-cart"
                method="post"
                style="display:inline;">

                <input
                    type="hidden"
                    name="cartItemId"
                    value="<%= item.getCartItemId() %>">

                <input
                    type="hidden"
                    name="action"
                    value="decrease">

                <button type="submit">−</button>

            </form>


            <strong>

                <%= item.getQuantity() %>

            </strong>


            <!-- Increase Quantity -->

            <form
                action="<%= request.getContextPath() %>/update-cart"
                method="post"
                style="display:inline;">

                <input
                    type="hidden"
                    name="cartItemId"
                    value="<%= item.getCartItemId() %>">

                <input
                    type="hidden"
                    name="action"
                    value="increase">

                <button type="submit">+</button>

            </form>


            <!-- Remove Item -->

            <form
                action="<%= request.getContextPath() %>/update-cart"
                method="post"
                style="display:inline;">

                <input
                    type="hidden"
                    name="cartItemId"
                    value="<%= item.getCartItemId() %>">

                <input
                    type="hidden"
                    name="action"
                    value="remove">

                <button type="submit">

                    Remove

                </button>

            </form>

            <hr>

    <% } %>


    <h2>

        Cart Total: ₹<%= cartTotal %>

    </h2>


    <!-- Continue Shopping -->

    <a href="<%= request.getContextPath() %>/home">

        Continue Shopping

    </a>


    <br>
    <br>


    <!-- Proceed to Checkout -->

    <a href="<%= request.getContextPath() %>/checkout">

        <button type="button">

            Proceed to Checkout

        </button>

    </a>

<% } %>


</body>

</html>
