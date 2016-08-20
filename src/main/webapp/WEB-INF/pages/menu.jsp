<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<body ng-app="myApp">
<div class="wrapper" ng-controller="auctionCtrl">
<header>
	<div class="container-fluid head">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
				<i class="fa fa-volume-control-phone" ></i> <spring:message code="contact_info"></spring:message>
				</div>
				<div id="right-head-info" class="col-md-6">
					<sec:authorize access="!isAuthenticated()">
					
						<a class="nav-link" href="#" data-toggle="modal" data-target="#login">
							<spring:message code="login"></spring:message> 
						</a>
						<span>&nbsp;|&nbsp; </span>
					
						<a class="nav-link" href="${pageContext.request.contextPath}/register"><spring:message code="register"></spring:message></a>
						<span>&nbsp;|&nbsp; </span>
						
					</sec:authorize>
					
					<span clas="lang" key="my_wishlist"><spring:message code="my_wishlist"></spring:message></span>
					<sec:authorize access="isAuthenticated()">
						<span class="nav-item dropdown logined">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
							role="button" aria-haspopup="true" aria-expanded="false">
								<spring:message code="welcome"></spring:message>  <sec:authentication property="principal.username" />
							</a>
							<h5 class="dropdown-menu" aria-labelledby="Preview">
								<a href="${pageContext.request.contextPath}/logout" >
								<i class="fa fa-sign-out"></i> <spring:message code="logout"></spring:message></a>
							</h5>
						</span>
					</sec:authorize>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid menu">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a href="${pageContext.request.contextPath}/index">
					<img src="${pageContext.request.contextPath}/resources/static/images/denhtlaiHD.png" class="img-responsive">
					</a>
				</div>
				<div class="col-md-6">
					<ul class="menu-list-ul">
						<li class="menu-list-li"><a href="#"><spring:message code="best_bidding"></spring:message></a></li>
						<li class="menu-list-li"><a href="#"><spring:message code="best_brand"></spring:message></a></li>
						<li class="menu-list-li"><a href="${pageContext.request.contextPath}/contactus"><spring:message code="contact"></spring:message></a></li>
						<li class="menu-list-li"><a href="${pageContext.request.contextPath}/aboutus"><spring:message code="about"></spring:message></a></li>
					</ul>
				</div>
				<div class="col-md-2" style="margin-top: 35px; text-align:right;">
					<spring:message code="language"></spring:message>
					<a href="/language?language=en" class="translate" id="en"><img alt="en-img" style="width:30px; height:30px; padding:0px;"
					src="${pageContext.request.contextPath}/resources/images/en.png" ></a>
					<a href="/language?language=kh" class="translate" id="kh"><img alt="kh-img" style="width:30px; height:30px; padding:0px;"
					src="${pageContext.request.contextPath}/resources/images/kh.png"></a>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="padding-right:0" id="searchPanel">
			<div class="row" style="padding:0">
				<div class="col-md-3" style="line-height:-8px;background-color: #e6e6e6;padding:2px;">
					<div align="center" style="color:gray; margin:5px 0 0 15px;"><b><spring:message code="categories"></spring:message></b>
					<i class="fa fa-caret-square-o-down" aria-hidden="true" style="margin-left:80px; font-size:18px;" id="dropdownmenu"></i>
					</div>
				</div>
				<div class="col-md-9" style="background-color: #e6e6e6;padding:0;">
					<form style="padding:4px;" ng-submit="searchProName(proName)">
						<div class="input-group">
							<input type="text" placeholder="Enter keyword" style="border:none;padding-left: 20px;width:100%" 
							ng-model="proName" ng-change="searchProName(proName)">
							<div class="input-group-addon" style="border:none;"><i class="fa fa-search" aria-hidden="true"></i></div>
						</div>
					</form>
				</div>
			</div>
		</div>
	
<!-- Script use for search data	 -->
<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/scripts/main-angular.js"></script>
</header>

<!--  ========  Model Login ====== -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header text-xs-center">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>					
				</div>
				<div class="modal-body">
					<form class="formlogin" id="formLogin" method="POST" role="form">
						<fieldset>
<!-- 							<h4 class="text-success text-xs-center lang" align="center" key="welcome">WELCOME LOGIN</h4> -->
							<div><img src="${pageContext.request.contextPath}/resources/static/images/denhtlaiHD.png" 
							class="img-responsive" width="350" style="margin:15px auto;"></div>
							<div class="form-group">
								<label class="text-xs-left"><spring:message code="username"></spring:message></label> <input type="text"
									class="form-control form-control-succes" name="username"
									placeholder="enter your username" autofocus required>
							</div>
							<div class="form-group">
								<label class="text-xs-left" ><spring:message code="password"></spring:message></label> <input
									type="password" class="form-control form-control-succes"
									name="password" placeholder="enter your password" required>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary"
									><spring:message code="sign_in"></spring:message>
								</button>&nbsp;&nbsp;
								<a href="${pageContext.request.contextPath}/register?bidder" id="registerLoginLink"><spring:message code="register_now"></spring:message></a>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>

		
<script type="text/javascript">
$("#dropdownmenu").click(function(){
	$("#menustand").toggle(function(){
		$("#right-content").toggleClass('col-md-9 col-md-12');
	});
});

$(function() {
	
	$("#formLogin").submit('hidden.bs.modal',function(e){		
		  
   		  e.preventDefault();
   		  console.log($("#formLogin").serialize());
   		  $.ajax({
	            url: "${pageContext.request.contextPath}/",
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
	          					if(data=='admin'){
	          						window.location.href="http://localhost:8080/"+data;	
	          					}else{
	          						window.location.href = window.location.href	
	          					}
	          					
	          					

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

	<!-- <!--  Static Translate  -->