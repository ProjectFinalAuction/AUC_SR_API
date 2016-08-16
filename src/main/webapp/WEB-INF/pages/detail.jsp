<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item Information</title>
<style type="text/css">
.sublinkcategory{
	color: gray;
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
		<ul class="list-group" style="padding-left: 14px;">
		  <li class="list-group-item sublinkcategory">HOME / MOTORBIKE / DREAM 2014</li>
		</ul>
		<!-- ================ Starting New Item Content ================ -->
		<div class="row">
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
							<a href="bid-detail.html" class="btn btn-info" role="button"><font color="#f2f2f2">Bid
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/category-angular.js"></script>