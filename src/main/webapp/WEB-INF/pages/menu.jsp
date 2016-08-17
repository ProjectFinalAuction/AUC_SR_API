<style>
header{
	padding:0px;
	margin:0px;
/* 	height:50px; */

}
header .head{
	background-color: #e6e6e6;
}
header span{
	font-family: verdana;
 	font-size: 12px;
}
header #right-head-info{
	text-align: right;
}
header .menu{
	background-color: #fff;
}
header .menu img{
	width: 350px;
	padding: 10px;
}
header .menu-list-ul{
	list-style-type: none;
	margin-top: 10px;
	padding:0px;
}
header .menu-list-ul .menu-list-li,
header .menu-list-ul .menu-list-li > a{
	display: inline;
	padding: 5px;
	line-height: 90px;
	color: gray;
}
header .menu-list-ul .menu-list-li a:hover{
	text-decoration: none;
}
.panel-default{
	border-bottom:1px solid white;
	background-color: #fff;
	padding:0;
}
.fa-caret-square-o-down:hover{
	color: black;
	cursor: pointer;
}

</style>
<body ng-app="myApp">
<header>
	<div class="container-fluid head">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
				<i class="fa fa-volume-control-phone lang" key="contact_info"></i><span> OUR CUSTOMER CARE +855 70 730 619</span>
				</div>
				<div id="right-head-info" class="col-md-6">
					<sec:authorize access="!isAuthenticated()">
						<a class="nav-link lang" href="#" data-toggle="modal" data-target="#login" key="login">
							Login 
						</a>
					</sec:authorize>
					<span>&nbsp;|&nbsp; </span>
					<sec:authorize access="!isAuthenticated()">
						<a class="nav-link lang" href="#" key="register">Register</a>
					</sec:authorize>
					<span>&nbsp;|&nbsp; </span>
					<span clas="lang" key="my_wishlist">MY WISHLIST</span>
					<sec:authorize access="isAuthenticated()">
						<span class="nav-item dropdown logined" style="display: none;">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" 
							role="button" aria-haspopup="true" aria-expanded="false">
								<span class="lang" key="welcome">Welcome</span>  <sec:authentication property="principal.username" />
							</a>
							<h5 class="dropdown-menu" aria-labelledby="Preview">
								<a href="${pageContext.request.contextPath}/logout" >
								<i class="fa fa-sign-out"></i> <span class="lang" key="logout">Logout</span></a>
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
					<img src="${pageContext.request.contextPath}/resources/static/images/iwantlogo1.png">
				</div>
				<div class="col-md-5">
					<ul class="menu-list-ul">
						<li class="menu-list-li"><a href="#"><span class="lang" key="best_bidding">BEST BIDDING</span></a></li>
						<li class="menu-list-li"><a href="#"><span class="lang" key="best_brand">BEST BRAND</span></a></li>
						<li class="menu-list-li"><a href="#"><span class="lang" key="contact">CONTACT</span></a></li>
						<li class="menu-list-li"><a href="about.html"><span class="lang" key="about">ABOUT</span></a></li>
					</ul>
				</div>
				<div class="col-md-3" style="margin-top: 35px; text-align:right;">
					<span class="lang" key="language">LANGUAGE</span>
					<select>
						<option class="translate lang" key="english" id="en">ENGLISH</option>
						<option class="translate lang" key="khmer" id="kh">KHMER</option>
					</select>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="padding-right:0">
			<div class="row" style="padding:0">
				<div class="col-md-3" style="line-height:-8px;background-color: #e6e6e6;padding:2px;">
					<div align="center" style="color:gray; margin:5px 0 0 15px;"><b><span class="lang" key="categories">CATEGORIES</span></b>
					<i class="fa fa-caret-square-o-down" aria-hidden="true" style="margin-left:80px; font-size:18px;" id="dropdownmenu"></i>
					</div>
				</div>
				<div class="col-md-9" style="background-color: #e6e6e6;padding:0;">
					<form style="padding:4px;">
						<div class="input-group">
							<input type="text" placeholder="Enter keyword" style="border:none;padding-left: 20px;width:100%">
							<div class="input-group-addon" style="border:none;"><i class="fa fa-search" aria-hidden="true"></i></div>
						</div>
					</form>
				</div>
			</div>
		</div>
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
							<h3 class="text-success text-xs-center lang" key="welcome">Welcome</h3>
							<div class="form-group">
								<label class="text-xs-left lang" key="username">Username</label> <input type="text"
									class="form-control form-control-succes" name="username"
									placeholder="enter your username" required>
							</div>
							<div class="form-group">
								<label class="text-xs-left lang" key="password" >Password</label> <input
									type="password" class="form-control form-control-succes"
									name="password" placeholder="enter your password" required>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary"
									><span class="lang" key="sign_in">Sign in</span>
								</button>
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