/**
 * 
 */

var app = angular.module('myApp',[]);
app.controller('myCtrl', function($scope, $http, $rootScope) {
	$scope.currentDate = new Date();
	$scope.created_date = new Date();
	$scope.created_by = 'admin';
	// select all record to display
	$scope.findAllAuctions = function() {
		$http({
			url : 'http://localhost:8080/rest/auction',
			method : 'GET',

		}).then(function(respone) {
			$scope.auction = respone.data.DATA;
		});
	}
	
	//TODO: TO LIST ALL PRODUCTS FOR CHOOSE TO ADD
	$scope.findProductsHasSupplier = function(id){		
		$http({
			url : 'http://localhost:8080/rest/product/product-of-supplier/'+id,
			method : 'GET',

		}).then(function(respone) {
			$scope.product = respone.data.DATA;
		});
	}
	
	//TODO: TO LIST ALL SUPPLIER FOR CHOOSE TO ADD
	$scope.findSupplersInProducts = function(){		
		$http({
			url : 'http://localhost:8080/rest/supplier/supplier-in-product',
			method : 'GET',

		}).then(function(respone) {
			$scope.supplier = respone.data.DATA;
			
		});
	}
	
	// add record function
	$scope.addAuction = function() {
		$http({
			url : 'http://localhost:8080/rest/auction',
			method : 'POST',
			data : {
				"buy_price" : $scope.buy_price,
				"comment" : $scope.comment,
				"created_by" : $scope.created_by,
				"created_date" : $scope.created_date,
				"current_price" : $scope.current_price,
				"end_date" : moment($('#datepickerEnd').val()).format("YYYY-MM-DD"),
				"increment_price" : $scope.increment_price,
				"product_condition" : $scope.product_condition,
				"product_id" : $scope.product_id,
				"start_date" : moment($scope.currentDate).format("YYYY-MM-DD"),
				"start_price" : $scope.start_price,
				"status" : $scope.status
			}
		}).then(function(respone) {
			swal({ 
				title: "Success!",
				text: "Auction has been inserted.",
			    type: "success" 
			  },
			  function(){
			    window.location.href = 'http://localhost:8080/admin/viewauction';
			});
		});
	}
	
	// get one record function
	$scope.getAuctionById = function(id){
		$rootScope.rootID = id;
		$http({
			url: 'http://localhost:8080/rest/auction/'+id,
			method: 'GET'
		}).then(function(respone){
			$scope.sup = respone.data.DATA.product.supplier.supplier_id;
			
			$scope.findProductsHasSupplier($scope.sup);
			$scope.pro = respone.data.DATA.product.product_id;
			
			$scope.product_condition = respone.data.DATA.product_condition
			$scope.start_price = respone.data.DATA.start_price;
			$scope.increment_price = respone.data.DATA.increment_price;
			$scope.buy_price = respone.data.DATA.buy_price;
			$scope.start_date = moment(respone.data.DATA.start_date).format("MM/DD/YYYY");
			$scope.end_date = moment(respone.data.DATA.end_date).format("MM/DD/YYYY");
			$scope.status = respone.data.DATA.status;
			$scope.comment = respone.data.DATA.comment;			
		});
	}
	
	$scope.updateAuction = function(){
//		alert($rootScope.rootID);
		$http({
			url: 'http://localhost:8080/rest/auction',
			method: 'PUT',
			data:{
				"auction_id" : $rootScope.rootID,
				"buy_price" : $scope.buy_price,
				"comment" : $scope.comment,
				"created_by" : $scope.created_by,
				"created_date" : $scope.created_date,
				"current_price" : $scope.current_price,
				"end_date" : moment($('#datepickerEnd').val()).format("YYYY-MM-DD"),
				"increment_price" : $scope.increment_price,
				"product_condition" : $scope.product_condition,
				"product_id" : $scope.pro,
				"start_date" : moment($scope.start_date).format("YYYY-MM-DD"),
				"start_price" : $scope.start_price,
				"status" : $scope.status
			} 
		}).then(function(respone){
			swal({ 
				title: "Success!",
				text: "Auction has been updated.",
			    type: "success" 
			  },
			  function(){
			    window.location.href = 'http://localhost:8080/admin/viewauction';
			});
		});
	}
	
	$scope.deleteAuction = function(id){
		swal({
		   	title: "Are you sure?",
		   	text: "Your will not be able to recover this imaginary file!",
		   	type: "warning",
		   	showCancelButton: true,
		   	confirmButtonColor: "#DD6B55",confirmButtonText: "Yes, delete it!",
		   	cancelButtonText: "No, cancel plx!",
		   	closeOnConfirm: false,
		  	closeOnCancel: false }, 
		function(isConfirm){ 
			 if (isConfirm) {
				   swal({
					   	title: "Are you sure?",
					   	text: "Your will not be able to recover this imaginary file!",
					   	type: "warning",
					   	showCancelButton: true,
					   	confirmButtonColor: "#DD6B55",confirmButtonText: "Yes, delete it!",
					   	cancelButtonText: "No, cancel plx!",
					   	closeOnConfirm: false,
					  	closeOnCancel: false }, 
						function(isConfirm){ 
						   if (isConfirm) {
						      	swal("Deleted!", "Auction has been deleted.", "success");
						      	$http({
									url: 'http://localhost:8080/rest/auction/'+id,
									method: 'DELETE'
							   }).then(function(respone){
									window.location.href = 'http://localhost:8080/admin/viewauction';
							   });
						   } else {
						      swal("Cancelled", "Auction is safe :)", "error");
						   }
						});
			   } else {
			      swal("Cancelled", "Your imaginary file is safe :)", "error");
			   }
			});
//		swal({
//			title: "Are you sure?",
//			text: "Your will not be able to recover this imaginary file!",
//			type: "warning",
//			showCancelButton: true,
//			confirmButtonColor: "#DD6B55",confirmButtonText: "Yes, delete it!",
//			cancelButtonText: "No, cancel plx!",
//			closeOnConfirm: false,
//			closeOnCancel: false }, 
//		function(isConfirm){ 
//			if (isConfirm) {
//			   SweetAlert.swal("Deleted!", "Auction has been deleted.", "success");
//			   $http({
//					url: 'http://localhost:8080/rest/auction/'+id,
//					method: 'DELETE'
//			   }).then(function(respone){
//					window.location.href = 'http://localhost:8080/admin/viewauction';
//			   });
//			} else {
//			   SweetAlert.swal("Cancelled", "Auction is safe :)", "error");
//			}
//		});
	}
	
	$scope.alertme = function(){
		alert("Me");
	}
	
//	$scope.$watch('status', function(x){
//		alert(x);
//	});
	// load all record
	$scope.findAllAuctions();
	$scope.findSupplersInProducts();
})