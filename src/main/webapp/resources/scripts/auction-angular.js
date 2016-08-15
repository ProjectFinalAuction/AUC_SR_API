/**
 * GET ALL AUCTIONS
 * GET SUPPLIER AND PRODUCT
 * GET A RECORD AUCTION
 * UPDATE AUCTION
 */

var app = angular.module('myApp',[]);
app.controller('myCtrl', function($scope, $http, $rootScope) {
	$scope.currentDate = new Date();
	$scope.created_date = new Date();
	$scope.created_by = 'admin';
	$scope.productName="";
	
	var checkPagination = true;
	var currentPage = 1;

	//TODO: select all record to display
	$scope.findAllAuctions = function() {
		$http({
			url : 'http://localhost:8080/rest/auction?limit=' + 2 +"&page=" + currentPage + "&productName="+$scope.productName,
			method : 'GET'
		}).then(function(response) {
			$scope.auction = response.data.DATA;
			$scope.pages = response.data.PAGINATION.PAGE;
			$scope.totalpages = response.data.PAGINATION.TOTAL_PAGES;
			$scope.totalcount = response.data.PAGINATION.TOTAL_COUNT;
			if(checkPagination){
				$scope.setPagination(response.data.PAGINATION);
				checkPagination = false;
			}
		});
	}
	
	//TODO: SEARCH BY PRODUCT NAME
	$scope.searchProName = function(proName){
		$http({
			url : 'http://localhost:8080/rest/auction?limit=' + 2 +"&page=" + currentPage + "&productName="+proName,
			method : 'GET'
		}).then(function(response) {
			$scope.auction = response.data.DATA;
			if(checkPagination){
				$scope.setPagination(response.data.PAGINATION);
			}
		});
	}
	
	//TODO: CTEATE PAGINATION BUTTON
	$scope.setPagination = function(pagination){
		console.log("PAGINATION==>", pagination);
		$("#PAGINATION").bootpag({
	        total: pagination.TOTAL_PAGES,
	        page: pagination.PAGE,
	        maxVisible: 10,
	        leaps: true,
	        firstLastUse: true,
	        first: 'First',
	        last: 'Last',
	        wrapClass: 'pagination',
	        activeClass: 'active',
	        disabledClass: 'disabled',
	        nextClass: 'next',
	        prevClass: 'prev',
	        lastClass: 'last',
	        firstClass: 'first'
	    }); 
		$("#PAGINATION ul").addClass("pagination");
	}
	
	$('#PAGINATION').bootpag().on("page", function(event, page){
		checkPagination = false;
		currentPage = page;
		$scope.findAllAuctions();
	});
	
	
	//TODO: TO LIST ALL PRODUCTS FOR CHOOSE TO ADD
	$scope.findProductsHasSupplier = function(id){		
		$http({
			url : 'http://localhost:8080/rest/product/product-of-supplier/'+id,
			method : 'GET',

		}).then(function(response) {
			$scope.product = response.data.DATA;
		});
	}
	
	//TODO: TO LIST ALL SUPPLIER FOR CHOOSE TO ADD
	$scope.findSupplersInProducts = function(){		
		$http({
			url : 'http://localhost:8080/rest/supplier/supplier-in-product',
			method : 'GET',

		}).then(function(response) {
			$scope.supplier = response.data.DATA;
			
		});
	}
	
	// TODO: add record function
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
		}).then(function(response) {
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
	
	// TODO: get one record function
	$scope.getAuctionById = function(id){
		$rootScope.rootID = id;
		$http({
			url: 'http://localhost:8080/rest/auction/'+id,
			method: 'GET'
		}).then(function(response){
			$scope.sup = response.data.DATA.product.supplier.supplier_id;
			
			$scope.findProductsHasSupplier($scope.sup);
			$scope.pro = response.data.DATA.product.product_id;
			
			$scope.product_condition = response.data.DATA.product_condition
			$scope.start_price = response.data.DATA.start_price;
			$scope.increment_price = response.data.DATA.increment_price;
			$scope.buy_price = response.data.DATA.buy_price;
			$scope.start_date = moment(response.data.DATA.start_date).format("MM/DD/YYYY");
			$scope.end_date = moment(response.data.DATA.end_date).format("MM/DD/YYYY");
			$scope.status = response.data.DATA.status;
			$scope.comment = response.data.DATA.comment;			
		});
	}
	
	//	TODO: UPDATE FUNCTION 
	$scope.updateAuction = function(){
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
		}).then(function(response){
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

	
//	$scope.alertme = function(){
//		alert("Me");
//	}
	
//	$scope.$watch('status', function(x){
//		alert(x);
//	});
	
	// load all record
	$scope.findAllAuctions();
	$scope.findSupplersInProducts();
})