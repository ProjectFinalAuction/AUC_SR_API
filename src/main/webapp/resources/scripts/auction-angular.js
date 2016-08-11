/**
 * 
 */
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http, $rootScope) {
	// select all record to display
	$scope.findAllAuctions = function() {
		$http({
			url : 'http://localhost:8080/rest/auction',
			method : 'GET',

		}).then(function(respone) {
			$scope.auction = respone.data.DATA;
			// alert($scope.auction);
		});
	}
	
	//TODO: TO LIST ALL PRODUCTS FOR CHOOSE TO ADD
	$scope.findAllProducts = function(){		
		$http({
			url : 'http://localhost:9999/api/find-all-products',
			method : 'GET',

		}).then(function(respone) {
			$scope.product = respone.data.DATA;
			
		});
	}
	
	// add record function
	$scope.addAuction = function() {
		$scope.created_date = new Date();
		$scope.created_by = 'admin';
		$http({
			url : 'http://localhost:8080/rest/auction',
			method : 'POST',
			data : {
				"buy_price" : $scope.buy_price,
				"comment" : $scope.comment,
				"created_by" : $scope.created_by,
				"created_date" : $scope.created_date,
				"current_price" : $scope.current_price,
				"end_date" : moment($scope.end_date).format("YYYY-MM-DD"),
				"increment_price" : $scope.increment_price,
				"product_condition" : $scope.product_condition,
				"product_id" : $('#product_id').val(),
				"start_date" : moment($scope.start_date).format("YYYY-MM-DD"),
				"start_price" : $scope.start_price,
				"status" : $scope.status
			}
		}).then(function(respone) {
			 swal("Good job!", "You clicked the button!", "success");
		});
	}

	$scope.loadme = function() {
		alert("me");
	}

		
//	angular.element(document).ready(function () {
//		$("#product_id").find("option").eq(0).remove();	
//    });
	
	// load all record
	//$scope.findAllAuctions();
	
	$scope.findAllProducts();
})