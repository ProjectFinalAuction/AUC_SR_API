<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="cambodia_auction"></spring:message></title>
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
					<div class="list-group-item"><small><spring:message code="login_system"></spring:message></small></div>
					<div class="list-group-item">
						<form class="form-horizontal" action="#ogin" method="POST" id="formLogin" role="form">
						  <div class="form-group">
						    <label class="control-label col-sm-3" for="uname"><spring:message code="username"></spring:message></label>
						    <div class="col-sm-8">
						      <input type="text" class="form-control" id="uname" name="username"
						      placeholder="enter your username" required>
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-3" for="pwd"><spring:message code="password"></spring:message></label>
						    <div class="col-sm-8"> 
						      <input type="password" class="form-control" id="pwd"  name="password" required>
						    </div>
						  </div>
						  <div class="form-group"> 
						    <div class="col-sm-offset-3 col-sm-10">
						      <div class="checkbox">
						        <label><input type="checkbox"> <spring:message code="remember_me"></spring:message></label>
						      </div>
						    </div>
						  </div>
						  <div class="form-group"> 
						    <div class="col-sm-offset-3 col-sm-10">
						      <button type="submit" class="btn btn-primary"><spring:message code="sign_in"></spring:message></button>
						    </div>
						  </div>
						</form>
					</div>
				</div>
			</div> <!-- end div col-md-6 -->

			<div class="col-md-6">
				<h3><spring:message code="not_registered"></spring:message></h3>
				<p><spring:message code="not_registered_msg"></spring:message> <a href="${pageContext.request.contextPath}/register"><spring:message code="register_now"></spring:message></a></p>
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
   		  console.log($("#formLogin").serialize());
   		  $.ajax({
	            url: "login",
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
	          					window.location.href="http://localhost:8080/"+data;

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
