<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAMBODIA AUCTION</title>
<!-- header -->
<style type="text/css">
#title {
	font-size: 15px;
	font-weight: bold;
	text-align: center;
	color: gray;
	margin-top: 12px;
}
</style>
<jsp:include page="header.jsp" />
<!-- menu -->
<jsp:include page="menu.jsp" />
<!-- left content -->
<jsp:include page="left-content.jsp" />
<!-- right content -->
<div class="col-md-9" ng-controller="auctionCtrl" style="padding: 0;" id="right-content">
	<div class="container-fluid">
		<!-- ================ Starting New Item Content ================ -->
		<div class="row">
			<p id="title">NEW ARRIVAL</p>
			<!-- ============ thumbnail Section ============= -->
			<div class="col-sm-6 col-md-3" style="padding-right: 1px;" ng-repeat="a in auction">
				<div class="thumbnail">
					<a href="bid-detail.html"><img	
						src="${pageContext.request.contextPath}/resources/static/images/pophome.jpg"
						alt="..." class="img-thumbnail"></a>
					<div class="caption descript">
						<a href="bid-detail.html" class="title">{{a.product.product_name}}</a>
						<h5>{{}} Days, 7 Hours remaining</h5>
						<p>
							<span class="price">{{a.start_price | currency}}</span> <span class="bid">0
								Bids</span>
						</p>
						<p>
							<a href="${pageContext.request.contextPath}/detail" ng-click="getAuctionById(a.auction_id)" class="btn btn-info" role="button"><font color="#f2f2f2">Bid
								Now <span class="glyphicon glyphicon-chevron-right"></span></font>
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- ============ End Row 2 Section ============= -->
	</div>
	<!-- ============ End col-md-9 Section ============= -->

	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/main-angular.js"></script>