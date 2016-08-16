<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>CAMBODIA AUCTION</title>
	<!-- header -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/accordion-menu.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/accordion-menu.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/bootstrap.min.js"></script>

	<jsp:include page="header.jsp" />
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!-- left content -->
	<jsp:include page="left-content.jsp" />
	<!-- right content -->
	<div class="col-md-9" ng-controller="auctionCtrl">
		<!-- ================ Item List ================ -->
		<div class="container-fluid">

			<!-- TOP BAR -->
			<div class="well well-sm section-title" style=" background-color: white; margin-top: 10px; ">
				<form action="#" class="form-inline text-right" method="get">
					<input id="ViewStyle" name="ViewStyle" type="hidden" value="grid">
					<input id="StatusFilter" name="StatusFilter" type="hidden" value="active_only">            
					<div class="form-group">
						<div class="btn-group">
							<button id="ShowListView" type="button" class="btn btn-sm btn-primary"><span id="ToggleIcon" class="glyphicon glyphicon-list"></span></button>
							<button id="ShowGridView" type="button" class="btn btn-sm btn-default"><span id="ToggleIcon" class="glyphicon glyphicon-th-large"></span></button>
						</div>
					</div>
					<div class="form-group">
						<div class="btn-group">
							<button id="Status_IncludeActive" class="btn btn-sm btn-primary">Active</button>
							<button id="Status_IncludeCompleted" class="btn btn-sm btn-default">Completed</button>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label" for="ListingType">&nbsp;&nbsp;&nbsp;&nbsp;Filter</label>
						<select class="form-control input-sm" id="ListingType" name="ListingType" placeholder="All"><option value="">All</option>
							<option value="Auction">Auction</option>
							<option value="FixedPrice">Fixed Price</option>
							<option value="Classified">Classified</option>
						</select>
					</div>
					<div class="form-group">
						<div class="input-group">
							<label class="input-group-addon" for="SortFilterOptions">Sort</label>
							<select class="form-control input-sm" id="SortFilterOptions" name="SortFilterOptions"><option selected="selected" value="0">Ending Soon</option>
								<option value="1">Newest</option>
								<option value="2">Price, Low to High</option>
								<option value="3">Price, High to Low</option>
								<option value="4">Title, A to Z</option>
								<option value="5">Title, Z to A</option>
								<option value="6">Listing ID, 0 to 9</option>
								<option value="7">Listing ID, 9 to 0</option>
								<option value="8">Activity, High to Low</option>
								<option value="9">Activity, Low to High</option>
							</select>
						</div>
					</div>
					<input type="submit" id="submitDropDown" class="awe-hidden">
				</form>    
			</div>

			<!-- DATA-LISTING -->

			<section data-listingid="327081">

				<div class="panel panel-default clearfix listing">
					<span class="label label-primary status-type" style="float: right; margin-top: 5px; margin-right: 5px; ">Auction</span>
					<div style=" float: left; ">
						<div class="row">
							<div class="col-xs-4 col-sm-3 col-lg-2 img-container ">
								<div class="img-thumbnail" >
								<a href="#">                    
									<img src="${pageContext.request.contextPath}/resources/static/images/pophome.jpg" alt="Listing Image" class="img-responsive" width="2000" height="1400">
								</a>
								</div>
							</div>
							<div class="col-xs-8 col-sm-9 col-lg-10">

								<h1 class="title">
									<a href="#">
										<strong>Beautiful Home</strong>
									</a>
								</h1>

								<h2 class="subtitle">
									<a href="/AWDemo/Listing/Details/327081/Pablo-Picasso-Painting-Nightly-Dance-With-An-Owl-1960">

										<strong></strong>
									</a>
								</h2>

								<span class="seller">
									Seller: <a href="Browse?Seller=SusanSales">SusanSales</a>
								</span><br>
							</div>
						</div>
					</div>
					
					<div class="cta" style="float: right; margin-right: 5px; ">
						<p class="time">
							<span data-epoch="ending" data-end-hide-selector="[data-listingid='327081'] .awe-rt-Done" data-action-time="08/25/2016 00:22:49" data-end-value="Ended" data-action-milliseconds="1472059369000">9 Days, 34 Minutes</span>
							<span class="awe-rt-Done remaining">remaining</span>
						</p>
						<p class="bids">
							&nbsp;
							<span class="awe-rt-CurrentPrice price">$<span class="NumberPart">1,999.00</span></span>
							<span class="glyphicon glyphicon-option-vertical"></span>
							<span class="awe-rt-AcceptedListingActionCount" data-previous-value="0">0</span>
							Bids
							&nbsp;
							<a href="/AWDemo/Listing/Details/327081/Art" class="btn btn-primary awe-rt-Active awe-rt-Done">Bid Now <span class="glyphicon glyphicon-chevron-right"></span></a>
						</p>
					</div>
				</div>

			</section>


		</div>



<!-- <div class="panel panel-default" style=" margin-top: 10px; height: 150px; ">
	<div class="panel-body">A Basic Panel</div>
</div> -->

</div>

<!-- footer -->
<jsp:include page="footer.jsp" />
<%-- 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/category-angular.js"></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/auction-angular.js"></script>