<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
<!-- head start -->
<jsp:include page="../common/include-head.jsp" flush="false" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- head end -->
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
					<li class="menu__item"><a
						class="menu__link menu__link--current" data-submenu="submenu-1"
						href="#">Home</a></li>
					<c:forEach var="productCategory" items="${productCategoryList}">
						<li class="menu__item"><a class="menu__link"
							href="javascript:showProductList(${productCategory.pdct_id})">${productCategory.pdct_name}</a></li>
					</c:forEach>
				</ul>
			</div>
		</nav>
		<!-- nav end -->

		<!-- header start -->
		<jsp:include page="../common/include-header.jsp" flush="false" />
		<!-- header end -->

		<!-- 컨텐츠 영역 start -->
		<div class="main-container-outer" style="width:85%; margin-left:20px;">
		<div class="main-container">

			<div class="container" >

				<!-- top start -->
				<jsp:include page="../common/include-vm_top.jsp" />
				<!-- top end -->
		
					<div class="content-holder" style="padding: auto 13%;">

						<h3 class="content-title" align="left"
							style="margin: 50px auto;">Order Result</h3>

						<div id="content"
							style="height: 100%; display: block; margin: 0 auto">
							<h6 align="right"> Order No . ${order.ord_id}</h6>
							<h6 align="right"> Date . <fmt:formatDate value="${order.ord_date}" pattern="yyyy.MM.dd" /></h6>
							<table class="table table-striped"
								style="margin: 50px auto;">
								<thead>
									<tr>
										<th  align="center" style="width:40%"><h5>product</h5></th>
										<th  align="center" style="width:30%"><h5>amount</h5></th>
										<th  align="center" style="width:30%"><h5>price</h5></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="orderDetail" items="${orderDetailList}">
										<c:set var="product" value="${orderDetail.product}">
										</c:set>
										<tr>
											<td><h6 align="center">${product.pdt_name}</h6></td>
											<td><h6  align="center">${orderDetail.ordt_amount}</h6></td>
											<td><h6  align="center">${product.pdt_price}</h6></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>


						</div>



						<h6 align="right">Total Price:</h6>
						<h3 align="right">${order.ord_total}</h3>
					</div>
				</div>
			

		</div>

		<!-- 컨텐츠 영역 end -->

		<!-- footer start -->
		<jsp:include page="../common/include-footer.jsp" flush="false" />
		<!-- footer end -->
		</div>
	</div>


	<!-- tail start -->
	<jsp:include page="../common/include-tail.jsp" flush="false" />
	<script src='include/js/order.js'></script>
	<!-- tail end -->
</body>
</html>