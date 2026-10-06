<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>FashionStore - Home</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/CSS/home.css">

</head>

<body>

    <%@ include file="partials/navbar.jsp" %>


    <!-- Hero section -->

    <main>

        <section class="hero">

            <div class="container">

                <div class="hero-content">

                    <div class="hero-text">

                        <p class="hero-eyebrow">
                            Welcome to FashionStore
                        </p>

                        <h1 class="hero-title">
                            Find Your
                            <br>
                            Perfect Style.
                        </h1>

                        <p class="hero-description">
                            Explore our latest collection of fashion,
                            footwear, and accessories made for your style.
                        </p>

                        <a href="${pageContext.request.contextPath}/products"
                           class="hero-button">
                            Shop Now
                        </a>

                    </div>


                    <div class="hero-image">

                        <img src="${pageContext.request.contextPath}/images/hero.jpg"
                             alt="Fashion collection">

                    </div>

                </div>

            </div>

        </section>


        <!-- Categories -->

        <section class="categories">

            <div class="container">

                <div class="section-header">

                    <h2>
                        Shop by Category
                    </h2>

                    <p>
                        Find something that matches your style.
                    </p>

                </div>


                <div class="category-grid">

                    <a href="${pageContext.request.contextPath}/products"
                       class="category-card">
                        Men
                    </a>

                    <a href="${pageContext.request.contextPath}/products"
                       class="category-card">
                        Women
                    </a>

                    <a href="${pageContext.request.contextPath}/products"
                       class="category-card">
                        Kids
                    </a>

                    <a href="${pageContext.request.contextPath}/products"
                       class="category-card">
                        Footwear
                    </a>

                    <a href="${pageContext.request.contextPath}/products"
                       class="category-card">
                        Accessories
                    </a>

                </div>

            </div>

        </section>


        <!-- Featured products -->

        <section class="featured-products">

            <div class="container">

                <div class="section-header">

                    <h2>
                        Featured Products
                    </h2>

                    <p>
                        Explore some of our popular picks.
                    </p>

                </div>


                <div class="product-grid">


                    <article class="product-card">

                        <div class="product-image">

                            <img src="${pageContext.request.contextPath}/images/product1.jpg"
                                 alt="Classic T-Shirt">

                        </div>

                        <div class="product-info">

                            <p class="product-brand">
                                Nike
                            </p>

                            <h3 class="product-name">
                                Classic T-Shirt
                            </h3>

                            <p class="product-price">
                                ₹999
                            </p>

                        </div>

                    </article>


                    <article class="product-card">

                        <div class="product-image">

                            <img src="${pageContext.request.contextPath}/images/product2.jpg"
                                 alt="Casual Jeans">

                        </div>

                        <div class="product-info">

                            <p class="product-brand">
                                Levi's
                            </p>

                            <h3 class="product-name">
                                Casual Jeans
                            </h3>

                            <p class="product-price">
                                ₹1,499
                            </p>

                        </div>

                    </article>


                    <article class="product-card">

                        <div class="product-image">

                            <img src="${pageContext.request.contextPath}/images/product3.jpg"
                                 alt="Running Shoes">

                        </div>

                        <div class="product-info">

                            <p class="product-brand">
                                Puma
                            </p>

                            <h3 class="product-name">
                                Running Shoes
                            </h3>

                            <p class="product-price">
                                ₹2,499
                            </p>

                        </div>

                    </article>


                    <article class="product-card">

                        <div class="product-image">

                            <img src="${pageContext.request.contextPath}/images/product4.jpg"
                                 alt="Sports Jacket">

                        </div>

                        <div class="product-info">

                            <p class="product-brand">
                                Adidas
                            </p>

                            <h3 class="product-name">
                                Sports Jacket
                            </h3>

                            <p class="product-price">
                                ₹2,999
                            </p>

                        </div>

                    </article>


                </div>

            </div>

        </section>

    </main>


    <%@ include file="partials/footer.jsp" %>


    <script src="${pageContext.request.contextPath}/js/home.js"></script>

</body>

</html>