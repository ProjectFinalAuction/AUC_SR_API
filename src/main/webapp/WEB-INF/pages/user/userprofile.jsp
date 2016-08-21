<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
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

.main .img-responsive {
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
					<li class="active"><a href="#" >Active</a></li>
					<li><a href="#">Won</a></li>
					<li><a href="#">Not Won</a></li>
					<li><a href="#">WishList</a></li>
					<li><a href="#">Invoice</a></li>
				</ul>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Account</h3>
				</div>
				<ul class="nav nav-pills nav-stacked" style="padding: 1px 3px;">
					<li><a href="#">Details</a></li>
					<li><a href="#">Password</a></li>
					<li><a href="#tab8" data-toggle="tab">Credit</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-10 col-xs-12 myaccount main">
			<div class="panel panel-default">
				<div class="list clearfix" ng-repeat="ub in userBidHistory">
					<div class="row">
						<div class="col-sm-2">
							<a href="${pageContext.request.contextPath}/detail?Aid={{ub.auction.auction_id}}"> <img alt="" src="{{ub.image_path}}"
								class="img-responsive" style="width:149px; height:130px;">
							</a>
						</div>
						<div class="col-sm-6">
							<p>
								<strong><a href="#">{{ub.auction.product.product_name}}</a></strong>
							</p>
							<p>Current Price$ {{ub.auction.current_price}} &nbsp;&nbsp;||&nbsp;&nbsp;Your Bid $ {{ub.user_latest_current_price}}</p>
						</div>
						<div class="col-sm-3 text-right">{{ub.auction.end_date}}</div>
					</div>
					<button class="btn btn-default contact">Contact</button>
				</div>
				
			</div>

			<!-- ======================= TOP UP ==================== -->
			<!-- <div class="panel panel-default" id="tab8">

				<div class="panel-heading">Information Topup</div>
				<div class="panel-body">
					<div class="tab-content">
						<div class="tab-panel" >
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label class="control-label col-sm-3">Topup Amount: </label>
									<div class="col-sm-4">
										<select class="form-control" id="curr">
										    <option>US Dollar</option>
										    <option>Cambodian Riel</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-4">
										<input ng-model="x" type="number" class="form-control"
											placeholder="Type your balance">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-3">
										<button type="submit" class="btn btn-default" ng-disabled="!(!!x)">
										<i class="fa fa-plus" aria-hidden="true"></i> Topup</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div> -->

		</div>
	</div>
</div>




<!-- footer -->
<jsp:include page="../footer.jsp" />


<sec:authentication property="principal.user_id" var="USER_ID"/>

<script type="text/javascript"> var USER_ID = "${USER_ID}"; </script>

<script src="${pageContext.request.contextPath}/resources/scripts/bidhistory-angular.js"></script>

<script type="text/javascript">
	
	$(document).ready(function() {
		$("#menustand").hide(function() {
			$("#right-content").removeClass('col-md-9');
		});
		$('#searchPanel').hide();
	});
	
	/* var app = angular.module("myApp", []);
	app.controller('userBidHistory', function($scope,$http){

		// select Bid History By UserName to display
		$scope.findBidByUserId = function(user_id){
			alert(user_id);
			$http({
				url: 'http://localhost:8080/rest/bidhistory/' + user_id,
				method: 'GET',
				
			}).then(function(respone){
				$scope.userBidHistory = respone.data.DATA;
				cosole.log($scope.userBidHistory );
			});
		}
		
		$scope.findBidByUserId(user_id);
		
	}) */
</script>