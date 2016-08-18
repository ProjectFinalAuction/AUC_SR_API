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
//		alert($scope.user_name);
		$scope.created_date = new Date();
		$scope.created_by = 'admin';
		$http({
			url: 'http://localhost:8080/rest/user',
			method: 'POST',
			data:{
				  "address": $scope.address,
	  			  "comment": ($scope.comment==undefined)?'New':$scope.comment,
	  			  "contact": $scope.contact,
	  			  "created_by": $scope.created_by,
	  			  "created_date": $scope.created_date,
	  			  "dob": moment($('#datepicker').val()).format("YYYY-MM-DD"),
	  			  "email": $scope.email,
	  			  "first_name": $scope.first_name,
	  			  "gender": $('.select2').val(),
	  			  "last_name": $scope.last_name,
	  			  "password": $scope.password,
	  			  "photo": ($scope.photo==undefined)?'String':$scope.photo,
	  			  "status": ($scope.status==undefined)?true:$("input:radio[name=status]:checked").val(),
	  			  "type": ($scope.type == undefined)?'bidder': $("input:radio[name=role]:checked").val(),
	  			  "user_name": $scope.user_name
			}
		}).then(function(respone){
			swal({ 
				title: "Success!",
				text: "User has been inserted.",
			    type: "success",
			    timer : 1000,
			    showConfirmButton : false
			  },
			  function(){
//			    window.location.href = 'http://localhost:8080/admin/viewuser';
			});
			
		});
	}
	
	// Get User By ID
	$scope.getUserByID = function(userObject){
		$scope.user_name = userObject.user_name;
		$scope.password = userObject.password;
		$scope.email = userObject.email;
		$scope.contact = userObject.contact;
		$scope.first_name = userObject.first_name;
		$scope.last_name = userObject.last_name;
		
		if((userObject.gender=='female') || (userObject.gender=='F')){

			$('select[name="gender"]').find('option[value="female"]').attr("selected",true);
		}else{

			$('select[name="gender"]').find('option[value="male"]').attr("selected",true);
		}
		$scope.dob = userObject.dob;
		$scope.address = userObject.address;
		$scope.photo = userObject.photo;
		if(userObject.type=='admin'){
			$( "#role1" ).prop( "checked", true);
		}
		else{
			$( "#role2" ).prop( "checked", true);
		}
		if(userObject.status==true){
			$( "#status1" ).prop( "checked", true);
		}
		else{
			$( "#status2" ).prop( "checked", true);
		}
		$scope.comment = userObject.comment;
		
		$scope.user_id = userObject.user_id;
			
	}
	
	//Update User
	$scope.updateUser = function(id){
		$scope.created_date = new Date();
		$scope.created_by = 'admin';
		$http({
			url: 'http://localhost:8080/rest/user',
			method: 'PUT',
			data:{
				  "user_id" : id,
				  "address": $scope.address,
	  			  "comment": $scope.comment,
				  "contact": $scope.contact,
	  			  "created_by": $scope.created_by,
	  			  "created_date": $scope.created_date,
	  			  "dob": moment($('#datepicker').val()).format("YYYY-MM-DD"),
	  			  "email": $scope.email,
	  			  "first_name": $scope.first_name,
	  			  "gender": $('.select2').val(),
	  			  "last_name": $scope.last_name,
	  			  "password": $scope.password,
	  			  "photo": $scope.photo,
	  			  "status": $("input:radio[name=status]:checked").val(),
	  			  "type": $("input:radio[name=role]:checked").val(),	  			  
	  			  "user_name": $scope.user_name,
	  			  "role_id": ($("input:radio[name=status]:checked").val()=='admin')?1:2
			}
		}).then(function(respone){
			swal({ 
				title: "Success!",
				text: "User has been updated!",
			    type: "success",
			    timer : 1000,
			    showConfirmButton : false
			  },
			  function(){
				  $scope.getAllUsers();
			});
		});
	}
	
	//Get user_name and password to login
	$scope.userLogin = function(user_name,password){
		$http({  
			url:'http://localhost:8080/rest/user',
			method: 'POST',
			data:{
				"user_name": $scope.user_name,
				"password": $scope.password
			}
		})
	}
	
	
	// load all record
	
	$scope.getAllUsers();
	$scope.addUser();
	

})