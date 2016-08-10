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
//			alert($scope.auction);
		});
	}
	
	// add record function
	$scope.addAuction = function(){
		$scope.created_date = new Date();
		$scope.created_by = 'admin';
		$http({
			url: 'http://localhost:8080/rest/auction',
			method: 'POST',
			data:{
				  "auction_id": 0,
				  "buy_price": 0,
				  "comment": "string",
				  "created_by": "string",
				  "created_date": "2016-08-09",
				  "current_price": 0,
				  "end_date": "2016-08-09",
				  "increment_price": 0,
				  "product_condition": "string",
				  "product_id": 0,
				  "start_date": "2016-08-09",
				  "start_price": 0,
				  "status": true
			}
		}).then(function(respone){
//			swal("Good job!", "You clicked the button!", "success");
		});

	$scope.loadme = function() {
		alert("me");
	}

	// load all record
	$scope.findAllAuctions();
})