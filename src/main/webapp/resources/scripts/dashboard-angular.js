/**
 * 
 */


var app = angular.module('myApp', []);
app.controller('dashboard', function($rootScope, $scope, $http) {
	$scope.bid_date = moment(new Date()).format("YYYY-MM-DD");
//	$scope.bid_date = "2016-08-31";
	$scope.findBidHistoryByDate = function(bid_date){
		$http({
			url : '/rest/dashboard/' + bid_date,
			method : 'GET'
		}).then(function(response){
			$scope.recentBid = response.data.DATA;
			console.log($scope.recentBid);
		})
     }
	$scope.findBidHistoryByDate($scope.bid_date);
})
