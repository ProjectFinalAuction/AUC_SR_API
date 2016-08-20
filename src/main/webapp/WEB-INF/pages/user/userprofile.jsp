<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="cambodia_auction"></spring:message></title>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
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
					<li><a href="#">Active</a></li>
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
			<!-- 			<div class="panel panel-default"> -->
			<!-- 				<div class="list clearfix" ng-repeat="ub in userBidHistory"> -->
			<!-- 					<div class="row"> -->
			<!-- 						<div class="col-sm-2"> -->
			<!-- 							<a href="#" ng-repeat="proimg in ub.auction.product.gallery" -->
			<!-- 								ng-show="$first"> <img alt="" src="{{proimg.image_path}}" -->
			<!-- 								class="img-responsive"> -->
			<!-- 							</a> -->
			<!-- 						</div> -->
			<!-- 						<div class="col-sm-6"> -->
			<!-- 							<p> -->
			<!-- 								<strong><a href="#">{{ub.auction.product.product_name}}</a></strong> -->
			<!-- 							</p> -->
			<!-- 							<p>{{ub.auction.current_price}} &nbsp;&nbsp;||&nbsp;&nbsp;</p> -->
			<!-- 						</div> -->
			<!-- 						<div class="col-sm-3 text-right">{{ub.auction.end_date}}</div> -->
			<!-- 					</div> -->
			<!-- 					<button class="btn btn-default contact">Contact</button> -->
			<!-- 				</div> -->
			<%-- 				<div class="list clearfix">
<%-- 					<div class="row"> --%>
			<%-- 						<div class="col-sm-2"> --%>
			<%-- 							<a> --%>
			<%-- 								<img alt="" src="${pageContext.request.contextPath}/resources/static/images/pophome.jpg" class="img-responsive"> --%>
			<%-- 							</a> --%>
			<%-- 						</div> --%>
			<%-- 						<div class="col-sm-6"> --%>
			<%-- 							<p></p> --%>
			<%-- 							<p></p> --%>
			<%-- 						</div> --%>
			<%-- 						<div class="col-sm-3 text-right"> --%>
			<%-- 							2 Days, 10 Hours --%>
			<%-- 						</div> --%>
			<%-- 					</div> --%>
			<%-- 					<button class="btn btn-default contact">Contact</button> --%>
			<%-- 				</div> --%>
			<!-- 			</div> -->


			<div class="panel panel-default">

				<div class="panel-heading">Information</div>
				<div class="panel-body">
					<div class="tab-content">
						<div class="tab-pane" id="tab8">
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
			</div>
		</div>
	</div>
</div>




<!-- footer -->
<jsp:include page="../footer.jsp" />
<script
	src="${pageContext.request.contextPath}/resources/scripts/bidhistory-angular.js"></script>
<script>
	app.controller('userBidHistory', function($scope, $http) {

		alert($("#username").text());

		// select Bid History By UserName to display
		$scope.findBidHistoryByUserName = function(user_name) {

			$http({
				url : 'http://localhost:8080/rest/bidhistory/' + user_name,
				method : 'GET',

			}).then(function(respone) {
				$scope.userBidHistory = respone.data.DATA;
				cosole.log($scope.userBidHistory);
			});
		}

		$scope.findBidHistoryByUserName("Meng");

	})
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#menustand").hide(function() {
			$("#right-content").removeClass('col-md-9');
		});
		$('#searchPanel').hide();
	});
</script>