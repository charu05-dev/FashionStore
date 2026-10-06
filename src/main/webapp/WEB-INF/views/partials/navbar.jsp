<header class="navbar">


<div class="navbar-container">

    <!-- FashionStore Logo -->

    <a href="${pageContext.request.contextPath}/products"
       class="logo">

        FashionStore

    </a>


    <!-- Search Box -->

    <div class="search-box">

        <input type="text"
               placeholder="Search products..."
               name="keyword">

        <button type="button">

            Search

        </button>

    </div>


    <!-- Navigation Links -->

    <nav class="nav-links">

        <a href="${pageContext.request.contextPath}/products">

            Products

        </a>


        <%
            Object loggedInUser =
                    session.getAttribute("loggedInUser");

            if (loggedInUser != null) {
        %>

            <a href="${pageContext.request.contextPath}/logout">

                Logout

            </a>

        <%
            } else {
        %>

            <a href="${pageContext.request.contextPath}/login">

                Login

            </a>

        <%
            }
        %>


        <a href="${pageContext.request.contextPath}/cart"
           class="cart-link">

            Cart

        </a>

    </nav>

</div>


</header>
