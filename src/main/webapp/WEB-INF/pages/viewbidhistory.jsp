<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Register New Account</title>
<!-- header -->
<jsp:include page="header.jsp" />

<!-- menu -->
<jsp:include page="menu.jsp" />

<!-- content -->
<div class="container" style="margin-top: 5px;" ng-controller="biddingHistoryCtrl">
	
	
	<div class="row">
		<div class="col-md-12 col-xs-12">
			<!--  Loading Image -->
			<div id="myLoading" >
				<img "alt="loading image" src="${pageContext.request.contextPath}/resources/static/images/loading.gif"/>	
			</div>
			<!--  End Loading Image -->


			<!-- ============================ BidHistory ===================== -->
			<div class="panel panel-default" id="bid_history">
				<div class="panel-heading">
					<div class="btn-group pull-right">
						<button class="btn btn-default btn-xs" onclick="window.history.back();">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>Back
						</button>
					</div>
					<span class="text-muted"><strong>Bid History</strong></span>
					
				</div>
				<div class="panel-body" id="bid_history_detail">
					<div class="row">
						History for <strong><span id="product_name"
							ng-model="produt_name" ng-cloak>{{product_name}}</span></strong>
					</div>
					<hr>
					<div class="row" style="padding-bottom: 20px;">

						<!--  Current Price -->
						<div class="clearfix">
							<label for="current_price" class="col-sm-2"><strong>Current
									Price</strong></label>
							<div class="col-sm-10">
								<span id="current_price" ng-cloak>{{current_price}}</span>
							</div>
						</div>

						<!--  Starting Price -->
						<div class="clearfix">
							<label for="starting_price" class="col-sm-2"><strong>Starting
									Price</strong></label>
							<div class="col-sm-10">
								<span id="starting_price" ng-cloak>{{start_price}}</span>
							</div>
						</div>

						<!--  Number of Bids -->
						<div class="clearfix">
							<label for="number_of_bids" class="col-sm-2"><strong>Number
									of Bids</strong></label>
							<div class="col-sm-10">
								<span id="number_of_bids" ng-cloak>{{num_bid}}</span>
							</div>
						</div>

						<!--  Remaining Time -->
						<div class="clearfix">
							<label for="remaining_time" class="col-sm-2"><strong>Remaining
									Time</strong></label>
							<div class="col-sm-10">
								<span id="remaining_time" ng-cloak>{{remaing_date.remainingTime | durationview}}</span>
							</div>
						</div>

						<!--  Start Date/Time -->
						<div class="clearfix">
							<label for="start_date_time" class="col-sm-2"><strong>Start
									Date/Time</strong></label>
							<div class="col-sm-10">
								<span id="start_date_time" ng-cloak>{{start_date}}</span>
							</div>
						</div>

						<!--  End Date/Time -->
						<div class="clearfix">
							<label for="end_date_time" class="col-sm-2"><strong>End
									Date/Time</strong></label>
							<div class="col-sm-10">
								<span id="end_date_time" ng-cloak>{{end_date}}</span>
							</div>
						</div>
					</div>
					<table class="table">
						<tbody>
							<tr class="active">
								<th>#</th>
								<th>Date/Time</th>
								<th>Username</th>
								<th>Amount</th>
							</tr>
							<tr ng-repeat="u in auctionBidHistory | orderBy:'-current_price'">
								<td ng-cloak>{{$index + 1}}</td>
								<td ng-cloak>{{u.bid_date}}</td>
								<td ng-cloak>{{u.user.user_name}}</td>
								<td ng-cloak>{{u.current_price}}</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>




		</div>
	</div>
</div>

<!-- footer -->
<jsp:include page="footer.jsp" />
<script type="text/javascript"
	src="http://momentjs.com/downloads/moment-with-locales.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/view-bidding-history-angular.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#menustand").hide(function(){
			$("#right-content").removeClass('col-md-9');
		});
		$('#searchPanel').hide();
	});
</script>	