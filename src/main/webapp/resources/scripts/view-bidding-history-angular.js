var app = angular.module('myApp', []);

// declare 3 controllers that conflicts with our controller(mailCtrl)
app.controller('auctionCtrl', function(){})
//app.controller('categoryCtrl', function(){})
//app.controller('myCtrl', function(){});

//=== end declare conflicted controllers=======================


app.controller('biddingHistoryCtrl', function($scope,$http,$rootScope){
	$scope.viewBiddingHistory = function(auction_id){
		//alert("Hello");
		$http({
			url: '/rest/bidhistory/find-num-bid-and-bidder-in-auction-product-by-auc-id/' + 1,
			method: 'GET'
		}).then(function(response){
			$scope.auctionBidHistory = response.data.DATA;
			//////
			
			/// code here
			
		});
	}
	$scope.viewBiddingHistory(1);
	
	
	
	

});