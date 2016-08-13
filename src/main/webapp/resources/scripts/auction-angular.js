/**
 * 
 */

// for loop data to view auction
var app1 = angular.module('vAucApp',[]);
app1.controller('vAucCtrl', function($scope, $http, $rootScope) {
	
	$scope.currentDate = new Date();
	// select all record to display
	$scope.findAllAuctions = function() {
		$http({
			url : 'http://localhost:8080/rest/auction',
			method : 'GET',

		}).then(function(respone) {
			$scope.auction = respone.data.DATA;
		});
	}
	
	// get one record function
	$scope.getAuctionById = function(id){
		$http({
			url: 'http://localhost:8080/rest/auction/'+id,
			method: 'GET'
		}).then(function(respone){
//			$scope.contact_name = respone.data.DATA.supplier.contact_name;
//			$scope.product_name = respone.data.DATA.product.product_name;
//			$scope.product_condition = respone.data.DATA.product_condition
			$scope.start_price = respone.data.DATA.start_price;
//			$scope.increment_price = respone.data.DATA.increment_price;
//			$scope.buy_price = respone.data.DATA.buy_price;
//			$scope.start_date = respone.data.DATA.start_date;
//			$scope.end_date = respone.data.DATA.end_date;
//			$scope.status = respone.data.DATA.status;
//			$scope.comment = respone.data.DATA.comment;
//			console.log(respone.data.DATA.start_price);
		});
	}
	
	
	$scope.alertme = function(){
		alert("Me");
	}

	//	load function
	$scope.findAllAuctions();
})


var app = angular.module('myApp',['angular.filter']);
app.controller('myCtrl', function($scope, $http) {
	$scope.currentDate = new Date();
	
	$scope.currentDate = new Date();
	// select all record to display
	$scope.findAllAuctions = function() {
		$http({
			url : 'http://localhost:8080/rest/auction',
			method : 'GET',

		}).then(function(respone) {
			$scope.auction = respone.data.DATA;
		});
	}
	
	//TODO: TO LIST ALL PRODUCTS FOR CHOOSE TO ADD
	$scope.findAllProducts = function(){		
		$http({
			url : 'http://localhost:8080/rest/product',
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
				"end_date" : moment($('#datepickerEnd').val()).format("YYYY-MM-DD"),
				"increment_price" : $scope.increment_price,
				"product_condition" : $scope.product_condition,
				"product_id" : $('#product').val(),
				"start_date" : moment($scope.currentDate).format("YYYY-MM-DD"),
				"start_price" : $scope.start_price,
				"status" : $scope.status
			}
		}).then(function(respone) {;
			swal({ 
				title: "Success!",
				text: "Auction has been inserted.",
			    type: "success" 
			  },
			  function(){
			    window.location.href = 'http://localhost:8080/admin/viewauction';
			});
		});
	}
	
	
	// get one record function
	$scope.getAuctionById = function(id){
		$rootScope.ids = id;
		alert($scope.start_price);
		uhuh
		$http({
			url: 'http://localhost:8080/rest/auction/'+id,
			method: 'GET'
		}).then(function(respone){
//			$scope.contact_name = respone.data.DATA.supplier.contact_name;
//			$scope.product_name = respone.data.DATA.product.product_name;
//			$scope.product_condition = respone.data.DATA.product_condition
			$scope.start_price = respone.data.DATA.start_price;
//			$scope.increment_price = respone.data.DATA.increment_price;
//			$scope.buy_price = respone.data.DATA.buy_price;
//			$scope.start_date = respone.data.DATA.start_date;
//			$scope.end_date = respone.data.DATA.end_date;
//			$scope.status = respone.data.DATA.status;
//			$scope.comment = respone.data.DATA.comment;
		});
	}
	
	$scope.alertme = function(){
		alert("Me");
	}
		
	// load all record
	$scope.findAllAuctions();
	$scope.findAllProducts();
})