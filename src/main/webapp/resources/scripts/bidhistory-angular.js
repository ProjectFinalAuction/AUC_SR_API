/**
 * angular get, add, delete, update user
 */

var app = angular.module("myApp", []);

app.controller("auctionCtrl", function(){
	
});

/*app.controller("myCtrl", [
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
					
					 * , { "Name" : "ទូរស័ព្ទ IPhone ៧", "NumberOfBids" : 1000,
					 * "CurrentBid" : 999, "AuctionEndDateTime" : "2016-08-20
					 * 07:50:50" }
					 
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

app.factory('datetime', [ '$timeout', function($timeout) {
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

app.filter('durationview', [
		'datetime',
		function(datetime) {
			return function(input, css) {
				var duration = datetime.duration(input);
				return duration.days + " ថ្ងៃ:" + duration.hours + " ម៉ោង:"
						+ duration.minutes + " នាទី:" + duration.seconds
						+ " វិនាទី";
			};
		} ]);
*/

// TODO: =========BID HISTORY FOR BACK-END============
app.controller('bidHistory', function($scope,$http){
	
	// select all record to display
	$scope.findAllBidHistory = function(){
		$http({
			url: 'http://localhost:8080/rest/bidhistory',
			method: 'GET',
			
		}).then(function(respone){
			$scope.bidHistory = respone.data.DATA;
		});
	}
	
	$scope.findAllBidHistory();
})

// TODO: =========BID HISTORY BY USER_ID FOR FRONT-END============
app.controller('userBidHistory',['$scope', '$http', '$timeout', 'datetime', function ($scope, $http, $timeout, datetime, $rootScope){
	
	// Show or Hide Panel
	$scope.controlPanel = function(){
        $scope.credit = 'true';
       
     }
	
	// select Bid History By UserName to display
	$scope.findBidByUserId = function(user_id){
		
		$http({
			url: 'http://localhost:8080/rest/bidhistory/' + user_id,
		}).then(function(response){
			$scope.userBidHistory = response.data.DATA;
			$scope.processAuctionItems($scope.userBidHistory);
		});
	}
	
	/*checkout*/
	$scope.checkOut = function(item){
		onInvoice();
		$('#created-date').html(item.auction.end_date);
		$('#item-name').html(item.auction.product.product_name);
		$('#unit-price').html(item.auction.current_price);
		$('#total-price').html(item.auction.current_price);
		$('#sub-total').html(item.auction.current_price);
		$('#total').html(item.auction.current_price);
		$('#address').html(item.user.address);
	}

	//=================================================================
	//TODO: INSERT BID PRICE TO BID HISTORY 
	$scope.addTopUp = function(){
		$http({
          method: 'POST',
          url: '/rest/top-up',
          data: {
        	  "amount": $scope.balance,
        	  "currency": $('.selectCurr').val(),
          }
      }).then(function (response) {
    	  	$scope.ending_amount = response.data.DATA.ending_amount;
    	  	if(response.data.CODE=="9999"){
    	  		alert("YOUR TOP UP BALANCE " + response.data.DATA.amount);
    	  	}
//    	  	alert(response.data.DATA.ending_amount);
      });
	}
	
	$scope.userCredit = function(userID){
		$http({
	          method: 'GET',
	          url: '/rest/user-credit/'+ userID
	      }).then(function (response) {
	    	  	$scope.ending_amount = response.data.DATA.ending_amount;
	      });
	}
	$scope.userCredit(USER_ID);
	//===============================================
    /*$scope.tick = function () {
        $scope.currentTime = moment();
        $scope.processAuctionItems($scope.userBidHistory);
        $timeout($scope.tick, 1000);
    }
    
    $scope.processAuctionItems = function (data) {
        data.remainingTime = datetime.getRemainigTime(data.auction.end_date);
    }
    
    $timeout($scope.tick, 1000);
    $timeout($scope.userBidHistory, 10000);
	$scope.currentTime = moment();*/ 
	
	$scope.findBidByUserId(USER_ID);
		
}]);

app.factory('datetime', ['$timeout', function ($timeout) {
	
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

app.filter('durationview', ['datetime', function (datetime) {
    return function (input, css) {
        var duration = datetime.duration(input);
        
        return duration.days + "days, " + duration.hours + "h:" + duration.minutes + "m:" + duration.seconds + "s";
    };
}]);





