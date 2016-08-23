<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix='sec'
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="cambodia_auction"></spring:message></title>
<!-- header -->
<jsp:include page="../header.jsp" />
<!-- menu -->
<jsp:include page="../menu.jsp" />
<style>
.left .nav a, .left .panel-title {
	color: gray;
}

.userprofile .panel.panel-default.panel-body, .userprofile .table {
	padding: 5px;
}

.myaccount .list, .myaccount .won-list {
	background-color: #fff;
	border: 1px solid #ebebeb;
	border-radius: 4px;
	margin-top: 10px;
	margin-left: 7px;
	margin-right: 7px;
	padding: 6px;
	position: relative;
}

.myaccount .list .contact {
	margin: 10px;
	position: absolute;
	bottom: 0;
	right: 0;
}

#bid .img-responsive, #won .img-responsive {
	border: 4px solid #fff;
	box-shadow: 0 0 1px 1px rgba(0, 0, 0, .15);
	-webkit-box-shadow: 0 0 1px 1px rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 0 1px 1px rgba(0, 0, 0, .15);
	border-radius: 3px;
}

.userprofile .row {
	margin-right: -15px;
	margin-left: -15px;
}

.userprofile .col-sm-2 {
	padding-left: 0px;
	padding-right: 0px;
	margin-left: 15px;
}

.userprofile .nav-pills>li.active>a, .userprofile .nav-pills>li.active>a:focus,
	.userprofile .nav-pills>li.active>a:hover {
	background-color: #238fc7;
}

#credit, #invoice {
	position: absolute;
	top: 0;
	width: 97%;
	display: none;
}

#invoice {
	position: relative;
	top: 0;
	width: 97%;
	display: none;
}

#invoice hr {
	padding: 20px 0px;
}

