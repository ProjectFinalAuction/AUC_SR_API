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
	$scope.productName = "";
	$scope.currentPage = 1;
	//TODO: select all record to display
	$scope.findAllAuctions = function() {
		$http({
			url : 'http://localhost:8080/rest/auction?limit=' + 8 +"&page=" + $scope.currentPage + "&productName="+$scope.productName,
			method : 'GET'
		}).then(function(response) {
			$scope.auction = response.data.DATA;
		});
	}
	
	// TODO: get one record function
	$scope.getAuctionById = function(id){
		$rootScope.rootID = id;
//		alert($scope.product_name);
		$http({
			url: 'http://localhost:8080/rest/auction/'+id,
			method: 'GET'
		}).then(function(response){
			$scope.category_name = response.data.DATA.product.category.category_name;
			$scope.product_description=response.data.DATA.product.product_description;
			
//			$scope.findProductsHasSupplier($scope.sup);
			$scope.pro = response.data.DATA.product.product_id;
			$scope.product_name = response.data.DATA.product.product_name;
			$scope.product_condition = response.data.DATA.product_condition;
			$scope.start_price = response.data.DATA.start_price;
			$scope.increment_price = response.data.DATA.increment_price;
			$scope.buy_price = response.data.DATA.buy_price;
			$scope.start_date = moment(response.data.DATA.start_date).format("MM/DD/YYYY");
			$scope.end_date = moment(response.data.DATA.end_date).format("MM/DD/YYYY");
			$scope.status = response.data.DATA.status;
			$scope.comment = response.data.DATA.comment;			
		});
	}

	// load all record
	$scope.findAllAuctions();
})