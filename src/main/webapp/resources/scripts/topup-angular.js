/**
 * 
 */


var app = angular.module('myApp',[]);

app.controller('ctrlTopup', function($scope, $http){
	
	//TODO:  GET ALL USER CREDIT WITH ENDING AMOUNT 
	$scope.findAllUserCreditWithEndingAmount = function(){		
		$http({
			url : '/rest/user-credit/user-ending-amount',
			method : 'GET'
		}).then(function(response) {
			$scope.userEndingAmount = response.data.DATA;
			
		});
	}
	
	
	//TODO: INSERT TOPUP PRICE TO BID HISTORY 
	$scope.addTopUp = function(){
		$http({
          method: 'POST',
          url: '/rest/top-up/add-top-up',
          data: {
        	  
        	  "amount": $scope.balance,
        	  "currency": $scope.curr,
        	  "user_id" : $scope.user_id,
          }
      }).then(function (response) {
    	  swal({ 
				title: "Success!",
				text: "TopUp Successfully..! :)",
			    type: "success",
			    timer : 1000,
			    showConfirmButton : false
    	  });
    	  $scope.findAllUserCreditWithEndingAmount();
      });
	}
	
	
	//TODO: GET ALL USER TO DISPLAY IN SELECT OPTION 
	$scope.getAllUsers = function(){

		$http({
			url: '/rest/user',
			method: 'GET',
			
		}).then(function(response){
			$scope.user = response.data.DATA;
		});
	}
	
	$scope.getAllUsers();
	$scope.findAllUserCreditWithEndingAmount();
})