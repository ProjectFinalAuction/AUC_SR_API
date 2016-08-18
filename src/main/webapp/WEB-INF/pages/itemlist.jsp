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
	<style type="text/css">
		.NumberPart{
			color: green;
			font-weight: bold;
		}
		/*.remaining{
			color: #777574;
			font-weight: bold;
		}*/
		.glyphicon-option-vertical{
			color: #777574;
		}
		.title strong{
			color: #777574;
			font-size: larger;
		}
		.subtitle strong{
			color: #777574;
			font-size: medium;
			font-weight:normal;

		}
		.img-wraper{
			margin-top: -15px; margin-bottom: 5px;
		}
		.img{float: left; margin-right: 10px; }
		.condition, .seller, .remaining{
			color: #BBBAB9;
		}
		.seller a, .condition a{
			color: #999795;
		}
		.condition a:hover, a:visited, a:link, a:active
		{
			text-decoration: none;
		}

		.seller a:hover, a:visited, a:link, a:active
		{
			text-decoration: none;
		}
		.remaining a:hover, a:visited, a:link, a:active
		{
			text-decoration: none;
		}
		.status-type{
			background-color: #BBBAB9;
		}


	</style>

	<jsp:include page="header.jsp" />
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!-- left content -->
	<jsp:include page="left-content.jsp" />
	<!-- right content -->
	<div class="col-md-9" ng-controller="auctionCtrl" id="right-content">
		<input type="hidden" id="loop_auc_id" value="${param.id}">
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
			
			<section data-listingid="327081" style=" width: 100% " ng-repeat="a in auctionProduct">
				<!-- wrapper div -->
				<div class="panel panel-default clearfix listing" >		

					<!-- image and property -->
					<div class="col-sm-7 img-wraper">
						<!-- img & title -->
						<h1 class="title">
							<a href="#">
								<span class="img" ng-repeat="proimg in a.product.gallery">
									<img src="{{proimg.image_path}}" class="img-thumbnail" style="width: 160px; height: 170px" alt="Cinque Terre">
								</span>
								<strong>{{a.product.product_name}}</strong>
							</a>
						</h1>
						<!-- subtitle -->
						<p class="subtitle">
							<a href="#">
								<strong></strong>
							</a>
						</p>
						<!-- seller -->
						<span class="condition">
							Brand: <a href="#">{{a.product.brand.brand_name}}</a>
						</span><br>
						<!-- seller -->
						<span class="condition">
							Condition: <a href="#">{{a.product_condition}}</a>
						</span><br>

						<span class="seller">
							Seller: <a href="#">{{a.product.supplier.contact_name}}</a>
						</span><br>
						
					</div>	<!--End image and property -->

					<!-- Auction Part -->
					<div class="col-sm-5" >
						<span class="label label-primary status-type" style="float: right; background-color: #BBBAB9 ; margin-top: 5px; ">Auction</span><br><br><br><br>
						<span style=" text-align: right; ">
							<p class="time remaining" > 
								<span data-epoch="ending" data-end-hide-selector="[data-listingid='327081'] .awe-rt-Done" data-action-time="08/25/2016 00:22:49" data-end-value="Ended" data-action-milliseconds="1472059369000">9 Days, 34 Minutes</span>
								<span class="awe-rt-Done ">remaining</span>
							</p>
							<p class="bids">
								&nbsp;
								<span class="awe-rt-CurrentPrice price NumberPart"><span class="NumberPart">{{a.current_price | currency}}</span></span>
								<span class="glyphicon glyphicon-option-vertical"></span>
								<span class="awe-rt-AcceptedListingActionCount" data-previous-value="0">0</span>
								Bids
								&nbsp;
								<a href="#" class="btn btn-primary awe-rt-Active awe-rt-Done">Bid Now 
									<span class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</p>
						</span>
					</div>	<!-- End auction part -->
					

				</div> <!-- End wrapper div -->
			</section>


		</div>


	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/chhuon.js"></script>