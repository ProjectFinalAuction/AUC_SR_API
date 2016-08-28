<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="item_information"></spring:message></title>
<!-- link to photos pop up lightbox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/dist/css/lightbox.min.css">
<!-- css style of slide detail -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/css/slide-detail.css">

<!-- header -->
<jsp:include page="header.jsp" />
<!-- menu -->
<jsp:include page="menu.jsp" />
<!-- left content -->
<jsp:include page="left-content.jsp" />
<!-- right content -->
<div class="col-md-9" ng-controller="detailCtrl" style="padding: 0;"
	id="right-content">
	<div class="container-fluid">
		<input type="hidden" id="ac_id" value="${param.Aid}">
		<!-- detail content information -->
		<ul class="list-group" style="padding-left: 14px;">
			<li class="list-group-item sublinkcategory" ng-cloak><spring:message
					code="home"></spring:message> / {{category_name | uppercase}} /
				{{product_name | uppercase}}</li>
		</ul>

		<!-- 		======================================================================= -->
		<div class="row">
			<!-- image and some detail information -->
			<div class="col-md-5" style="padding-right: 0;">
				<div class="row" rowspan="2">
					<!-- colunm for image content -->
					<div class="list-group">
						<div class="list-group-item">
							<p>
								<spring:message code="remaining_time"></spring:message>
								: <span ng-cloak>{{auc_detail.remainingTime |
									durationview}}</span>
							</p>
						</div>
						<!-- end remain time -->
						<div class="list-group-item" id="img">
							<div class="thumbnail" ng-repeat="proimg in gallery"
								ng-show="$first">
								<a href="{{proimg.image_path}}" data-lightbox="example-set"
									id="myLink"> <img src="{{proimg.image_path}}"
									class="img-responsive" width="100%" id="myImage" /></a>
							</div>
						</div>
						<div class="list-group-item">
							<div class="thumbnail" style="border: none;">

								<script type="text/javascript"
									src="${pageContext.request.contextPath}/resources/static/js/jssor.slider.min.js"></script>
								<!-- use jssor.slider.debug.js instead for debug -->

								<div id="jssor_1"
									style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 819px; height: 150px; overflow: hidden; visibility: hidden;">

									<div data-u="slides"
										style="cursor: default; position: relative; top: 0px; left: 0px; width: 809px; height: 150px; overflow: hidden;">
										<div style="display: none;" ng-repeat="proimgAll in gallery">
											<img data-u="image" src="{{proimgAll.image_path}}"
												id="moreImgs6" /><a ng-cloak
												href="{{proimgAll.image_path}}" data-lightbox="example-set"></a>
										</div>
									</div>
									<!-- Bullet Navigator -->
									<div data-u="navigator" class="jssorb03"
										style="bottom: 10px; right: 20px;">
										<!-- bullet navigator item prototype -->
										<div data-u="prototype" style="width: 21px; height: 21px;">
											<div data-u="numbertemplate"></div>
										</div>
									</div>
									<!-- Arrow Navigator -->
									<span data-u="arrowleft" class="jssora03l"
										style="top: 0px; left: 8px; width: 55px; height: 55px;"
										data-autocenter="2"></span> <span data-u="arrowright"
										class="jssora03r"
										style="top: 0px; right: 18px; width: 55px; height: 55px;"
										data-autocenter="2"></span>
								</div>

								<!-- link from js.js to call function jssor_1_slider_init() -->
								<script
									src="${pageContext.request.contextPath}/resources/static/js/slider-detail.js"></script>
								<script>
									jssor_1_slider_init();
								</script>
								<!-- js photo pop up -->
								<script
									src="${pageContext.request.contextPath}/resources/static/dist/js/lightbox-plus-jquery.min.js"></script>

							</div>
						</div>
					</div>
					<!-- end div content left -->
				</div>
			</div>

			<!-- start column detail  -->
			<div class="col-md-7" style="padding-right: 0;">
				<div class="row" style="padding-right: 0; margin-bottom: -10px;"
					id="tablebidding">
					<div class="list-group">
						<div class="list-group-item">
							<h3 ng-cloak>{{product_name}}</h3>
							<h4 ng-cloak>{{product_condition}}</h4>
						</div>
						<div class="list-group-item">
							<form action="">
								<table class="table table-hover">
									<thead>
										<tr>
											<td><b><spring:message code="current_price"></spring:message></b></td>
											<td ng-cloak>{{current_price | currency}}</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th><spring:message code="minimum_bid"></spring:message></th>
											<td ng-cloak>{{current_price + increment_price |
												currency}} ({{current_price | currency}} + {{increment_price
												| currency}})</td>
										</tr>
										<tr>
											<th><spring:message code="max_bid"></spring:message></th>
											<td colspan="2">
												<div class="input-group">
													<div class="input-group-addon">$</div>
													<input type="number" class="form-control" ng-model="price"
														id="exampleInputAmount" placeholder="Amount">
													<div class="input-group-addon">.00</div>
												</div> <!-- <input type="text" class="form-control"> -->
											</td>
										</tr>
										<tr>
											<th></th>
											<td align="center"><sec:authorize
													access="isAuthenticated()">
													<button class="btn btn-success btn-block" type="button"
														style="width: 50%; float: left;" ng-click="addBidPrice()"
														ng-disabled="price < (current_price + increment_price) || !(!!price)">
														<spring:message code="submit_bid"></spring:message>
													</button>
												</sec:authorize> <sec:authorize access="!isAuthenticated()">

													<a href="/login"><button class="btn btn-block"
															type="button"
															style="width: 50%; float: left; background-color: #43b3f3; color: white">
															<spring:message code="bid_now"></spring:message>
														</button></a>
												</sec:authorize></td>

										</tr>
