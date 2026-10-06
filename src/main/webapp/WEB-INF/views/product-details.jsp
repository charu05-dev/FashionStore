<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.fashionstore.model.Product" %>
<%@ page import="com.fashionstore.model.ProductSize" %>

<%
    Product product = (Product) request.getAttribute("product");

    List<ProductSize> sizes =
        (List<ProductSize>) request.getAttribute("sizes");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>
        <%= product.getProductName() %> - FashionStore
    </title>

    <style>

        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }

        .product-container {
            display: flex;
            gap: 40px;
            max-width: 900px;
            margin: auto;
        }

        .product-image {
            width: 400px;
            height: 450px;
            object-fit: cover;
        }

        .product-info {
            padding: 20px;
        }

        .product-name {
            font-size: 32px;
            margin-bottom: 10px;
        }

        .brand {
            color: #666;
            font-size: 18px;
        }

        .price {
            font-size: 25px;
            font-weight: bold;
            margin: 20px 0;
        }

        .size-title {
            font-weight: bold;
            margin-top: 25px;
        }

        .sizes {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }

        .size {
            border: 1px solid #333;
            padding: 10px 18px;
            cursor: pointer;
        }

        .size:hover {
            background-color: #333;
            color: white;
        }

        .quantity {
            margin-top: 20px;
        }

        .quantity input {
            width: 60px;
            padding: 8px;
        }

        .add-cart-btn {
            margin-top: 20px;
            padding: 12px 25px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .add-cart-btn:hover {
            background-color: #555;
        }

    </style>

</head>

<body>

    <h1>Product Details</h1>

    <div class="product-container">

        <!-- Product Image -->
        <div>

            <img
                src="<%= request.getContextPath() %>/images/<%= product.getImage() %>"
                alt="<%= product.getProductName() %>"
                class="product-image">

        </div>


        <!-- Product Information -->
        <div class="product-info">

            <h2 class="product-name">
                <%= product.getProductName() %>
            </h2>


            <p class="brand">
                <strong>Brand:</strong>
                <%= product.getBrand() %>
            </p>


            <p class="price">
                ₹<%= product.getPrice() %>
            </p>


            <p>
                <strong>Color:</strong>
                <%= product.getColor() %>
            </p>


            <p>
                <strong>Description:</strong>
                <%= product.getDescription() %>
            </p>


            <!-- Add To Cart Form -->

            <form
                action="<%= request.getContextPath() %>/add-to-cart"
                method="post">


                <!-- Product ID -->

                <input
                    type="hidden"
                    name="productId"
                    value="<%= product.getProductId() %>">


                <!-- Size -->

                <p class="size-title">
                    Select Size:
                </p>


                <div class="sizes">

                    <% if (sizes != null && !sizes.isEmpty()) { %>

                        <% for (ProductSize size : sizes) { %>

                            <label class="size">

                                <input
                                    type="radio"
                                    name="productSizeId"
                                    value="<%= size.getProductSizeId() %>"
                                    required>

                                <%= size.getSize() %>

                            </label>

                        <% } %>

                    <% } else { %>

                        <p>No sizes available.</p>

                    <% } %>

                </div>


                <!-- Quantity -->

                <div class="quantity">

                    <label>
                        <strong>Quantity:</strong>

                        <input
                            type="number"
                            name="quantity"
                            value="1"
                            min="1"
                            required>

                    </label>

                </div>


                <!-- Add To Cart Button -->

                <button
                    type="submit"
                    class="add-cart-btn">

                    Add to Cart

                </button>

            </form>

        </div>

    </div>

</body>

</html>