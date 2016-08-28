/**
 * angular get, add, delete, update user
 */

var app = angular.module("myApp", []);

app.controller("auctionCtrl", function(){
	
});


// TODO: =========BID HISTORY FOR BACK-END============
app.controller('bidHistory', function($scope,$http){
	$scope.userName = "";
	var checkPagination = true;
	var currentPage = 1;
	// select all record to display
	$scope.findAllBidHistory = function(){
		$http({
			url: '/rest/bidhistory?limit=' + 20 +"&page=" + currentPage + "&userName="+$scope.userName,
			method: 'GET',
			
		}).then(function(response){
			$scope.bidHistory = response.data.DATA;
			//pagination
			$scope.pages = response.data.PAGINATION.PAGE;
			$scope.totalpages = response.data.PAGINATION.TOTAL_PAGES;
			$scope.totalcount = response.data.PAGINATION.TOTAL_COUNT;
			if (checkPagination) {
				$scope.setPagination(response.data.PAGINATION);
				checkPagination = false;
			}
		});
	}
	
	// TODO: CTEATE PAGINATION BUTTON
	$scope.setPagination = function(pagination) {
		console.log("PAGINATION==>", pagination);
		$("#PAGINATION").bootpag({
			total : pagination.TOTAL_PAGES,
			page : pagination.PAGE,
			maxVisible : 10,
			leaps : true,
			firstLastUse : true,
			first : 'First',
			last : 'Last',
			wrapClass : 'pagination',
			activeClass : 'active',
			disabledClass : 'disabled',
			nextClass : 'next',
			prevClass : 'prev',
			lastClass : 'last',
			firstClass : 'first'
		});
		$("#PAGINATION ul").addClass("pagination");
	}

	$('#PAGINATION').bootpag().on("page", function(event, page) {
		checkPagination = false;
		currentPage = page;
		$scope.findAllBidHistory();
	});
	
	$scope.findAllBidHistory();
	
})

// TODO: =====+++++++++++++++++++++++++++++++++++++++++====BID HISTORY BY USER_ID FOR FRONT-END============
app.controller('userBidHistory', ['$scope', '$http', '$timeout', 'datetime', function ($scope, $http, $timeout, datetime, $rootScope){
	
	// Show or Hide Panel
	$scope.controlPanel = function(){
        $scope.credit = 'true';
       
     }
	
	// select Bid History By UserName to display
	$scope.findBidByUserId = function(user_id){
		
		$http({
			url: '/rest/bidhistory/' + user_id,
		}).then(function(response){
			$scope.userBidHistory = response.data.DATA;
			//$scope.processAuctionItems($scope.userBidHistory);
			
			
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
	$scope.tick = function () {
        $scope.currentTime = moment();
        $scope.processAuctionItemsItems($scope.userBidHistory);
        
        $timeout($scope.tick, 1000);
        
    }
	
    $scope.processAuctionItemsItems = function (data) {
        angular.forEach(data, function (item) {
            item.remainingTime = datetime.getRemainigTime(item.auction.end_date);
        });
    }
    
    
	$scope.findBidByUserId(USER_ID);
	// load remaining date/time
	$scope.currentTime = moment(); 
	$timeout($scope.tick, 1000);		
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






