<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login System</title>
<!-- header -->
<jsp:include page="header.jsp"/>

<!-- menu -->
<jsp:include page="menu.jsp"/>

<!-- content -->
	<div class="content" id="login">
		<div class="container-fluid">
		  <!-- form register -->
		  <div class="row">
			<div class="col-md-6">
				<div class="list-group">
					<div class="list-group-item"><small>LOG IN</small></div>
					<div class="list-group-item">
						<form class="form-horizontal" id="formLogin" role="form">
						  <div class="form-group">
						    <label class="control-label col-sm-3" for="uname">Username</label>
						    <div class="col-sm-8">
						      <input type="text" class="form-control" id="uname"
						      placeholder="enter your username" required>
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-3" for="pwd">Password</label>
						    <div class="col-sm-8"> 
						      <input type="password" class="form-control" id="pwd" required>
						    </div>
						  </div>
						  <div class="form-group"> 
						    <div class="col-sm-offset-3 col-sm-10">
						      <div class="checkbox">
						        <label><input type="checkbox"> Remember me</label>
						      </div>
						    </div>
						  </div>
						  <div class="form-group"> 
						    <div class="col-sm-offset-3 col-sm-10">
						      <button type="submit" class="btn btn-primary">Sign in</button>
						    </div>
						  </div>
						</form>
					</div>
				</div>
			</div> <!-- end div col-md-6 -->

			<div class="col-md-6">
				<h3>Not Registered?</h3>
				<p>If you are not already a registered member, please <a href="${pageContext.request.contextPath}/register">Register Now</a></p>
			</div>
		  </div> <!-- end div container -->
		</div> <!-- end div main content information -->
	</div>

<!-- footer -->
<jsp:include page="footer.jsp"/>
<script type="text/javascript">
$(function() {
	
	$("#formLogin").submit(function(e){		
// 			alert("true");
   		  e.preventDefault();  			
   		  $.ajax({
	            url: "${pageContext.request.contextPath}/login",
	            type: "POST",
	            data: $("#formLogin").serialize(),
	            success: function(data) {
	            	if(data == "User account is locked"){
	            		alert(data);
	            	}else if(data == "User is disabled"){
	            		swal("LOGIN FAILED!", data, "error");
	            	}else if(data == "Bad credentials"){
	            		swal("LOGIN FAILED!", data, "error");
	            	}else{
	            		
	            		swal({   
	          			title: "LOGIN SUCCESSFULLY!",   
	          			text: "THANK YOU",   
	          			type: "success",   
	          			confirmButtonColor: "#007d3d",   
						closeOnConfirm: false,   
	          			closeOnCancel: false }, 
	          			function(isConfirm){   
	          				if(isConfirm) {     				
	          					window.location.href="http://localhost:8080/";

	          				}else {     
	          					swal("Cancelled", "Your imaginary file is safe :)", "error");   
	          				} 
	          			});
   		  
	            	}
	            },
	         	error: function(data){
	         		console.log(data);
	         	}
   		  });
		  
	});
	
});
  
</script>
