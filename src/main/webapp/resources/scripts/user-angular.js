/**
 * angular get, add, delete, update user
 */

var app = angular.module('myApp', []);

app.controller('auctionCtrl', function() {

})

// TODO: VIEW USER BACK END
app.controller('viewUserCtrl', function($scope, $http, $rootScope) {
	
	
	// select all record to display
	$scope.userName = "";
	var checkPagination = true;
	var currentPage = 1;

	$scope.getAllUsers = function() {
		// alert($scope.pages);
		$http(
				{
					url : '/rest/user?limit=' + 10 +"&page=" + currentPage + "&userName="+$scope.userName,
					method : 'GET',

				}).then(function(response) {
			$scope.user = response.data.DATA;
			$scope.pages = response.data.PAGINATION.PAGE;
			$scope.totalpages = response.data.PAGINATION.TOTAL_PAGES;
			$scope.totalcount = response.data.PAGINATION.TOTAL_COUNT;
			if (checkPagination) {
				$scope.setPagination(response.data.PAGINATION);
				checkPagination = false;
			}

		});
	}

	// TODO: CTEATE PAGINATION BUTTON
	$scope.setPagination = function(pagination) {
		console.log("PAGINATION==>", pagination);
		$("#PAGINATION").bootpag({
			total : pagination.TOTAL_PAGES,
			page : pagination.PAGE,
			maxVisible : 10,
			leaps : true,
			firstLastUse : true,
			first : 'First',
			last : 'Last',
			wrapClass : 'pagination',
			activeClass : 'active',
			disabledClass : 'disabled',
			nextClass : 'next',
			prevClass : 'prev',
			lastClass : 'last',
			firstClass : 'first'
		});
		$("#PAGINATION ul").addClass("pagination");
	}

	$('#PAGINATION').bootpag().on("page", function(event, page) {
		checkPagination = false;
		currentPage = page;
		$scope.getAllUsers();
	});

	
	
	
	////////////////////////////
	$scope.getUserByID = function(id) {
		
		$http({
			url : '/rest/user/' + id,
			method : 'GET'
		}).then(
				function(response) {
					$scope.user_name = response.data.DATA.user_name;
					$scope.password = response.data.DATA.password;
					$scope.email = response.data.DATA.email;
					$scope.contact = response.data.DATA.contact;
					$scope.first_name = response.data.DATA.first_name;
					$scope.last_name = response.data.DATA.last_name;
					if ((response.data.DATA.gender == 'female')
							|| (response.data.DATA.gender == 'F')) {

						$('select[name="gender"]').find(
								'option[value="female"]')
								.attr("selected", true);
					} else {

						$('select[name="gender"]').find('option[value="male"]')
								.attr("selected", true);
					}
					$scope.dob =  moment(response.data.DATA.dob)
							.format("DD-MM-YYYY");
					$scope.address = response.data.DATA.address;
					$scope.photo = response.data.DATA.photo;
					if (response.data.DATA.type == 'admin') {
						$("#role1").prop("checked", true);
					} else {
						$("#role2").prop("checked", true);
					}
					if(response.data.DATA.status=='1'){
						 $("#status1").prop("checked", true);
					} else {
						$("#status2").prop("checked", true);
					}
					$scope.comment = response.data.DATA.comment;
				})
	}
	// Update User
	$scope.updateUser = function(id) {
		alert($("#dob1").val());
		$scope.created_date = new Date();
		$scope.created_by = 'admin';
		$http(
				{
					url : '/rest/user',
					method : 'PUT',
					data : {
						"user_id" : id,
						"address" : $scope.address,
						"comment" : $scope.comment,
						"contact" : $scope.contact,
						"created_by" : $scope.created_by,
						"created_date" : $scope.created_date,
						"dob" : $("#dob1").val(),
						"email" : $scope.email,
						"first_name" : $scope.first_name,
						"gender" : $('.select2').val(),
						"last_name" : $scope.last_name,
						"password" : $scope.password,
						"photo" : $scope.photo,
						"status" : $("input:radio[name=status]:checked").val(),
						"type" : $("input:radio[name=role]:checked").val(),
						"user_name" : $scope.user_name,
						"role_id" : ($("input:radio[name=status]:checked")
								.val() == 'admin') ? 1 : 2
					}
				}).then(function(response) {
					swal({
						title : "Success",
						text : "User has been updated!",
						type : "success",
						timer : 1000,
						showConfirmButton : false
					});
					$scope.getAllUsers();
		}, function(error) {
		});
	}
	
	// delete supplier
	$scope.deleteUser = function(id, e) {
		
		console.log(id);	
		
		swal({
			title : "Are you sure?",
			text : "Your will not be able to recover this user!",
			type : "warning",
			showCancelButton : true,
			confirmButtonColor : "#DD6B55",
			confirmButtonText : "Yes, delete it!",
			cancelButtonText : "No, cancel plx!",
			closeOnConfirm : false,
			closeOnCancel : false
		}, function(isConfirm) {
			if (isConfirm) {
				$http({
					url : '/rest/user/' + id,

					method : 'DELETE'
				}).success(function(response) {
					$scope.getAllUsers();
				});
				swal({
					title : "Deleted!",
					text : "The user has been deleted.",
					type : "success",
					timer : 1000,
					showConfirmButton : false
				});

				// $scope.findAllSuppliers();
			} else {
				swal({
					title : "Cancelled!",
					text : "Your user is not deleted :)",
					type : "error",
					timer : 1000,
					showConfirmButton : false
				});
			}
		});
	}
	
	
	
	
	
	//////////////////////////
	
	
	
	
	
	
	// load all record

	$scope.getAllUsers();
})

