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
	
	
	