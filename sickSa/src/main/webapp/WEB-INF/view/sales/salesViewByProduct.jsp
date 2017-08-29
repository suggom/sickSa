<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
<head>
<!-- head start -->
<jsp:include page="../common/include-head.jsp" flush="false" />

<!-- head end -->
</head>
<body>
  <div class="animsition">
    <!-- nav start -->
    <jsp:include page="../common/include-navigator.jsp" flush="false" />
    <!-- nav end -->

    <!-- header start -->
    <jsp:include page="../common/include-header.jsp" flush="false" />
    <!-- header end -->

    <div class="main-container-outer">
      <div class="container">
        <div class="top-bar-container">
          <div class="container">
            <div class="top-bar">
              <ul class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><span>sales </span></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="main-container">
          <div class="inner-banner parallax" data-parallax-speed="5" style="background-image: url(include/images/project-slide1.jpg); height: auto; min-height: 5px; max-height: 15px;">
            <h2 style="float: right; position: relative; top: -30px;">Sales</h2>
          </div>
          <!-- Content Holder Start -->
          <div class="content-holder">

            <!-- 컨텐츠 영역 start -->
            <div id="content" class="container" style="margin-bottom: 100px"></div>
            <!-- 컨텐츠 영역 end -->

          </div>
        </div>
      </div>
    </div>

    <!-- footer start -->
    <jsp:include page="../common/include-footer.jsp" flush="false" />
    <!-- footer end -->
  </div>

  <!-- tail start -->
  <jsp:include page="../common/include-tail.jsp" flush="false" />
  <script src='include/css/calendar/jquery.min.js'></script>
  <script src='include/css/calendar/moment.min.js'></script>
  <script src='include/css/calendar/fullcalendar.js'></script>
  <!-- tail end -->
</body>
</html>