<%--
Created by IntelliJ IDEA.
User: thu.phan
Date: 10/11/17
Time: 11:01 AM
To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Flowers for Dreams | Activation</title>
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
<!-- //js -->
<!-- cart -->
<script src="/resources/js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="/resources/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="/resources/css/jquery.countdown.css" />
<!-- //timer -->
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
    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1 773 886 9848</li>
    <c:if test="${email == null}">
        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="/login">Login</a></li>
        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="/register">Register</a></li>
    </c:if>
    <c:if test="${email != null}">
        <li><i class="glyphicon glyphicon-user" aria-hidden="true"></i>${email}</li>
        <li><i class ="glyphicon glyphicon-log-out" aria-hidden="true"></i><a href="/logout">Logout</a></li>
    </c:if>
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
<h1><a href="/">DREAMS<span>Flowers Shop</span></a></h1>
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
            <li class="active"><a href="/" class="act">Home</a></li>
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
            <img src="images/bag.png" alt="" />
        </h3>
    </a>
    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
    <div class="clearfix"> </div>
</div>
</div>
<div class="clearfix"> </div>
</div>
</div>
</div><
<!--end of header-->
<div class ="login">
    <div class = "container">
        <c:if test="${success != null}">
            <h4 class="animated wow slideInUp" data-wow-delay=".5s">Thank you for registering with us.<span> We have already sent you an email to activate your account. Please check it!</span></h4>
            <p class="animated wow slideInUp" data-wow-delay=".5s"><a href="/login">Login Here</a> (Or) go back to <a href="/">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
        </c:if>

        <c:if test="${msg != null}">
            <h4 class="animated wow slideInUp" data-wow-delay=".5s">${msg}</h4>
            <p class="animated wow slideInUp" data-wow-delay=".5s">Click<a href="/login"> here </a>to login!</p>
        </c:if>

        <c:if test="${error != null}">
            <h4 class="animated wow slideInUp" data-wow-delay=".5s">${error}</h4>
            <p class="animated wow slideInUp" data-wow-delay=".5s"><a href="/register">Register Here</a> (Or) go back to <a href="/">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
        </c:if>
    </div>
</div>
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
<!-- //footer -->
</body>
</html>
