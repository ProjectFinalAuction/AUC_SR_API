/**
 * 
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope,$http,$rootScope){
	// Get All Category
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
			$scope.maincategory = respone.data.DATA;
		});
	}
	
	//AddCategory
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
	
	//Delete Category
	$scope.deleteCategory = function(category_id){
		swal({
			title: "Are you sure?",
			text: "Your will not be able to recover this category!",
			type: "warning",
			showCancelButton: true,
			confirmButtonColor: "#DD6B55",confirmButtonText: "Yes, delete it!",
			cancelButtonText: "No, cancel plx!",
			closeOnConfirm: false,
			closeOnCancel: false }, 
			function(isConfirm){ 
				if (isConfirm) {
					$http({
						url: 'http://localhost:8080/rest/category/'+ category_id,
						
						method: 'DELETE'
					}).
					success(function(response){
							$scope.findAllCategories();
						});
					swal("Deleted!", "The category has been deleted.", "success");
				} else {
					swal("Cancelled", "Your category is not deleted :)", "error");
				}
			});	
	}
		
	//Get Brand
	$scope.findAllBrands = function(){
		$http({
			url: 'http://localhost:8080/rest/brand',
			method: 'GET',
			
		}).then(function(respone){
			$scope.brand = respone.data.DATA;
		});
	}
	
		
	//Add Brand
	$scope.addBrand = function(){
//		alert("Hello");
		$http({
			url: 'http://localhost:8080/rest/brand',
			method: 'POST',
			data:{
				  "brand_description": $scope.brand_description,
				  "brand_name": $scope.brand_name,
				  "status": $scope.brand_status
	  			  
			}
		}).then(function(respone){
			swal({ 
				title: "Success!",
				text: "Brand has been inserted.",
			    type: "success" 
			  },
			  function(){
			    window.location.href = 'http://localhost:8080/admin/viewbrand';
			});
		});
	}
	
	//Get Category By ID	
	$scope.getCategoryByID = function(categoryObject){
		$scope.mainCategories = angular.copy($scope.category);
		$scope.category_description = categoryObject.category_description;
		$scope.category_id = categoryObject.category_id;
		$scope.category_name = categoryObject.category_name;
		if(categoryObject.status==true){
			$( "#catestatus1" ).prop( "checked", true);
		}
		else{
			$( "#catestatus2" ).prop( "checked", true);
		}
		
		// match parent_id with "type of"
		$scope.mainCat = categoryObject.parent_id;
		// pass parent_id to store in update button
		$scope.parent_id = categoryObject.parent_id;
		
	}
	
	//Update
	$scope.updateCategory = function(id){
		
		$http({
			url: 'http://localhost:8080/rest/category',
			method: 'PUT',
			data:{
				 "category_description": $scope.category_description,
				  "category_id": id,
				  "category_name": $scope.category_name,
				  "parent_id": $scope.mainCat,
				  "status": $scope.status
	  			  
			}
		}).then(function(respone){
			swal({ 
				title: "Success!",
				text: "Category has been updated!",
			    type: "success" 
			  },
			  function(){
				  $scope.findAllCategories();
			});
		});
	}
	
	
	
	
//	.........................................
	$scope.loadme = function(){
		alert("me");
	};
	
	// load all record
	$scope.findAllCategories();
	$scope.findMainCategories();
	$scope.findAllBrands();
})