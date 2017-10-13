<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Flowers for Dreams | Flowers</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/jquery.twbsPagination.min.js"/>
    <!-- //js -->
    <!-- cart -->
    <script src="/resources/js/simpleCart.min.js"> </script>
    <!-- cart -->
    <link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">
    <!-- for bootstrap working -->
    <script type="text/javascript" src="/resources/js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- animation-effect -->
    <link href="/resources/css/animate.min.css" rel="stylesheet">
    <script src="/resources/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
</head>

<body>
<!-- header -->
<div class="header">
    <div class="container">
        <div class="header-grid">
            <div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1 773 <span>886</span> 9848</li>
                    <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="/login">Login</a></li>
                    <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="/register">Register</a></li>
                </ul>
            </div>
            <div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <ul class="social-icons">
                    <li><a href="#" class="facebook"></a></li>
                    <li><a href="#" class="twitter"></a></li>
                    <li><a href="#" class="g"></a></li>
                    <li><a href="#" class="instagram"></a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="logo-nav">
            <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
                <h1><a href="/">DREAMS <span>Flowers Shop</span></a></h1>
            </div>
            <div class="logo-nav-left1">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li><a href="/">Home</a></li>
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${category1[0].cateName}<b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <c:forEach var="cate" items="${category1}">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="/category?id=${cate.id}">${cate.name}</a></li>
                                        </ul>
                                    </c:forEach>
                                    <div class="clearfix"></div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${category2[0].cateName}<b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <c:forEach var="cate" items="${category2}">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="/category?id=${cate.id}">${cate.name}</a></li>
                                        </ul>
                                    </c:forEach>
                                    <div class="clearfix"></div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${category3[0].cateName}<b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <c:forEach var="cate" items="${category3}">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="/category?id=${cate.id}">${cate.name}</a></li>
                                        </ul>
                                    </c:forEach>
                                    <div class="clearfix"></div>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form>
                            <input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
                            <input class="sb-search-submit" type="submit" value="">
                            <span class="sb-icon-search"> </span>
                        </form>
                    </div>
                </div>
                <!-- search-scripts -->
                <script src="/resources/js/classie.js"></script>
                <script src="/resources/js/uisearch.js"></script>
                <script>
                    new UISearch( document.getElementById( 'sb-search' ) );
                </script>
                <!-- //search-scripts -->
            </div>
            <div class="header-right">
                <div class="cart box_1">
                    <a href="checkout.html">
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
                            <img src="/resources/images/bag.png" alt="" />
                        </h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //header -->
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">${productList[0].category.name}</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!--products-->
<div class="products">
    <div class="container">
        <div class = "col-md-4 products-left">
            <div class="new-products animated wow slideInUp" data-wow-delay=".5s">
                <h3>New Flowers</h3>
                <div class="new-products-grids">
                    <c:forEach var="product" items="${newProducts}">
                        <div class="new-products-grid">
                            <div class="new-products-grid-left">
                                <a href="/detail?id=${product.id}"><img src="/resources/images/newflowers/${product.photoList[0].path}" alt=" " class="img-responsive" /></a>
                            </div>
                            <div class="new-products-grid-right">
                                <h4><a href="/detail?id=${product.id}">${product.name}</a></h4>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="/resources/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="/resources/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="/resources/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="/resources/images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src=/resources/"images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                    <p> <span class="item_price">$${product.price}</span><a class="item_add" href="#">add to cart </a></p>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="men-position animated wow slideInUp" data-wow-delay=".5s">
                <a href="single.html"><img src="/resources/images/4.jpg" alt=" " class="img-responsive" /></a>
                <div class="men-position-pos">
                    <h4>Summer collection</h4>
                    <h5><span>55%</span> Flat Discount</h5>
                </div>
            </div>
        </div>
        <div class="col-md-8 products-right">
            <div class="products-right-grids-bottom">
                <div class="new-collections-grids">
                    <c:forEach var="product" items="${productList}">
                        <div class="col-md-4 new-collections-grid">
                            <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                                <div class="new-collections-grid1-image">
                                    <a href="/detail?id=${product.id}" class="product-image"><img src="/resources/images/newflowers/${product.photoList[0].path}" alt=" " class="img-responsive" /></a>
                                    <div class="new-collections-grid1-image-pos">
                                        <a href="/detail?id=${product.id}">Quick View</a>
                                    </div>
                                    <div class="new-collections-grid1-right">
                                        <div class="rating">
                                            <div class="rating-left">
                                                <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                            </div>
                                            <div class="rating-left">
                                                <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                            </div>
                                            <div class="rating-left">
                                                <img src="/resources/images/2.png" alt=" " class="img-responsive" />
                                            </div>
                                            <div class="rating-left">
                                                <img src="/resources/images/1.png" alt=" " class="img-responsive" />
                                            </div>
                                            <div class="rating-left">
                                                <img src="/resources/images/1.png" alt=" " class="img-responsive" />
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                <h4><a href="/detail?id=${product.id}">${product.name}</a></h4>
                                <div class="new-collections-grid1-left simpleCart_shelfItem">
                                    <p><span class="item_price">$${product.price}</span><a class="item_add" href="#">add to cart </a></p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <nav class="numbering animated wow slideInRight" data-wow-delay=".5s">
            <ul class="pagination paging"></ul>
        </nav>
    </div>
    <div class="clearfix"> </div>
</div>
<!-- //products -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-6 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>About Us</h3>
                <p>Create a "wow" moment with our flowers and gifts this holiday season.<span>Whether it is a thoughtful bouquet of birthday flowers or romantic anniversary flowers, we know fresh flowers and plants leave a lasting impression.</span></p>
            </div>
            <div class="col-md-6 footer-grid animated wow slideInLeft" data-wow-delay=".6s">
                <h3>Contact Info</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>5th N Michigan Avenue, <span>Chicago, IL 60630.</span></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1 773 886 9848</li>
                </ul>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
        <h2><a href="/">DREAMS <span>flowers shop</span></a></h2>
    </div>
    <div class="copy-right animated wow slideInUp" data-wow-delay=".5s">
        <p>&copy 2017 Dreams Flowers Shop. All rights reserved | Design by <a href="http://w3layouts.com/">Thanh Thu</a></p>
    </div>
</div>
<!-- //footer -->>

<script type="text/javascript">
    $(function () {
        window.pagObj = $('.pagination').twbsPagination({
            totalPages: 3,
            visiblePages: 2
        }).on('page', function (event, page) {
            $.ajax({
                type : "POST",
                contentType : "application/json",
                url : "/category/page?id=1&page=" + page,
                //data : comment,
                timeout : 100000,
                success : function(data) {
                    display(data);
                }
            });
        });

        function display(data) {
            $(".col-md-4.new-collections-grid").html(data);
        }
    });
</script>

</body>
</html>