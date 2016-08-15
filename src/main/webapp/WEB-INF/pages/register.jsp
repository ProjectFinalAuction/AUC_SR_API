<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register New Account</title>
<!-- header -->
<jsp:include page="header.jsp"/>

<!-- menu -->
<jsp:include page="menu.jsp"/>

	<!-- content -->
	<div class="content" id="register">
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="panel panel-default">
				  <div class="panel-body"><small>CREATE AN ACCOUNT</small></div>
				</div>
			</div>
			<!-- form register -->
			<form class="form-horizontal" role="form">
			<div class="row">
				<div class="col-md-12">
					<div class="list-group">
						<div class="list-group-item"><small>CREATE LOGIN</small></div>
						<div class="list-group-item">
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="uname">Username <sup><i class="glyphicon glyphicon-star"></i></sup></label>
						    <div class="col-sm-7">
						      <input type="text" class="form-control" id="uname" ng-model="user_name" required>
						      <p>Your username will be shown when you bid, buy, and sell.</p>
						    </div>						    
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="pwd">Password <sup><i class="glyphicon glyphicon-star"></i></sup></label>
						    <div class="col-sm-7"> 
						      <input type="password" class="form-control" id="pwd" ng-model="password" required
						      onkeyup="checkPassword();">
						      <p>Your Password must be at least 6 characters long. Passwords are case sensitive</p>
						      <span id="pass"></span>
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="cpwd">Confirm Password <sup><i class="glyphicon glyphicon-star"></i></sup></label>
						    <div class="col-sm-7"> 
						      <input type="password" class="form-control" id="cpwd" required onkeyup="checkPasswordMatch();">
						      <span id="confirm"></span>
						    </div>
						  </div>
						</div>						
					</div>
				</div> <!-- end div col-md-9 -->
				
			</div>
				<div class="col-md-12">
					<div class="list-group">
						<div class="list-group-item"><small>YOUR CONTACT INFORMATION</small></div>
						<div class="list-group-item">						
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="email">Email <sup><i class="glyphicon glyphicon-star"></i></sup></label>
						    <div class="col-sm-7">
						      <input type="email" class="form-control" id="email" ng-model="email" required>
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="cemail">Confirm Email <sup><i class="glyphicon glyphicon-star"></i></sup></label>
						    <div class="col-sm-7">
						      <input type="email" class="form-control" id="cemail" required onkeyup="checkEmailMatch();">
						      <span id="conemail"></span>
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="contact">Contact <sup><i class="glyphicon glyphicon-star"></i></sup></label>
						    <div class="col-sm-7">
						      <input type="text" class="form-control" id="contact" required placeholder="Ex: 012 345 678" ng-model="contact">
						    </div>
						  </div>						
						</div>
					</div>
				</div> <!-- end div col-md-12 -->
	
				<div class="col-md-12">
				<div class="list-group">
					<div class="list-group-item"><small>ADDITIONAL INFORMATION</small></div>
					<div class="list-group-item">						
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="fname">First Name <sup><i class="glyphicon glyphicon-star"></i></sup></label>
					    <div class="col-sm-7">
					      <input type="text" class="form-control" id="fname" ng-model="first_name" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="lname">Last Name <sup><i class="glyphicon glyphicon-star"></i></sup></label>
					    <div class="col-sm-7">
					      <input type="text" class="form-control" id="lname" ng-model="last_name" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="gender">Gender <sup><i class="glyphicon glyphicon-star"></i></sup></label>
					    <div class="col-sm-7">
					      <select class="form-control select2" ng-model="gender">
							<option value="female">Female</option>
							<option value="male">Male</option>
						  </select>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="gender">Date of Birth <sup><i class="glyphicon glyphicon-star"></i></sup></label>
					    <div class="col-sm-7">
					      <div class="input-group">
							<input type="text" class="required form-control"
								placeholder="mm/dd/yyyy" id="datepicker" ng-model="dob"> 
							<span class="input-group-addon bg-custom b-0 text-white"><i class="glyphicon glyphicon-calendar"></i></span>
						  </div>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="gender">Address <sup><i class="glyphicon glyphicon-star"></i></sup></label>
					    <div class="col-sm-7">
					    	<textarea class="required form-control" rows="5" ng-model="address"></textarea>								
					    </div>
					  </div>
					 					 
					  <div class="form-group">
					  	<div class="col-sm-2"></div>
					  	<div class="col-sm-3">
					    	<button type="submit" class="btn btn-primary btn-block" ng-click="addUser()">Complete Registration</button>
					    </div>
					    <div class="col-sm-4"><p><small>ALL FIELDS MARKED WITH " <sup><i class="glyphicon glyphicon-star"></i></sup> " ARE REQUIRED</small></p></div>
					  </div>						
					</div>
				</div>
				</div> <!-- end div col-md-12 -->
			</form>
		</div> <!-- end div container -->
	</div> <!-- end div main content information -->
	
<!-- footer -->
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/user-angular.js"></script>
<script type="text/javascript">

	function checkPassword(){
		var password = $("#pwd").val();
		if(password.length >= 6){
			$("#pass").text("Password Correct Format...!");
		}else{
			$("#pass").text("Must best at least 6 characters!");
		}
	}
	function checkPasswordMatch() {
		var password = $("#pwd").val();
		var confirmPassword = $("#cpwd").val();

		if (password != confirmPassword) {
			$("#confirm").text("Passwords do not match!");
		} else
			$("#confirm").text("Passwords matched!");
	}
	
	function checkEmailMatch(){
		var email = $("#email").val();
		var cemail = $("#cemail").val();
		
		if(email != cemail){
			$("#conemail").text("Email not match");
		}else{
			$("#conemail").text("Email matched!");
		}
	}
</script>
	
	
	