/**
 * angular get, add, delete, update user
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope,$http,$rootScope){
	// select all record to display
	$scope.findAllTranslate = function(){
		$http({
			url: 'http://localhost:8080/rest/translate',
			method: 'GET'
			
		}).then(function(response){
			$scope.supplier = response.data.DATA;
		});
	}
	
	
	// select suplier by id
	$scope.findTranslateByBaseWord = function(base_word){
		
		$http({
			url: 'http://localhost:8080/rest/translate/'+base_word,
			method: 'GET'
			
		}).then(function(response){
			$scope.translate = response.data.DATA;
			
		});
	}
	
		
	
	
	$scope.loadme = function(){
		alert("me");
	};
	
	
	// load all record
	$scope.findAllTranslate();
})