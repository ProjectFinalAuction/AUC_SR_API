<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.khmeracademy.auction.entities.User"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title class="lang" key="cambodia_auction">CAMBODIA AUCTION</title>
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
<div class="col-md-9" ng-controller="auctionCtrl" style="padding: 0;"
	id="right-content">
	
	<!-- ================ Starting New Item Content ================ -->
	<div class="row" style="position: relative;">
		<p id="title" class="lang" key="new_arrivale"><spring:message code="new_arrival"></spring:message></p>
		<!-- ============ thumbnail Section ============= -->
		<div class="col-sm-6 col-md-3 product" style="padding-right: 0px;"
			ng-repeat="a in auction">
			<div class="thumbnail" ng-repeat="proimg in a.product.gallery" ng-show="$first" style="position: relative;">
				<a href="${pageContext.request.contextPath}/detail?gws_rd=cr&{{a.product.category.category_name}}&ei=gGm1VbP-He_aKoTEy&=lovE100%f&Aid={{a.auction_id}}&site=PPvgSov&{{a.product.product_name}}"><img
					src="{{proimg.image_path}}"
					alt="..." class="img-thumbnail" style="height: 180px;"></a>
				<div class="caption descript">
					<a href="${pageContext.request.contextPath}/detail?gws_rd=cr&{{a.product.category.category_name}}&ei=gGm1VbP-He_aKoTEy&=lovE100%f&Aid={{a.auction_id}}&site=PPvgSov&{{a.product.product_name}}" class="title">{{a.product.product_name}}</a>
					<h5 class="lang" key="remaining_day">{{a.remainingTime | durationview}}</h5>
					<p>
						<span class="price">{{a.start_price | currency}}</span> <span
							class="bid lang" key="bid">0 Bids</span>
					</p>
					<p class="text-center">
						<a href="${pageContext.request.contextPath}/detail?gws_rd=cr&{{a.product.category.category_name}}&ei=gGm1VbP-He_aKoTEy&=lovE100%f&Aid={{a.auction_id}}&site=PPvgSov&{{a.product.product_name}}"
						 class="btn btn-default"
							role="button"><font color="black" class="lang" key="bid_now">
							<i class="fa fa-gavel" aria-hidden="true"></i> Bid Now</font> </a>
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
	


<script type="text/javascript" src="http://momentjs.com/downloads/moment-with-locales.js"></script>
<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/scripts/main-angular.js"></script>