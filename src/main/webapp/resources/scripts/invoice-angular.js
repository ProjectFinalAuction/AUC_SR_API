/**
 * 
 */


var app = angular.module('myApp',[]);

app.controller('invoiceCtrl', function($scope, $http){
	
	//TODO:  GET ALL INVOICE DETAILS 
	$scope.findAllInvoiceDetails = function(){		
		$http({
			url : '/rest/invoice',
			method : 'GET'
		}).then(function(response) {
			$scope.invoiceDetail = response.data.DATA;
			
		});
	}
	
	$scope.findAllInvoiceDetails();
})