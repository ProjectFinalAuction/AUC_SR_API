/**
 * angular get, add, delete, update user
 */

var AuctionApplication = angular.module("myApp", []);

AuctionApplication.controller("myCtrl", [
		'$scope',
		'$http',
		'$timeout',
		'datetime',
		function($scope, $http, $timeout, datetime) {
			var getAuctionItems = function(id) {

				$http({
					url : 'http://localhost:8080/rest/auction/bid/' + id,
					method : 'GET'
				}).then(function(response) {
					d = response.data.DATA;
					
					data = [ {
						"Name" : d.product.product_name,
						"NumberOfBids" : d.num_bid,
						"CurrentBid" : d.bid_current_price,
						"AuctionEndDateTime" : d.end_date
					} ];
					/*
					 * , { "Name" : "ទូរស័ព្ទ IPhone ៧", "NumberOfBids" : 1000,
					 * "CurrentBid" : 999, "AuctionEndDateTime" : "2016-08-20
					 * 07:50:50" }
					 */
					// ];
					processAuctionItems(data);
					//
					$scope.auctions = data;

				});

			};

			var tick = function() {
				$scope.currentTime = moment();
				processAuctionItems($scope.auctions);
				$timeout(tick, 1000);
			}

			var processAuctionItems = function(data) {
				angular.forEach(data, function(item) {
					item.remainingTime = datetime
							.getRemainigTime(item.AuctionEndDateTime);
				});
			}

			$scope.currentTime = moment();

			// getAuctionItems();
			getAuctionItems(1); // test

			$timeout(tick, 1000);

			// $timeout(getAuctionItems, 10000);

		} ]);

AuctionApplication.factory('datetime', [ '$timeout', function($timeout) {
	var duration = function(timeSpan) {
		var days = Math.floor(timeSpan / 86400000);
		var diff = timeSpan - days * 86400000;
		var hours = Math.floor(diff / 3600000);
		diff = diff - hours * 3600000;

		var minutes = Math.floor(diff / 60000);
		diff = diff - minutes * 60000;

		var secs = Math.floor(diff / 1000);

		return {
			'days' : days,
			'hours' : hours,
			'minutes' : minutes,
			'seconds' : secs
		};
	};

	function getRemainigTime(referenceTime) {
		var now = moment().utc();
		return moment(referenceTime) - now;
	}

	return {
		duration : duration,
		getRemainigTime : getRemainigTime
	};
} ]);

AuctionApplication.filter('durationview', [
		'datetime',
		function(datetime) {
			return function(input, css) {
				var duration = datetime.duration(input);
				return duration.days + " ថ្ងៃ:" + duration.hours + " ម៉ោង:"
						+ duration.minutes + " នាទី:" + duration.seconds
						+ " វិនាទី";
			};
		} ]);
