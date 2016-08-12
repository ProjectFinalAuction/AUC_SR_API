<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	
	<!-- <div ng-app="app" ng-controller="ctrl">
		<img ng-repeat="i in items" ng-src="{{getImg(i.ITEM_IMAGE)}}" width="200" height="200"/>
	</div> -->

<!-- footer -->
<jsp:include page="footer.jsp"/>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/category-angular.js"></script>
<!-- <script type="text/javascript">
	var app = angular.module('app', []);
	app.controller('ctrl', function($scope, $http){
		var url = 'http://localhost:9999/api/';
		$scope.loadProduct = function(){
			alert(1);
			$http({
				url: "http://api.assva.com/api/item",
				method: 'GET'
			}).then(function(res){
				console.log(res);
				$scope.items = res.data.DATA;
			});
		}
		
		$scope.getImg = function(img){
			return 'http://api.assva.com' + img.split("#")[0];
		}
		
		$scope.loadProduct();
		
	});
</script> -->