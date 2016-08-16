<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAMBODIA AUCTION</title>
<!-- header -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/accordion-menu.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/accordion-menu.js"></script>

<jsp:include page="header.jsp" />
<!-- menu -->
<jsp:include page="menu.jsp" />
<!-- left content -->
<jsp:include page="left-content.jsp" />
<!-- right content -->
<div class="col-md-9" ng-controller="auctionCtrl">
	<!-- ================ Starting New Item Content ================ -->
<!-- 	<div class="row"> -->
<!-- 		<h2 id="title">New Items</h2> -->
<!-- 		<hr /> -->
		<!-- ============ thumbnail 1 Section ============= -->
<!-- 		<div class="col-sm-6 col-md-3"> -->
<!-- 			<div class="thumbnail" ng-repeat="a in auction"> -->
<%-- 				<a href="#"><img src="${pageContext.request.contextPath}/resources/static/images/pophome.jpg" alt="..." --%>
<!-- 					class="img-thumbnail"></a> -->
<!-- 				<div class="caption descript"> -->
<!-- 					<a href="detail.html" class="title">{{a.product.product_name}}</a> -->
<!-- 					<h5>9 Days, 21 Hours remaining</h5> -->
<!-- 					<p> -->
<!-- 						<span class="price">{{a.start_price}}</span> <span class="bid"></span> -->
<!-- 					</p> -->
<!-- 					<p> -->
<!-- 						<a href="detail.html" class="btn btn-primary" role="button">Buy -->
<!-- 							Now <span class="glyphicon glyphicon-chevron-right"></span> -->
<!-- 						</a> -->
<!-- 					</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	<!-- ============ End col-md-9 Section ============= -->


			<div class="container-fluid">
				<!-- ================ Starting New Item Content ================ -->
				<div class="row">
					<h2 id="title">New Items</h2><hr/>
					<!-- ============ thumbnail 1 Section ============= -->
			  		<div class="col-sm-6 col-md-3">
			   			<div class="thumbnail">
			      			<a href="detail.html"><img src="${pageContext.request.contextPath}/resources/static/images/pophome.jpg" alt="..." class="img-thumbnail"></a>
			      			<div class="caption descript">
				        		<a href="detail.html" class="title">Beautiful Home</a>
				        		<h5>9 Days, 21 Hours remaining</h5>
				       			<p><span class="price">$10,000.00</span>
				       				<span class="bid"></span>				       			
				       			</p>
				       			<p><a href="detail.html" class="btn btn-primary" role="button">Buy Now
				       				<span class="glyphicon glyphicon-chevron-right"></span></a>
				       			</p>
			    			</div>
			   			</div>
			  		</div>
				</div><!-- ============ End Row 2 Section ============= -->
			</div><!-- ============ End col-md-9 Section ============= -->



	<!-- footer -->
	<jsp:include page="footer.jsp" />
<%-- 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/category-angular.js"></script> --%>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/auction-angular.js"></script>