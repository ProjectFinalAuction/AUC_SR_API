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
	
	$scope.ac_id = $('#ac_id').val();
//	alert($scope.ac_id);
	
	//TODO: select all record to display
	$scope.findAllAuctions = function() {
		$http({
			url : 'http://localhost:8080/rest/auction?limit=' + 15 +"&page=" + $scope.currentPage + "&productName="+$scope.productName,
			method : 'GET'
		}).then(function(response) {
			$scope.auction = response.data.DATA;
		});
	}
	
	// TODO: get one record function
	$scope.getAuctionById = function(id){
		$http({
			url: 'http://localhost:8080/rest/auction/' + $scope.ac_id,
			method: 'GET'
		}).then(function(response){
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
		});
	}

	// load all record
	$scope.findAllAuctions();
	$scope.getAuctionById();
})

app.controller("AuctionItemsController", ['$scope', '$http', '$timeout', 'datetime', function ($scope, $http, $timeout, datetime) {
		    var getAuctionItems = function () {
			       	data = [
			       		{
			       			"Name" : "Honda Dream",
			       			"NumberOfBids" : 100,
			       			"CurrentBid" : 1000,
			       			"AuctionEndDateTime" : "Tuesday, August 30, 2016 12:00 AM"
			       		},
			       		{
			       			"Name" : "Ipad",
			       			"NumberOfBids" : 1000,
			       			"CurrentBid" : 999,
			       			"AuctionEndDateTime" : "2016-08-20 07:50:10"
			       		}
			       	];

		            processAuctionItems(data);

		            $scope.auctions = data;
		    };
		    var tick = function () {
		        $scope.currentTime = moment();
		        processAuctionItems($scope.auctions);
		        $timeout(tick, 1000);
		    }
		    var processAuctionItems = function (data) {
		        angular.forEach(data, function (item) {
		            item.remainingTime = datetime.getRemainigTime(item.AuctionEndDateTime);
		        });
		    }

		    $scope.currentTime = moment();

		    getAuctionItems();

		    $timeout(tick, 1000);

		    $timeout(getAuctionItems, 10000);

		}]);

		AuctionApplication.factory('datetime', ['$timeout', function ($timeout) {
		    var duration = function (timeSpan) {
		        var days = Math.floor(timeSpan / 86400000);
		        var diff = timeSpan - days * 86400000;
		        var hours = Math.floor(diff / 3600000);
		        diff = diff - hours * 3600000;

		        var minutes = Math.floor(diff / 60000);
		        diff = diff - minutes * 60000;

		        var secs = Math.floor(diff / 1000);

		        return { 'days': days, 'hours': hours, 'minutes': minutes, 'seconds': secs };
		    };

		    function getRemainigTime(referenceTime) {
		        var now = moment().utc();
		        return moment(referenceTime) - now;
		    }
		    return {
		        duration: duration,
		        getRemainigTime: getRemainigTime
		    };
		}]);

		AuctionApplication.filter('durationview', ['datetime', function (datetime) {
		    return function (input, css) {
		        var duration = datetime.duration(input);
		        return duration.days + "d:" + duration.hours + "h:" + duration.minutes + "m:" + duration.seconds + "s";
		    };
		}]);