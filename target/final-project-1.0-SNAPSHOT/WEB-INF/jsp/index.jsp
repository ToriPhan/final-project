<!--
Author: Anh Thu and Ngoc Thanh

-->

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Flowers for Dreams</title>
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
                            <c:forEach var="cate" items="${category}">
                                <c:if test="${cate.cateId == 1}">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">${cate.cateName}<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
											<ul class="multi-column-dropdown">
												<li><a href="products.jsp">${cate.name}</a></li>
											</ul>
                                <div class="clearfix"></div>
								</ul>
							</li>
                                </c:if>

                                <c:if test="${cate.cateId == 2}">
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">${cate.cateName}<b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <ul class="multi-column-dropdown">
                                                <li><a href="products.jsp">${cate.name}</a></li>
                                            </ul>
                                            <div class="clearfix"></div>
                                        </ul>
                                    </li>
                                </c:if>

                                <c:if test="${cate.cateId == 3}">
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">${cate.cateName}<b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <ul class="multi-column-dropdown">
                                                <li><a href="products.jsp">${cate.name}</a></li>
                                            </ul>
                                            <div class="clearfix"></div>
                                        </ul>
                                    </li>
                                </c:if>
                            </c:forEach>
							<li><a href="mail.html">Mail Us</a></li>
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
<!-- banner -->
	<div class="banner">
<!-- //banner -->
		<div class="container">
			<div class="banner-info animated wow zoomIn animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
				<h3>Flowers for Dreams</h3>
				<h4>Up to <span>50% <i>Off/-</i></span></h4>
				<div class="wmuSlider example1" style="overflow: hidden; height: 123px;">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Birthdays</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Love & Romance</p>
								</div>
							</div>
						</article>
						<article style="position: relative; width: 100%; opacity: 1;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Engagement + Wedding</p>
								</div>
							</div>
						</article>
					</div>
				<ul class="wmuSliderPagination"><li><a href="#" class="">0</a></li><li><a href="#" class="">1</a></li><li><a href="#" class="wmuActive">2</a></li></ul></div>
					<script src="/resources/js/jquery.wmuSlider.js"></script>
					<script>
						$('.example1').wmuSlider();         
					</script> 
			</div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- collections -->
	<div class="new-collections">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">New & Beautiful Flowers</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Our selection of new & beautiful flowers is always changing to reflect the most seasonal,
			stylish bouquets and gifts. So if you are looking for trendy just something truly unique, look no further.</p>

			<div class="new-collections-grids">
            <c:forEach var="product" items="${products}">
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
										<img src="images/2.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
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
<!-- //collections -->
<!-- new-timer -->
	<div class="timer">
		<div class="container">
			<div class="timer-grids">
				<div class="col-md-8 timer-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<h3><a href="products.jsp">100 Blooms of Floral-Fetti</a></h3>
					<div class="rating">
						<div class="rating-left">
							<img src="images/2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="images/2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="images/2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="images/2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="images/1.png" alt=" " class="img-responsive" />
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="new-collections-grid1-left simpleCart_shelfItem timer-grid-left-price">
						<p><i>$580</i> <span class="item_price">$550</span></p>
						<h4>Need to describe.</h4>
						<p><a class="item_add timer_add" href="#">add to cart </a></p>
					</div>
					<div id="counter"> </div>
					<script src="/resources/js/jquery.countdown.js"></script>
					<script src="/resources/js/script.js"></script>
				</div>
				<div class="col-md-4 timer-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<div class="timer-grid-right1">
						<img src="/resources/images/newflowers/NF08-100 Blooms of Floral-Fetti.jpg" alt=" " class="img-responsive" />
						<div class="timer-grid-right-pos">
							<h4>Special Offer</h4>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //new-timer -->
<!-- collections-bottom -->
	<div class="collections-bottom">
		<div class="container">
			<div class="collections-bottom-grids">
				<div class="collections-bottom-grid animated wow slideInLeft" data-wow-delay=".5s">
					<h3>45% Offer For <span>Wedding & Engagement</span></h3>
				</div>
			</div>
			<div class="newsletter animated wow slideInUp" data-wow-delay=".5s">
				<h3>Newsletter</h3>
				<p>Join us now to get all news and special offers.</p>
				<form>
					<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					<input type="email" value="Enter your email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email address';}" required="">
					<input type="submit" value="Join Us" >
				</form>
			</div>
		</div>
	</div>
<!-- //collections-bottom -->
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