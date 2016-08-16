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
				<i class="fa fa-volume-control-phone"></i><span> OUR CUSTOMER CARE +855 70 730 619</span>
				</div>
				<div id="right-head-info" class="col-md-6">
				<span>LOGIN / REGISTER &nbsp;|&nbsp; </span>
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
				<div class="col-md-5">
					<ul class="menu-list-ul">
						<li class="menu-list-li"><a href="#">BEST BIDDING</a></li>
						<li class="menu-list-li"><a href="#">BEST BRAND</a></li>
						<li class="menu-list-li"><a href="#">CONTACT</a></li>
						<li class="menu-list-li"><a href="about.html">ABOUT</a></li>
					</ul>
				</div>
				<div class="col-md-3" style="margin-top: 35px; text-align:right;">
					LANGUAGE
					<select>
						<option>ENGLISH</option>
						<option>KHMER</option>
					</select>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="padding-right:0">
			<div class="row" style="padding:0">
				<div class="col-md-3" style="line-height:-8px;background-color: #e6e6e6;padding:2px;">
					<div align="center" style="color:gray; margin:5px 0 0 15px;"><b>CATEGORIES</b>
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
<script type="text/javascript">
$("#dropdownmenu").click(function(){
	$("#menustand").toggle(function(){
		$("#right-content").toggleClass('col-md-9 col-md-12');
	});
});

</script>