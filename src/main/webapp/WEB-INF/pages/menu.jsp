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

</style>
<body ng-app="myApp">
<header>
	<div class="container-fluid head">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
				<i class="fa fa-volume-control-phone"></i><span> OUR CUSTOMER CARE +855 70 730 619</span>
				</div>
				<div id="right-head-info" class="col-md-6">
				<span>LOGIN/REGISTER | </span>
				<span>MY WISHLIST</span>
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
				<div class="col-md-8">
			
					<ul class="menu-list-ul">
						<li class="menu-list-li"><a href="#">BEST BIDDING</a></li>
						<li class="menu-list-li"><a href="#">BEST BRAND</a></li>
						<li class="dropdown menu-list-li"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">CATEGOTIES<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Technology</a></li>
								<li><a href="#">House/Industries</a></li>
								<li><a href="#">Automotive</a></li>
								<li><a href="#">Jewelry</a></li>
								<li><a href="#">Clothes</a></li>
								<li><a href="#">Furniture</a></li>
								<li><a href="#">Miscellaneous</a></li>
							</ul></li>
						<li class="menu-list-li"><a href="#">CONTACT</a></li>
						<li class="menu-list-li"><a href="about.html">ABOUT</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="background-color: #e6e6e6;padding:0">
			<div class="row" style="">
				<div class="col-md-3" style="line-height:-8px;">
					<div align="center">CATEGORIES</div>
				</div>
				<div class="col-md-9" style="padding:0">
					<form style="padding:2px;">
						<div class="input-group">
							<input type="text" placeholder="Enter keyword" style="border:none;padding-left: 20px;width:100%">
							<div class="input-group-addon" style="border:none;"><i class="fa fa-search" aria-hidden="true"></i></div>
						</div>
					</form>
				</div>
			</div>
		</div>
</header>

<!-- ================ Starting Header Section ================= -->
<!-- <header> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
			<!-- ================ Logo Section ================= -->
<!-- 			<div class="col-md-6"> -->
<%-- 				<img src="${pageContext.request.contextPath}/resources/static/images/iwantlogo1.png" class="img-responsive" --%>
<!-- 					style="width: 80%"> -->
<!-- 			</div> -->
			<!-- ================ Service Section ================= -->
<!-- 			<div class="col-md-6 service"> -->
<%-- 				<a href="${pageContext.request.contextPath}/register"> Create Account</a> <a href="${pageContext.request.contextPath}/login"> --%>
<!-- 					Log in</a> -->
<!-- 				<p>Customer Service (+855) 070 730-619</p> -->
<!-- 				================ Form SearchTop Section ================= -->
<!-- 				<form class="form-inline navbar-form navbar-right" id="searchTop" -->
<!-- 					style="display: none; opacity: 1"> -->
<!-- 					<div class="form-group"> -->
<!-- 						<div class="input-group"> -->
<!-- 							<input type="text" class="form-control" id="exampleInputAmount" -->
<!-- 								placeholder="Enter keyword"> -->
<!-- 							<div class="input-group-addon">Search</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 				================ End form SearchTop Section ================= -->
<!-- 			</div> -->
			<!-- ================ End Service Section ================= -->
<!-- 		</div> -->
		<!-- ================ End Row Section ================= -->
<!-- 	</div> -->
	<!-- ================ End Container Section ================= -->
<!-- </header> -->
<!-- ================ Ending Header Section ================= -->

<!-- ================ Starting MenuBar Section ================= -->
<!-- <div id="menu"> -->
<!-- 	<nav class="navbar navbar-default"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="navbar-header"> -->
<!-- 				<button type="button" class="navbar-toggle collapsed" -->
<!-- 					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" -->
<!-- 					aria-expanded="false"> -->
<!-- 					<span class="sr-only">Toggle navigation</span> <span -->
<!-- 						class="icon-bar"></span> <span class="icon-bar"></span> <span -->
<!-- 						class="icon-bar"></span> -->
<!-- 				</button> -->
<!-- 				<a class="navbar-brand" href="#"></a> -->
<!-- 			</div> -->

			<!-- Collect the nav links, forms, and other content for toggling -->
<!-- 			<div class="collapse navbar-collapse" -->
<!-- 				id="bs-example-navbar-collapse-1"> -->
<!-- 				<ul class="nav navbar-nav slide"> -->
<%-- 					<li class="active"><a href="${pageContext.request.contextPath}/index">Home <span --%>
<!-- 							class="sr-only">(current)</span></a></li> -->
<!-- 					<li class="dropdown"><a href="#" class="dropdown-toggle" -->
<!-- 						data-toggle="dropdown" role="button" aria-haspopup="true" -->
<!-- 						aria-expanded="false">Categories<span class="caret"></span></a> -->
<!-- 						<ul class="dropdown-menu"> -->
<!-- 							<li><a href="#">Technology</a></li> -->
<!-- 							<li><a href="#">House/Industries</a></li> -->
<!-- 							<li><a href="#">Automotive</a></li> -->
<!-- 							<li><a href="#">Jewelry</a></li> -->
<!-- 							<li><a href="#">Clothes</a></li> -->
<!-- 							<li><a href="#">Furniture</a></li> -->
<!-- 							<li><a href="#">Miscellaneous</a></li> -->
<!-- 						</ul></li> -->
<!-- 					<li><a href="sell_first_step.html">Seller</a></li> -->
<!-- 					<li><a href="#">Buyer</a></li> -->
<!-- 					<li><a href="contact.html">Contact</a></li> -->
<!-- 					<li><a href="about.html">About</a></li> -->
<!-- 					<li><a href="#" style="border-right: none; display: none" -->
<!-- 						id="search"><i class="fa fa-search"></i> search </a></li> -->
<!-- 				</ul> -->
<!-- 				================ Form Search on Menu bar Section ================= -->
<!-- 				<form class="form-inline navbar-form navbar-right" id="formsearch"> -->
<!-- 					<div class="form-group"> -->
<!-- 						<div class="input-group"> -->
<!-- 							<input type="text" class="form-control" id="exampleInputAmount" -->
<!-- 								placeholder="Enter keyword"> -->
<!-- 							<div class="input-group-addon">Search</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 				================ End Form Search on Menu bar Section ================= -->
<!-- 			</div> -->
			<!-- /.navbar-collapse -->
<!-- 		</div> -->
		<!-- /.container -->
<!-- 	</nav> -->
<!-- </div> -->
<!-- ================ Ending MenuBar Section ================= -->