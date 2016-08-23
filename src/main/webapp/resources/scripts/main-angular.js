/**
 * 
 */

var app = angular.module('myApp', []);
app.controller('categoryCtrl', function($scope,$http,$rootScope){
	// Get All Category
	$scope.findAllCategories = function(){
		$http({
			url: '/rest/category',
			method: 'GET',
			
		}).then(function(respone){
			$scope.category = respone.data.DATA;
		});
	}
	
	//Select Main Category
	$scope.findMainCategories = function(){
		$http({
			url: '/rest/category/find-main-category',
			method: 'GET',
			
		}).then(function(respone){
			$scope.maincategory = respone.data.DATA;
		});
	}
	
	//Get Brand
	$scope.findAllBrands = function(){
		$http({
			url: '/rest/brand',
			method: 'GET',
			
		}).then(function(respone){
			$scope.brand = respone.data.DATA;
		});
	}

	// load all record
	$scope.findAllCategories();
	$scope.findMainCategories();
	$scope.findAllBrands();
})


//TODO: SHOW AUCTON TO VIEW CLIENTS
app.controller('auctionCtrl', ['$scope', '$http', '$timeout', 'datetime', function ($scope, $http, $timeout, datetime, $rootScope) {
	$scope.productName = "";
	var checkPagination = true;
	var currentPage = 1;

	//TODO: select all record to display
	$scope.findAllAuctions = function() {
		
		$http({
			url : '/rest/auction?limit=' + 12 +"&page=" + currentPage + "&productName="+$scope.productName,
			method : 'GET'
		}).then(function(response) {
			$scope.processAuctionItemsItems(response.data.DATA);
			$scope.auction = response.data.DATA;
			
			console.log("CONSOLE==>", $scope.auction);
			$scope.pages = response.data.PAGINATION.PAGE;
			$scope.totalpages = response.data.PAGINATION.TOTAL_PAGES;
			$scope.totalcount = response.data.PAGINATION.TOTAL_COUNT;
			if(checkPagination){
				$scope.setPagination(response.data.PAGINATION);
				checkPagination = false;
			}
		});	
	}
	
	$scope.tick = function () {
        $scope.currentTime = moment();
        $scope.processAuctionItemsItems($scope.auction);
        $timeout($scope.tick, 1000);
    }
	
    $scope.processAuctionItemsItems = function (data) {
        angular.forEach(data, function (item) {
            item.remainingTime = datetime.getRemainigTime(item.end_date);
        });
    }
        
	// load all record
	$scope.findAllAuctions();
	$scope.currentTime = moment(); 
	$timeout($scope.tick, 1000);

	//========================PAGINATION AND SEARCH DATA================================
	//TODO: SEARCH BY PRODUCT NAME
	$scope.searchProName = function(proName){
//		alert(proName);
		$http({
			url : '/rest/auction?limit=' + 12 +"&page=" + currentPage + "&productName="+proName,
			method : 'GET'
		}).then(function(response) {
			$scope.auction = response.data.DATA;
			if(checkPagination){
				$scope.setPagination(response.data.PAGINATION);
			}
		});
	}
//	$scope.test = function(){
//		alert($scope.proName);
//	}
	
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
}]);


//TODO: SHOW AUCTON TO DETAIL ITEM VIEW CLIENTS
app.controller('detailCtrl', ['$scope', '$http', '$timeout', 'datetime', function ($scope, $http, $timeout, datetime, $rootScope) {	
//	$scope.ac_id = $('#ac_id').val();
	var id = window.location.href.substring(window.location.href.lastIndexOf('/') + 1);
	// TODO: get one record function
	$scope.getAuctionById = function(id){
		$http({
			url: '/rest/auction/' + id,
			method: 'GET'
		}).then(function(response){			
			$scope.category_name = response.data.DATA.product.category.category_name;
			$scope.gallery = response.data.DATA.product.gallery;
			$scope.product_name = response.data.DATA.product.product_name;
			$scope.product_condition = response.data.DATA.product.product_condition;
			$scope.current_price = response.data.DATA.current_price;
			$scope.start_price = response.data.DATA.start_price;
			$scope.increment_price = response.data.DATA.increment_price;
//			$scope.buy_price = response.data.DATA.buy_price;
			$scope.product_condition = response.data.DATA.product_condition;
			$scope.start_date = moment(response.data.DATA.start_date).format("LLLL");
			$scope.end_date = moment(response.data.DATA.end_date).format("LLLL");
			$scope.product_description = response.data.DATA.product.product_description;
			$scope.status = response.data.DATA.status;
			$scope.comment = response.data.DATA.comment;
			$scope.num_bid = response.data.DATA.num_bid;
			
			$scope.auc_detail = response.data.DATA;
			$scope.processAuctionItems($scope.auc_detail);

			if($scope.status==3){
				$("#tablebidding").hide();
				$("#titleEndStatus").text("Auction has been finished!");
			}
		});
	}
	

/*	$scope.checkingEndingAmount = function(){
		$http({
	          method: 'GET',
	          url: 'http://localhost:9999/api/10/checking-ending-amount/'
	         
	      }).then(function (response) {
	      	if(response.data.CODE=="0000"){
	      		alert(response.data.MESSAGE);
	      	}else if(response.data.CODE=="9999"){
	      		
	      	}
	      });
		
	}*/
		
	//TODO: INSERT BID PRICE TO BID HISTORY 
	$scope.addBidPrice = function(){
		$http({
          method: 'POST',
          url: '/rest/bidhistory',
          data: {
          	"auction_id" : id,
          	"current_price" : $('#exampleInputAmount').val()
          }
      }).then(function (response) {
    	  	if(response.data.CODE=="0000"){
    	  		alert("YOU CANNOT BID MORE. YOUR AMOUNT HAS ONLY " + response.data.DATA);
    	  	}else{
    	  		swal({   
    	  			title: "Bid Now!",   
    	  			text: "Your Amount is $" + $('#exampleInputAmount').val(),   
    	  			type: "info",   
    	  			showCancelButton: true,   
    	  			closeOnConfirm: false,   
    	  			showLoaderOnConfirm: true, 
    	  		}, function(){   
    	  			setTimeout(function(){     
    	  				swal({ 
	        				title: response.data.MESSAGE,
	        			    type: "success",
	        			    timer : 1000,
	        			    showConfirmButton : false
    	  				});
    	  				// Web Socket
    	        	  	sendName();
    	        	  	// return web socket
    	        	  	$('#exampleInputAmount').val("");
    	  			}, 1000); 
    	  		});
//    	  		alert(response.data.MESSAGE);
    	  		
    	  	}
    	  	
    	  	//$scope.getAuctionById();   -- No need to call because we call in sendName() of web socket (page detail.jsp)
    	  	
      });
	}
	
	
    $scope.tick = function () {
        $scope.currentTime = moment();
        $scope.processAuctionItems($scope.auc_detail);
        $timeout($scope.tick, 1000);
    }
    $scope.processAuctionItems = function (data) {
        data.remainingTime = datetime.getRemainigTime(data.end_date);
    }
    
    // load by auction id
    $timeout($scope.tick, 1000);
    $timeout($scope.auc_detail, 10000);
	$scope.currentTime = moment(); 
	$scope.getAuctionById(id);
//	$scope.findTotalBidCurrentPrice();
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


