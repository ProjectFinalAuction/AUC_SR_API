/**
 * angular get, add, delete, update user
 */

var app = angular.module('myApp', []);

//declare 3 controllers that conflicts with our controller(mailCtrl)
app.controller('auctionCtrl', function(){})
app.controller('categoryCtrl', function(){})
app.controller('myCtrl', function(){});
//=== end declare conflicted controllers=======================


app.controller('realTimeCtrl', function($scope,$http,$rootScope){
	$scope.realTime = function(){
		//alert("HELLO");
		//connect();
		sendName();
	}
	
});
	connect();
