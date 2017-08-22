<!DOCTYPE html>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Approved</title>
<meta name="author" content="">
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="icon" href="include/images/favicon.png" sizes="32x32" />

<link href="include/css/bootstrap.css" rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href="include/css/ionicons.min.css" rel="stylesheet"
	type="text/css">
<link href="include/css/slick.css" rel="stylesheet" type="text/css">
<link href="include/css/animate.css" rel="stylesheet" type="text/css">
<link href="include/css/animsition.min.css" rel="stylesheet"
	type="text/css">
<link href="include/css/magnific-popup.css" rel="stylesheet"
	type="text/css">
<link href="include/css/style.css" rel="stylesheet" type="text/css">

<script src="include/js/modernizr-custom.js"></script>
<!-- ajax -->


<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div class="animsition">
		<!-- nav start -->
		<button class="action action--open" aria-label="Open Menu">
			<span class="icon icon--menu"></span>
		</button>
		<nav id="ml-menu" class="menu">
			<button class="action action--close" aria-label="Close Menu">
				<span class="icon icon--cross"></span>
			</button>
			<div class="menu__wrap">
				<ul data-menu="main" class="menu__level">
					<c:forEach var="ingredient" items="${ingredientCategoriesList}">
					<p id="p1">
						<li class="menu__item"><a
							class="menu__link menu__link--current" data-submenu="submenu-1" href="#"> ${ingredient.igct_name}</a></li>
					</p>
					</c:forEach>
					<!-- 
        <li class="menu__item"><a class="menu__link" data-submenu="submenu-3" href="#">과일</a></li>
        <li class="menu__item"><a class="menu__link" data-submenu="submenu-4" href="#">Pages</a></li>
        -->

				</ul>
				<!-- Submenu 1 -->
				<ul data-menu="submenu-1" class="menu__level">
					<li class="menu__item"><a
						class="menu__link menu__link--current" href="index.html">Slider</a></li>
					<li class="menu__item"><a class="menu__link"
						href="index2.html">Image</a></li>
					<li class="menu__item"><a class="menu__link"
						href="index3.html">Video</a></li>
				</ul>
				<!-- Submenu 1 end -->
			</div>
		</nav>
		<!-- nav end -->

		<!-- header start -->
		<header>
			<div class="header-upper">
				<a class="logo" href="index.html"><img
					src="include/images/logo.png" alt="" /></a>
			</div>
			<div class="header-lower">
				<ul class="quick-contact">
					<li><b>EMAIL :</b> <a href="mailto:#"><i
							class="ion ion-email visible-xs"></i><span>chs11099@naver.com</span></a></li>
					<li><b>PHONE :</b> <a href="tel:#"><i
							class="ion ion-android-call visible-xs"></i><span>+91 9876
								543 210</span></a></li>
					<li class="social-links"><b>GET SOCIAL :</b> <a href="#"
						target="_blank"><i class="ion ion-social-facebook"></i></a><a
						href="#" target="_blank"><i class="ion ion-social-twitter"></i></a><a
						href="#" target="_blank"><i class="ion ion-social-googleplus"></i></a><a
						href="#" target="_blank"><i class="ion ion-social-instagram"></i></a></li>
				</ul>
				<p class="copyright">&copy; 2016. All right reserved.</p>
			</div>
		</header>
		<!-- header end -->

		<!-- hero-container start -->
		<div class="hero-container">
			<!-- SLIDER 1 start -->
			<div class="hero-image hero-slider1">
				<!-- SLIDER 1 slide 1 -->
				<div class="hero-image-slides">
					<div class="hero-image-content">
						<table border="1">
							<tr align="center">
								<th>IGCT_ID</th>
								<th>IGCT_NAME</th>
							</tr>
						</table>
						<input type="button" value="되냐?" onclick="loadListById()" />
						<h6>
							<span class="os-animation" data-os-animation="fadeInDown"
								data-os-animation-delay="0s">We're Creative</span>
						</h6>
						<h2>
							<span class="os-animation" data-os-animation="fadeInUp"
								data-os-animation-delay="0.5s">digital AGENCY</span>
						</h2>
						<a href="about-us.html" class="btn btn-default os-animation"
							data-os-animation="fadeInUp" data-os-animation-delay="1s">DISCOVER
							MORE</a>
					</div>

				</div>
			</div>
			<!-- SLIDER 1 end -->


			<!-- hero-container end -->
			<!-- footer start -->
			<footer>
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="social-links">
								<a href="#" target="_blank"><i
									class="ion ion-social-facebook"></i></a><a href="#" target="_blank"><i
									class="ion ion-social-twitter"></i></a><a href="#" target="_blank"><i
									class="ion ion-social-googleplus"></i></a><a href="#"
									target="_blank"><i class="ion ion-social-instagram"></i></a>
							</div>
							<p class="copyright">&copy; 2016. All right reserved.</p>
						</div>
					</div>
				</div>
			</footer>
			<!-- footer end -->




		</div>
		<script type="text/javascript" src="include/js/jquery-2.2.2.min.js"></script>
		<script type="text/javascript" src="include/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="include/js/animsition.min.js"></script>
		<script type="text/javascript" src="include/js/jquery.validate.js"></script>
		<script type="text/javascript" src="include/js/classie.js"></script>
		<script type="text/javascript" src="include/js/main.js"></script>
		<script type="text/javascript" src="include/js/waypoint.js"></script>
		<script type="text/javascript" src="include/js/slick.min.js"></script>
		<script type="text/javascript" src="include/js/jquery.countTo.js"></script>
		<script type="text/javascript" src="include/js/imagesloaded.js"></script>
		<script type="text/javascript" src="include/js/masonry-3.1.4.js"></script>
		<script type="text/javascript" src="include/js/masonry.filter.js"></script>
		<script type="text/javascript"
			src="include/js/jquery.magnific-popup.min.js"></script>
		<script type="text/javascript" src="include/js/jquery.vide.js"></script>
		<script type="text/javascript" src="include/js/simple.parallax.js"></script>
		<script type="text/javascript" src="include/js/custom.js"></script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAbBpiB3FIaYAuD1pvRGB_1rr2QwHW-Eb4&v=3.exp"></script>
		<script type="text/javascript"
			src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-576b8f979487378e"></script>

		<script type="text/javascript">
			var httpRequest = null;
			function loadListById() {
				var p1 = document.getElementById("p1");
				alert(p1.innerHTML);
			}
		</script>
</body>
</html>