<!-- 										<tr> -->
<!-- 											<td colspan="2"><small><span class="lang" -->
<!-- 													key="description">Your site name here will bid -->
<!-- 														incrementally for you up to your maximum bid. Your maximum -->
<!-- 														bid is kept a secret from other users. Your bid is a -->
<!-- 														contract between you and the listing creator. If you have -->
<!-- 														the highest bid you will enter into a legally binding -->
<!-- 														purchase contract.</span></small></td> -->
<!-- 										</tr> -->
									</tbody>
								</table>
							</form>
						</div>
					</div>

				</div>
				<div class="row" style="padding-right: 0; margin-bottom: 20px;"
					id="tablebidend">
					<div id="titleEndStatus"
						style="color: red; padding: 10px; text-align: center;"></div>
					<!-- 						<div class="list-group"> -->
					<div class="list-group-item">
						<table class="table table-hover">
							<thead>
								<tr>
									<td><b><spring:message code="current_price"></spring:message></b></td>
									<td ng-cloak>{{current_price | currency}}</td>
									<td id='status1' ng-if="status==1" ng-cloak value="{{status}}"
										class="status"><p>
											<spring:message code="active"></spring:message>
										</p></td>
									<td id='status2' ng-if="status==3" ng-cloak value="{{status}}"
										class="status"><p>
											<spring:message code="end"></spring:message>
										</p></td>
								</tr>
							</thead>
							<tbody>

								<tr ng-hide="current_price >= buy_price">
									<td style="color: red;"><spring:message
											code="reserve_price_not_met"></spring:message></td>
									<td colspan="2"></td>
								</tr>
								<tr>
									<th><spring:message code="bid_history"></spring:message></th>
									<td ng-cloak>{{num_bid}} <spring:message code="bids"></spring:message></td>
									<sec:authorize access="isAuthenticated()">
										<td class="text-right">
											<!--  Bid History View --> <a ng-cloak
											href="/viewbidhistory/{{auction_id}}"> <input
												type="button" class="btn btn-default bidhistory"
												value="Bid History" ng-show="num_bid > 0">
										</a>



										</td>
									</sec:authorize>
								</tr>
								<tr>
									<th><spring:message code="end_date"></spring:message></th>
									<td colspan="2" ng-cloak>{{end_date}}</td>
								</tr>
								<tr>
									<th><spring:message code="start_date"></spring:message></th>
									<td colspan="2" ng-cloak>{{start_date}}</td>
								</tr>
								<tr>
									<th><spring:message code="listed_by"></spring:message></th>
									<!-- 									<td colspan="2"><i class="fa fa-star-o" aria-hidden="true"></i> -->
									<!-- 										<i class="fa fa-star-o rating" aria-hidden="true"></i> <i -->
									<!-- 										class="fa fa-star-o" aria-hidden="true"></i> <i -->
									<!-- 										class="fa fa-star-o" aria-hidden="true"></i> <i -->
									<!-- 										class="fa fa-star-o" aria-hidden="true"></i></td> -->
									<td colspan="2">
										<fieldset class="rating">
											<input type="radio" id="star5" name="rating" value="5" /><label
												class="full" for="star5" title="Awesome - 5 stars"></label>
											<input type="radio" id="star4half" name="rating"
												value="4 and a half" /><label class="half" for="star4half"
												title="Pretty good - 4.5 stars"></label> <input type="radio"
												id="star4" name="rating" value="4" /><label class="full"
												for="star4" title="Pretty good - 4 stars"></label> <input
												type="radio" id="star3half" name="rating"
												value="3 and a half" /><label class="half" for="star3half"
												title="Meh - 3.5 stars"></label> <input type="radio"
												id="star3" name="rating" value="3" /><label class="full"
												for="star3" title="Meh - 3 stars"></label> <input
												type="radio" id="star2half" name="rating"
												value="2 and a half" /><label class="half" for="star2half"
												title="Kinda bad - 2.5 stars"></label> <input type="radio"
												id="star2" name="rating" value="2" /><label class="full"
												for="star2" title="Kinda bad - 2 stars"></label> <input
												type="radio" id="star1half" name="rating"
												value="1 and a half" /><label class="half" for="star1half"
												title="Meh - 1.5 stars"></label> <input type="radio"
												id="star1" name="rating" value="1" /><label class="full"
												for="star1" title="Sucks big time - 1 star"></label> <input
												type="radio" id="starhalf" name="rating" value="half" /><label
												class="half" for="starhalf"
												title="Sucks big time - 0.5 stars"></label>
										</fieldset>
									</td>
								</tr>
							</tbody>

						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- end div row -->

	<!-- more description of item -->
	<div class="col-md-12">
		<!-- group description infor -->
		<div class="list-group">
			<div class="list-group-item">
				<spring:message code="description"></spring:message>
			</div>
			<div class="list-group-item">
				<p ng-cloak>{{product_description}}</p>
			</div>
		</div>
		<!-- group payment infor -->
		<div class="list-group">
			<div class="list-group-item">
				<spring:message code="payment_option"></spring:message>
			</div>
			<div class="list-group-item">
				<P>
					<spring:message code="seller_accepts_wind"></spring:message>
					<br>
					<spring:message code="seller_accepts_cash"></spring:message>
				</P>
			</div>
		</div>
	</div>
