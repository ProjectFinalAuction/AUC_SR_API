/**
 * 
 */

var app = angular.module('myApp', []);
app.controller('categoryCtrl', function($scope,$http,$rootScope){
	// Get All Category
	$scope.findAllCategories = function(){
		$http({
			url: 'http://localhost:8080/rest/category',
			method: 'GET',
			
		}).then(function(respone){
			$scope.category = respone.data.DATA;
		});
	}
	
	//Select Main Category
	$scope.findMainCategories = function(){
		$http({
			url: 'http://localhost:8080/rest/category/find-main-category',
			method: 'GET',
			
		}).then(function(respone){
			$scope.maincategory = respone.data.DATA;
		});
	}
	
	//Get Brand
	$scope.findAllBrands = function(){
		$http({
			url: 'http://localhost:8080/rest/brand',
			method: 'GET',
			
		}).then(function(respone){
			$scope.brand = respone.data.DATA;
		});
	}
	

	// load all record
	$scope.findAllCategories();
	$scope.findMainCategories();
	$scope.findAllBrands();
})


//TODO: SHOW AUCTON TO VIEW CLIENTS
app.controller('auctionCtrl', function($scope, $http, $rootScope) {
	$scope.loop_auc_id = $("#loop_auc_id").val();
//	alert($scope.loop_auc_id);
	
	//TODO: Get auction product by category id
	$scope.getAuctionProductByCategoryID = function(id){
		$http({
			url: ' http://localhost:8080/rest/auction/auc-pro-category/' +$scope.loop_auc_id,
			method: 'GET'
		}).then(function(response){
			$scope.auctionProduct = response.data.DATA;
			$scope.category_name = response.data.DATA.product.category.category_name;
			$scope.product_name = response.data.DATA.product.product_name;
			$scope.product_condition = response.data.DATA.product.product_condition;
			$scope.current_price = response.data.DATA.current_price;
			$scope.start_price = response.data.DATA.start_price;
			$scope.increment_price = response.data.DATA.increment_price;
//			$scope.buy_price = response.data.DATA.buy_price;
			$scope.product_condition = response.data.DATA.product_condition;
			$scope.start_date = moment(response.data.DATA.start_date).format("LLLL");
			$scope.end_date = moment(response.data.DATA.end_date).format("LLLL");
			$scope.status = response.data.DATA.status;
			$scope.comment = response.data.DATA.comment;
			alert(response.data.DATA);
		});
	}

	
//	Load Record
	$scope.getAuctionProductByCategoryID();	
})