#won {
	position: relative;
	top: 0;
	width: 97%;
	display: none;
}
</style>
</head>
<!--  style="width: 77%;" -->
<div class="container userprofile" ng-controller="userBidHistory">
	<div class="row">
		<div class="col-md-12">
			<ul class="list-group" style="margin-top: 15px;">
				<li class="list-group-item sublinkcategory"><spring:message
						code="home"></spring:message> / user / proflie</li>
			</ul>
		</div>
		<div class="col-md-2 col-xs-12 left">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Bidding</h3>
				</div>
				<ul class="nav nav-pills nav-stacked" style="padding: 1px 3px;">
					<li class="active"><a href="" onclick="onBid()">Active</a></li>
					<li><a href="" onclick="onWon()">Won</a></li>
					<li><a href="">Not Won</a></li>
					<li><a href="#">WishList</a></li>
					<li><a href="" onclick="onInvoice()">Invoice</a></li>
				</ul>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Account</h3>
				</div>
				<ul class="nav nav-pills nav-stacked" style="padding: 1px 3px;">
					<li><a href="#">Details</a></li>
					<li><a href="#">Password</a></li>
					<li><a href="" onclick="onCredit()">Credit</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-10 col-xs-12 myaccount main">

			<!-- ============================ BID ACTIVE ===================== -->
			<div class="panel panel-default" id="bid">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-2 hidden-xs"></div>
						<div class="col-sm-6">
							Title<br>Current Price &nbsp;|&nbsp; My Bid
						</div>
						<div class="col-sm-3">Remaining Time</div>
					</div>
				</div>
				<div class="list clearfix" ng-repeat="ub in userBidHistory"
					ng-if="ub.auction.status=='1'">
					<div class="row">
						<div class="col-sm-2">
							<a
								href="${pageContext.request.contextPath}/detail?Aid={{ub.auction.auction_id}}">
								<img alt="" src="{{ub.image_path}}" class="img-responsive"
								style="width: 149px; height: 130px;">
							</a>
						</div>
						<div class="col-sm-6">
							<p>
								<strong><a href="#">{{ub.auction.product.product_name}}</a></strong>
							</p>
							<p>Current Price$ {{ub.auction.current_price}}
								&nbsp;&nbsp;|&nbsp;&nbsp;Your Bid $
								{{ub.user_latest_current_price}}</p>
						</div>
						<div class="col-sm-3 text-right">{{ub.remainingTime |
							durationview}}</div>
					</div>
					<button class="btn btn-default contact">Contact</button>
				</div>

			</div>


			<!-- ============================ BID WON ===================== -->
			<div class="panel panel-default" id="won">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-2 hidden-xs"></div>
						<div class="col-sm-8">
							Title<br>Won DateTime
							<div class="row">
								<div class="col-sm-4" id="qty">Quantity</div>
								<div class="col-sm-4">Price</div>
								<div class="col-sm-4">Total</div>
							</div>
						</div>
					</div>
				</div>
				<div class="list clearfix" ng-repeat="ub in userBidHistory"
					ng-if="ub.auction.status=='3'">
					<div class="row">
						<div class="col-sm-2">
							<a
								href="${pageContext.request.contextPath}/detail?Aid={{ub.auction.auction_id}}">
								<img alt="" src="{{ub.image_path}}" class="img-responsive"
								style="width: 149px; height: 130px;">
							</a>
						</div>
						<div class="col-sm-8">
							<p>
								<strong><a href="#">{{ub.auction.product.product_name}}</a></strong><br>
								{{ub.auction.end_date}}
							</p>
							<div class="row">
								<div class="col-sm-4">1</div>
								<div class="col-sm-4">
									<strong>$ {{ub.auction.current_price}}</strong>
								</div>
								<div class="col-sm-4">$ {{ub.auction.current_price * 1}}</div>
							</div>

						</div>
					</div>
					<button class="btn btn-default contact" ng-click="checkOut(ub)">Checkout</button>
				</div>
			</div>


			<!-- ============================ Invoice ===================== -->
			<div class="panel panel-default" id="invoice">
				<div class="panel-heading">
					Invoices
					<div class="btn-group pull-right">
						<button class="btn btn-default btn-xs">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>Back
						</button>
					</div>
				</div>
				<div class="panel-body" id="printInvoice">
					<div class="row">
						<div class="col-sm-5 pull-left">
							<img alt=""
								src="${pageContext.request.contextPath}/resources/static/images/denhtlai.png"
								class="img-responsive" style="width: 80%">
						</div>
						<div class="col-sm-4 pull-right">
							<h5>
								Invoice # <br> <br> <strong>2015-04-23654789</strong>
							</h5>
						</div>
					</div>
					<hr>
					<div class="row" style="padding-bottom: 150px;">
						<div class="col-sm-4 ">
							<strong>Bidder Info</strong><br> <span>Bidder: <sec:authentication
									property="principal.user_name" />
							</span><br> 
							Address: <span id="address"></span>
						</div>
						<div class="col-sm-5 text-center">
							<strong>Created Date</strong><br> <span id="created-date">20/08/2016</span>

						</div>
						<div class="col-sm-3 text-center">
							<img alt=""
								src="${pageContext.request.contextPath}/resources/static/images/paidStamp.png">
						</div>
					</div>
					<table class="table">
						<tbody>
							<tr class="active">
								<th>#</th>
								<th>Items</th>
								<th class="hidden-xs">Quantity</th>
								<th class="hidden-xs">Unit Price</th>
								<th>Total</th>
								<td class="hidden-xs"></td>

							</tr>
							<tr>
								<td>1</td>
								<td><a href=""><span id="item-name"></span></a></td>
								<td class="hidden-xs">1</td>
								<td class="hidden-xs">$ <span id="unit-price"></span></td>
								<td class="hidden-xs">$ <span id="total-price"></span></td>
							</tr>
							<tr>

								<td colspan="3"></td>
								<td><label>Subtotal</label></td>
								<td>$ <span id="sub-total"></span></td>
								<td class="hidden-xs"></td>
							</tr>
							<tr>
								<td colspan="3"></td>
								<td><label>Sales Tax</label></td>
								<td>$0.00</td>
								<td class="hidden-xs"></td>
							</tr>
							<tr class="success">
								<td colspan="3"></td>
								<td><label>Total</label></td>
								<td>$ <strong id="total"></strong></td>
								<td class="hidden-xs"></td>
							</tr>
							<tr>
								<td colspan="3"></td>
								<td>
									<div class="btn-group pull-right">
										<button class="btn btn-default" style="margin-top: 25px;"
											id="print" onclick="printDiv('printInvoice')">
											<i class="fa fa-print" aria-hidden="true"></i>
										</button>
									</div>
								</td>
								<td>
									<div class="btn-group">
										<button class="btn btn-default" style="margin-top: 25px;">
											Submit</button>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>


			<!-- ======================= TOP UP ==================== -->
			<div class="panel panel-default" id="credit">

				<div class="panel-heading">Information</div>
				<div class="panel-body">
					<div class="tab-content">
						<div class="tab-panel">
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label class="control-label col-sm-3">Topup Amount: </label>
									<div class="col-sm-4">
										<select class="form-control" id="curr" ng-model="curr">
											<option value="" ng-selected="true">-- Choose
												Currency --</option>
											<option value="USD">US Dollar</option>
											<option value="KHR">Cambodian Riel</option>
										</select>
									</div>
									<label class="control-label col-sm-4">Total Amount: <font
										color="#238fc7">{{ending_amount}}</font> Credit
									</label>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-4">
										<input ng-model="balance" type="number" class="form-control"
											placeholder="Type your balance">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-3">
										<button type="submit" class="btn btn-default"
											ng-disabled="balance < 1 || !(!!balance)" ng-click="addTopUp()">
											<i class="fa fa-plus" aria-hidden="true"></i> Topup
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>

			</div>

		</div>
	</div>
</div>




<!-- footer -->
<jsp:include page="../footer.jsp" />


<sec:authentication property="principal.user_id" var="USER_ID" />

<script type="text/javascript">
	var USER_ID = "${USER_ID}";
</script>

<script
	src="${pageContext.request.contextPath}/resources/scripts/bidhistory-angular.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#menustand").hide(function() {
			$("#right-content").removeClass('col-md-9');
		});
		$('#searchPanel').hide();
	});

	function printDiv(divName) {
		var printContents = document.getElementById(divName).innerHTML;
		var originalContents = document.body.innerHTML;

		document.body.innerHTML = printContents;

		window.print();

		document.body.innerHTML = originalContents;
	}

	function onCredit() {
		document.getElementById("credit").style.display = "block";
		document.getElementById("bid").style.display = "none";
		document.getElementById("invoice").style.display = "none";
		document.getElementById("won").style.display = "none";

	}

	function onBid() {
		document.getElementById("credit").style.display = "none";
		document.getElementById("bid").style.display = "block";
		document.getElementById("invoice").style.display = "none";
		document.getElementById("won").style.display = "none";

	}

	function onInvoice() {
		document.getElementById("credit").style.display = "none";
		document.getElementById("bid").style.display = "none";
		document.getElementById("invoice").style.display = "block";
		document.getElementById("won").style.display = "none";
	}

	function onWon() {
		document.getElementById("credit").style.display = "none";
		document.getElementById("bid").style.display = "none";
		document.getElementById("invoice").style.display = "none";
		document.getElementById("won").style.display = "block";
	}
</script>