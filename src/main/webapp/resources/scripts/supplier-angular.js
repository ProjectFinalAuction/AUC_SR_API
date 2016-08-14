/**
 * angular get, add, delete, update user
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope,$http,$rootScope){
	// select all record to display
	$scope.findAllSuppliers = function(){
		$http({
			url: 'http://localhost:8080/rest/supplier',
			method: 'GET'
			
		}).then(function(response){
			$scope.supplier = response.data.DATA;
		});
	}
	
	
	// select suplier by id
	$scope.findSupplierById = function(id){
		
		$http({
			url: 'http://localhost:8080/rest/supplier/'+id,
			method: 'GET'
			
		}).then(function(respone){
			$scope.contact_name = respone.data.DATA.contact_name;
			$scope.phone=respone.data.DATA.phone;
			$scope.email = respone.data.DATA.email;
			$scope.address = respone.data.DATA.address;			
			$scope.supplier_id = respone.data.DATA.supplier_id;
		});
	}
	
		
	// add record function
	$scope.addSupplier = function(){
		
		$http({
			url: 'http://localhost:8080/rest/supplier',
			method: 'POST',
			data:{
			  			  
	  			  "address": $scope.address,
	  			  "contact_name": $scope.contact_name,
	  			  "email": $scope.email,
	  			  "phone": $scope.phone
	  			  
			}
		}).then(function(response){
			swal("Good job!", "You clicked the button!", "success");
			// clear input fields
			$scope.address = "";
			$scope.contact_name = "";
			$scope.email = "";
			$scope.phone = "";
			//=======================
		});
	}
	
	// update supplier
	$scope.updateSupplier = function(id){
		
		$http({
			url: 'http://localhost:8080/rest/supplier',
			data: {
				"address": $scope.address,
				"contact_name": $scope.contact_name,
				"email": $scope.email,
				"phone": $scope.phone,
				"supplier_id": id
			},
			method: 'PUT'
		}).then(function(response){
			swal("Update Successfully!", "click this button.", "success");
			$scope.findAllSuppliers();
		},function(error){});
	}
	
	
	
	
	$scope.loadme = function(){
		alert("me");
	};
	
	
	// load all record
	$scope.findAllSuppliers();
})