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
<div ng-app="myApp" ng-controller="myCtrl">
    	<div class="row">
       		<div class="col-xs-5" ng-repeat="auction in auctions">
       		<div class="panel panel-info">
        <div class="panel-body">
         <h3>{{auction.Name}}</h3>
         <div><strong>Bids placed:</strong> {{auction.NumberOfBids}}</div>
         <div><strong>Current Bid:</strong> {{auction.CurrentBid | currency}}</div>
         <div><strong>Auction ends in</strong></div>
         <div><h3 class="text-primary"> {{auction.remainingTime | durationview}}</h3></div>
        </div>
       </div>
      </div>
     </div>
    </div>

<!-- footer -->
<jsp:include page="footer.jsp" />
<script type="text/javascript" src="http://momentjs.com/downloads/moment-with-locales.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/bidhistory-angular.js"></script>