</div>
</div>
<!-- ============ End col-md-9 Section ============= -->

<!-- footer -->
<jsp:include page="footer.jsp" />


<!--  Web Socket -->
<script
	src="${pageContext.request.contextPath}/resources/static/js/sockjs-0.3.4.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/static/js/stomp.js"></script>
<script type="text/javascript">
	var id = window.location.href.substring(window.location.href
			.lastIndexOf('/') + 1);
	var stompClient = null;

	function disconnect() {
		if (stompClient != null) {
			stompClient.disconnect();
		}
		console.log("Disconnected");
	}

	function connect() {
		if (stompClient != null) {
			stompClient.disconnect();
		}
		var socket = new SockJS('/hello');
		stompClient = Stomp.over(socket);
		stompClient.connect({}, function(frame) {
			console.log('Connected: ' + frame);
			stompClient.subscribe('/topic/greetings', function(greeting) {
				//showGreeting(JSON.parse(greeting.body).content);
				// Call getAuctionById() after user bidding
				angular.element(document.getElementById('right-content'))
						.scope().getAuctionById(id);

				//Call find all auctions to show real-time data for visitor who view our main page without click on specific product yet
				//angular.element(document.getElementById('mainMenuPage')).scope().findAllAuctions();
				// we cannot call above function to work correctly, so we have to create a button on menu.jsp to be a trigger when user click on bid button
			});
		});

	}

	function sendName() {

		//         	alert("HELLO SEND NAME");
		var name = "Hello"
		stompClient.send("/app/hello", {}, JSON.stringify({
			'name' : name
		}));

	}

	function showGreeting(message) {
		alert(message);
	}
	// connect Web Socket
	connect();
</script>
<!-- End WebSocket -->






<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/main-angular.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#menustand").hide(function() {
			$("#right-content").removeClass('col-md-9');
		});
	});
</script>