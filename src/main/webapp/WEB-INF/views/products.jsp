<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.fashionstore.model.Product" %>

<%
List<Product> products =
(List<Product>) request.getAttribute("products");


String keyword =
    (String) request.getAttribute("keyword");

String category =
    (String) request.getAttribute("category");

String color =
    (String) request.getAttribute("color");

String brand =
    (String) request.getAttribute("brand");

String size =
    (String) request.getAttribute("size");

String minPrice =
    (String) request.getAttribute("minPrice");

String maxPrice =
    (String) request.getAttribute("maxPrice");

String inStock =
    (String) request.getAttribute("inStock");

String sortBy =
    (String) request.getAttribute("sortBy");

String sortOrder =
    (String) request.getAttribute("sortOrder");

List<String> colors =
    (List<String>) request.getAttribute("colors");

List<String> brands =
    (List<String>) request.getAttribute("brands");


%>

<!DOCTYPE html>

<html lang="en">

<head>


<meta charset="UTF-8">

<title>Products - FashionStore</title>


</head>

<body>

<h1>FashionStore Products</h1>


<!-- Search and Filters -->

<form
    action="<%= request.getContextPath() %>/products"
    method="get">


    <!-- Search -->

    <input
        type="text"
        name="keyword"
        placeholder="Search products..."
        value="<%= keyword != null ? keyword : "" %>">


    <!-- Category -->

    <select name="category">

        <option value="">
            All Categories
        </option>

        <option value="1"
            <%= "1".equals(category) ? "selected" : "" %>>
            Men
        </option>

        <option value="2"
            <%= "2".equals(category) ? "selected" : "" %>>
            Women
        </option>

        <option value="3"
            <%= "3".equals(category) ? "selected" : "" %>>
            Kids
        </option>

        <option value="4"
            <%= "4".equals(category) ? "selected" : "" %>>
            Footwear
        </option>

        <option value="5"
            <%= "5".equals(category) ? "selected" : "" %>>
            Accessories
        </option>

    </select>


    <!-- Color -->

    <select name="color">

        <option value="">
            All Colors
        </option>

        <% if (colors != null) { %>

            <% for (String availableColor : colors) { %>

                <option
                    value="<%= availableColor %>"
                    <%= availableColor.equals(color)
                        ? "selected"
                        : "" %>>

                    <%= availableColor %>

                </option>

            <% } %>

        <% } %>

    </select>


    <!-- Brand -->

    <select name="brand">

        <option value="">
            All Brands
        </option>

        <% if (brands != null) { %>

            <% for (String availableBrand : brands) { %>

                <option
                    value="<%= availableBrand %>"
                    <%= availableBrand.equals(brand)
                        ? "selected"
                        : "" %>>

                    <%= availableBrand %>

                </option>

            <% } %>

        <% } %>

    </select>


    <!-- Size -->

    <select name="size">

        <option value="">
            All Sizes
        </option>

        <option value="XS"
            <%= "XS".equals(size) ? "selected" : "" %>>
            XS
        </option>

        <option value="S"
            <%= "S".equals(size) ? "selected" : "" %>>
            S
        </option>

        <option value="M"
            <%= "M".equals(size) ? "selected" : "" %>>
            M
        </option>

        <option value="L"
            <%= "L".equals(size) ? "selected" : "" %>>
            L
        </option>

        <option value="XL"
            <%= "XL".equals(size) ? "selected" : "" %>>
            XL
        </option>

        <option value="XXL"
            <%= "XXL".equals(size) ? "selected" : "" %>>
            XXL
        </option>

    </select>


    <!-- Minimum Price -->

    <input
        type="number"
        name="minPrice"
        placeholder="Min Price"
        min="0"
        step="0.01"
        value="<%= minPrice != null ? minPrice : "" %>">


    <!-- Maximum Price -->

    <input
        type="number"
        name="maxPrice"
        placeholder="Max Price"
        min="0"
        step="0.01"
        value="<%= maxPrice != null ? maxPrice : "" %>">






    <!-- Sort -->

    <select name="sortBy">

        <option value="">
            Sort By
        </option>

        <option value="price"
            <%= "price".equals(sortBy)
                ? "selected"
                : "" %>>
            Price
        </option>

        <option value="name"
            <%= "name".equals(sortBy)
                ? "selected"
                : "" %>>
            Name
        </option>

    </select>


    <!-- Sort Order -->

    <select name="sortOrder">

        <option value="asc"
            <%= "asc".equals(sortOrder)
                ? "selected"
                : "" %>>
            Low to High / A to Z
        </option>

        <option value="desc"
            <%= "desc".equals(sortOrder)
                ? "selected"
                : "" %>>
            High to Low / Z to A
        </option>

    </select>


    <button type="submit">
        Apply Filters
    </button>


    <a
        href="<%= request.getContextPath() %>/products">

        Clear All

    </a>

</form>


<br>


<!-- Search Message -->

<% if (keyword != null
        && !keyword.trim().isEmpty()) { %>

    <h3>
        Search results for:
        "<%= keyword %>"
    </h3>

<% } %>


<!-- Product List -->

<% if (products == null || products.isEmpty()) { %>

    <h2>
        No products found.
    </h2>

    <a
        href="<%= request.getContextPath() %>/products">

        View All Products

    </a>

<% } else { %>


    <% for (Product product : products) { %>

        <div>

            <img
                src="<%= request.getContextPath() %>/images/<%= product.getImage() %>"
                alt="<%= product.getProductName() %>"
                width="200"
                height="250">


            <h2>
                <%= product.getProductName() %>
            </h2>


            <p>
                Brand:
                <%= product.getBrand() %>
            </p>


            <p>
                Color:
                <%= product.getColor() %>
            </p>


            <p>
                Price:
                ₹<%= product.getPrice() %>
            </p>


            <a
                href="<%= request.getContextPath() %>/product?id=<%= product.getProductId() %>">

                View Details

            </a>


            <hr>

        </div>

    <% } %>

<% } %>


</body>

</html>
