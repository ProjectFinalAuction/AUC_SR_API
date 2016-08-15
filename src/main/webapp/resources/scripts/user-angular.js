/**
 * angular get, add, delete, update user
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope,$http,$rootScope){
	// select all record to display
	$scope.getAllUsers = function(){
		$http({
			url: 'http://localhost:8080/rest/user',
			method: 'GET',
			
		}).then(function(respone){
			$scope.user = respone.data.DATA;
		});
	}
	
	// add record function
	$scope.addUser = function(){
		$scope.created_date = new Date();
		$scope.created_by = 'admin';
		$http({
			url: 'http://localhost:8080/rest/user',
			method: 'POST',
			data:{
				  "address": $scope.address,
	  			  "comment": ($scope.comment==undefined)?true:$scope.comment,
	  			  "contact": $scope.contact,
	  			  "created_by": $scope.created_by,
	  			  "created_date": $scope.created_date,
	  			  "dob": moment($('#datepicker').val()).format("YYYY-MM-DD"),
	  			  "email": $scope.email,
	  			  "first_name": $scope.first_name,
	  			  "gender": $scope.gender,
	  			  "last_name": $scope.last_name,
	  			  "password": $scope.password,
	  			  "photo": ($scope.photo==undefined)?true:$scope.photo,
	  			  "status": ($scope.status==undefined)?true:$scope.status,
	  			  "type": ($scope.type == undefined)?Bidder:$scope.type,
	  			  "user_name": $scope.user_name
			}
		}).then(function(respone){
			swal("Good job!", "You clicked the button!", "success");

		});
	}
	
	//Delete User by ID
	$scope.deleteUsers = function(userId){
		alert($scope.delUser = respone.data.DATA);
		$http({
			url: 'http://localhost:8080/rest/user/{userId}',
			method: 'DELETE',
		}).then(function(respone){
			$scope.delUser = respone.data.DATA;
		});
	}
	
	$scope.loadme = function(){
		alert("me");
	};
	
	// load all record
	$scope.getAllUsers();
//	$scope.deleteUsers();
	
})