<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
header .menu-list-ul .menu-list-li > a > span{
	font-size: 0.90vmax;
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
				<i class="fa fa-volume-control-phone" ></i><span class="lang" key="contact_info"> OUR CUSTOMER CARE +855 70 730 619</span>
				</div>
				<div id="right-head-info" class="col-md-6">
					<sec:authorize access="!isAuthenticated()">
					
						<a class="nav-link lang" href="#" data-toggle="modal" data-target="#login" key="login">
							Login 
						</a>
						<span>&nbsp;|&nbsp; </span>
					
						<a class="nav-link lang" href="${pageContext.request.contextPath}/register" key="register">Register</a>
						<span>&nbsp;|&nbsp; </span>
						
					</sec:authorize>
					
					<span clas="lang" key="my_wishlist">MY WISHLIST</span>
					<sec:authorize access="isAuthenticated()">
						<span class="nav-item dropdown logined">
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
					<a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}/resources/static/images/iwantlogo1.png"></a>
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
					<a href="#?lang=en" class="translate" id="en"><img alt="en-img" style="width:30px; height:30px; padding:0px;"
					src="${pageContext.request.contextPath}/resources/images/en.png" ></a>
					<a href="#?lang=kh" class="translate" id="kh"><img alt="kh-img" style="width:30px; height:30px; padding:0px;"
					src="${pageContext.request.contextPath}/resources/images/kh.png"></a>
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
							<h4 class="text-success text-xs-center lang" key="welcome">Welcome</h4>
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

	<!--  Static Translate  -->
	<script>
	var arrLang = new Array();
	arrLang['en'] = new Array();
	arrLang['kh'] = new Array();

	arrLang['en']['new_arrivale'] = 'New Arrival';
	arrLang['en']['cambodia_auction'] = 'CAMBODIA AUCTION';
	arrLang['en']['remaining_day'] = '7 Days, 7 Hours remaining';
	arrLang['en']['bid'] = 'Bids';
	arrLang['en']['bid_now'] = 'Bid Now';
	
	arrLang['kh']['new_arrivale'] = 'មកដល់​ថ្មី';
	arrLang['kh']['cambodia_auction'] = 'ការដេញថ្លៃនៅកម្ពុជា';
	arrLang['kh']['remaining_day'] = '7 ថ្ងៃ, 7 ម៉ោងដែលនៅសល់';
	arrLang['kh']['bid'] = 'ដេញថ្លៃ';
	arrLang['kh']['bid_now'] = 'ដេញថ្លៃឥឡូវនេះ';
	
	/* menu */
	arrLang['en']['contact_info'] = ' OUR CUSTOMER CARE +855 70 730 619';
	arrLang['kh']['contact_info'] = ' ផ្នែកផ្តល់ប្រឹក្សាអតិថិជន +855 70 730 619';
	
	arrLang['en']['login_reg'] = 'LOGIN / REGISTER';
	arrLang['kh']['login_reg'] = 'ចូល / ចុះឈ្មោះ';
	
	arrLang['en']['my_wishlist'] = 'MY WISHLIST';
	arrLang['kh']['my_wishlist'] = 'បញ្ជី​ប្រាថ្នា​របស់​ខ្ញុំ';
	
	arrLang['en']['best_bidding'] = 'BEST BIDDING';
	arrLang['kh']['best_bidding'] = 'ដេញថ្លៃច្រើនបំផុត';
	
	arrLang['en']['best_brand'] = 'BEST BRAND';
	arrLang['kh']['best_brand'] = 'ម៉ាកពេញនិយម';
	
	arrLang['en']['contact'] = 'CONTACT';
	arrLang['kh']['contact'] = 'ទំនាក់ទំនង';
	
	arrLang['en']['about'] = 'ABOUT';
	arrLang['kh']['about'] = 'អំពីយើង';
	
	arrLang['en']['language'] = 'LANGUAGE';
	arrLang['kh']['language'] = 'ភាសា';
	
	arrLang['en']['english'] = 'ENGLISH';
	arrLang['kh']['english'] = 'អង់គ្លេស';
	
	arrLang['en']['khmer'] = 'KHMER';
	arrLang['kh']['khmer'] = 'ខ្មែរ';
	
	arrLang['en']['cateogories'] = 'CATEGORIES';
	arrLang['kh']['cateogories'] = 'ប្រភេទ';
	
	arrLang['en']['login'] = 'Login';
	arrLang['kh']['login'] = 'ចូល';
	
	arrLang['en']['register'] = 'Register';
	arrLang['kh']['register'] = 'ចុះឈ្មោះ';
	
	arrLang['en']['welcome'] = 'Welcome';
	arrLang['kh']['welcome'] = 'សូមស្វាគមន៍';
	
	arrLang['en']['logout'] = 'Logout';
	arrLang['kh']['logout'] = 'ចាកចេញ';
	
	arrLang['en']['username'] = 'Username';
	arrLang['kh']['username'] = 'ឈ្មោះ​អ្នកប្រើប្រាស់';
	
	arrLang['en']['password'] = 'Password';
	arrLang['kh']['password'] = 'ពាក្យសម្ងាត់';
	
	arrLang['en']['sign_in'] = 'Sign in';
	arrLang['kh']['sign_in'] = 'ចុះឈ្មោះចូល';
	
	
	/* --  Footer -- */
	arrLang['en']['privacy'] = '2016; Privacy Policy';
	arrLang['kh']['privacy'] = '2016; គោលការណ៍​ភាព​ឯកជន';
	
	arrLang['en']['home'] = 'Home';
	arrLang['kh']['home'] = 'គេហទំព័រដើម';
	
	arrLang['en']['seller'] = 'Seller';
	arrLang['kh']['seller'] = 'អាជីវករ';
	
	arrLang['en']['buyer'] = 'Buyer';
	arrLang['kh']['buyer'] = 'អតិថិជន';
	
	arrLang['en']['SELLER_ACCEPTS_WING'] = 'Seller Accepts Wing';
	arrLang['kh']['SELLER_ACCEPTS_WING'] = 'អាជីវករព្រមទទួលការបង់ប្រាក់តាម វីង';
	

	$(document).ready(function(e) {
		$('.translate').click(function() {
			var lang = $(this).attr('id');

			$('.lang').each(function(index, element) {
				$(this).text(arrLang[lang][$(this).attr('key')]);
			});
		});
	});
</script>