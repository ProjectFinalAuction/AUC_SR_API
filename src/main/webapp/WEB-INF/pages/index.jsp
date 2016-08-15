<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAMBODIA AUCTION</title>
<!-- header -->
<jsp:include page="header.jsp"/>
<!-- menu -->
<jsp:include page="menu.jsp"/>
<!-- left content -->
<jsp:include page="left-content.jsp"/>
<!-- right content -->
	
	 <div ng-app="app" ng-controller="ctrl">
		<img ng-repeat="i in items" ng-src="{{getImg(i.ITEM_IMAGE)}}" width="200" height="200"/>
	</div>

<!-- footer -->
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/category-angular.js"></script>
