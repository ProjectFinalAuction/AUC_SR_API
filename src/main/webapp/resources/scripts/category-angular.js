/**
 * 
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope,$http,$rootScope){
	// select all record to display
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
			$scope.category = respone.data.DATA;
		});
	}
	
	//AddSupplier
	$scope.addCategory = function(){
		
		$http({
			url: 'http://localhost:8080/rest/category',
			method: 'POST',
			data:{
			  			  
				"category_description": $scope.category_description,
				"category_name":$scope.category_name,
				"parent_id": $scope.parent_id,
				"status": $scope.status
	  			  
			}
		}).then(function(respone){
			swal({ 
				title: "Success!",
				text: "Category has been inserted.",
			    type: "success" 
			  },
			  function(){
			    window.location.href = 'http://localhost:8080/admin/viewcategory';
			});
		});
	}
	
	
	$scope.loadme = function(){
		alert("me");
	};
	
	// load all record
	$scope.findAllCategories();
})