// TODO: ADD DELETE UPDATE BACK END
app.controller('UserCtrl', function($scope, $http, $rootScope) {
	// add record function
	$scope.addUser = function() {
		$scope.created_date = new Date();
		$scope.created_by = 'admin';
		$http(
				{
					url : '/rest/user',
					method : 'POST',
					data : {
						"address" : $scope.address,
						"comment" : ($scope.comment == undefined) ? 'New'
								: $scope.comment,
						"contact" : $scope.contact,
						"created_by" : $scope.created_by,
						"created_date" : $scope.created_date,
						"dob" : moment($('#datepicker').val()).format(
								"YYYY-MM-DD"),
						"email" : $scope.email,
						"first_name" : $scope.first_name,
						"gender" : $('.select2').val(),
						"last_name" : $scope.last_name,
						"password" : $scope.password,
						"photo" : ($scope.photo == undefined) ? 'String'
								: $scope.photo,
						"status" : ($scope.status == undefined) ? '1' : $(
								"input:radio[name=status]:checked").val(),
						"type" : ($scope.type == undefined) ? 'bidder' : $(
								"input:radio[name=role]:checked").val(),
						"user_name" : $scope.user_name
					}
				}).then(function(respone) {
			swal({
				title : "Success!",
				text : "User has been inserted.",
				type : "success",
				timer : 1000,
				showConfirmButton : false
			}, function() {
				window.location.href = '/admin/viewuser';
			});

		});
	}

	// Get User By ID
	// $scope.getUserByID = function(userObject){
	// alert(userObject.user_name);
	// $scope.user_name = userObject.user_name;
	// $scope.password = userObject.password;
	// $scope.email = userObject.email;
	// $scope.contact = userObject.contact;
	// $scope.first_name = userObject.first_name;
	// $scope.last_name = userObject.last_name;
	//		
	// if((userObject.gender=='female') || (userObject.gender=='F')){
	//
	// $('select[name="gender"]').find('option[value="female"]').attr("selected",true);
	// }else{
	//
	// $('select[name="gender"]').find('option[value="male"]').attr("selected",true);
	// }
	// $scope.dob = userObject.dob;
	// $scope.address = userObject.address;
	// $scope.photo = userObject.photo;
	// if(userObject.type=='admin'){
	// $( "#role1" ).prop( "checked", true);
	// }
	// else{
	// $( "#role2" ).prop( "checked", true);
	// }
	// if(userObject.status=='1'){
	// $( "#status1" ).prop( "checked", true);
	// }
	// else{
	// $( "#status2" ).prop( "checked", true);
	// }
	// $scope.comment = userObject.comment;
	//		
	// $scope.user_id = userObject.user_id;
	//			
	// }

	
	// Get user_name and password to login
	$scope.userLogin = function(user_name, password) {
		$http({
			url : '/rest/user',
			method : 'POST',
			data : {
				"user_name" : $scope.user_name,
				"password" : $scope.password
			}
		})
	}

	

	// $scope.addUser();
})

// ========================================================================================
// TODO: ADD USER FRONT END
app.controller('addUserCtrl', function($scope, $http, $rootScope) {
	// add record function
	$scope.addUser = function() {
		$scope.created_date = new Date();
		$scope.created_by = 'admin';
		$http(
				{
					url : '/rest/user',
					method : 'POST',
					data : {
						"address" : $scope.address,
						"comment" : ($scope.comment == undefined) ? 'New'
								: $scope.comment,
						"contact" : $scope.contact,
						"created_by" : $scope.created_by,
						"created_date" : $scope.created_date,
						"dob" : moment($('#datepicker').val()).format(
								"YYYY-MM-DD"),
						"email" : $scope.email,
						"first_name" : $scope.first_name,
						"gender" : $('.select2').val(),
						"last_name" : $scope.last_name,
						"password" : $scope.password,
						"photo" : ($scope.photo == undefined) ? 'String'
								: $scope.photo,
						"status" : ($scope.status == undefined) ? '1' : $(
								"input:radio[name=status]:checked").val(),
						"type" : ($scope.type == undefined) ? 'bidder' : $(
								"input:radio[name=role]:checked").val(),
						"user_name" : $scope.user_name
					}
				}).then(function(respone) {
			swal({
				title : "Success!",
				text : "User has been inserted.",
				type : "success",
				timer : 1000,
				showConfirmButton : false
			}, function() {
				window.location.href = '/';
			});

		});
	}
})