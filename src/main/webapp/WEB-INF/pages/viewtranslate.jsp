<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Test WebSocket</title>
<!-- header -->
<jsp:include page="header.jsp" />

<!-- menu -->
<jsp:include page="menu.jsp" />

<!-- content -->
<div class="content" id="register" ng-controller="emailVerificationCtrl">
	
		<button type="button" ng-click="addEmailVerification()">Click to verify email</button>
	
	<!-- end div container -->
</div>
<!-- end div main content information -->

<!-- footer -->
<jsp:include page="footer.jsp" />




<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/email-verification.js"></script>