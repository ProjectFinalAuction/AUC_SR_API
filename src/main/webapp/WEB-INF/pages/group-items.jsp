<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Cambodia Auction</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/group-items.css">
	<link rel="stylesheet" type="text/css" href="css/media.css">

	<!-- link for top scroll -->
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/scroll-to-top.js"></script>
<noscript>Not seeing a <a href="http://www.scrolltotop.com/">Scroll to Top Button</a>? Go to our FAQ page for more info.</noscript>

</head>
<body>
	<!-- ================ Starting Header Section ================= -->
	<header>
		<div class="container">
			<div class="row">
				<!-- ================ Logo Section ================= -->
				<div class="col-md-6">
					<img src="images/iwantlogo1.png" class="img-responsive" style="width:80%">
				</div>
				<!-- ================ Service Section ================= -->
				<div class="col-md-6 service" >
					<a href="register.html"> Create Account</a>
					<a href="login.html"> Log in</a>
					<p>Customer Service (+855) 070 730-619</p>
				<!-- ================ Form SearchTop Section ================= -->
				<form class="form-inline navbar-form navbar-right" id="searchTop" 
				style="display:none;opacity: 1">
				  <div class="form-group">
				    <div class="input-group">
				      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Enter keyword">
				      <div class="input-group-addon">Search</div>
				    </div>
				  </div>				
	      		</form>
	      		<!-- ================ End form SearchTop Section ================= -->
				</div>
				<!-- ================ End Service Section ================= -->
			</div>
			<!-- ================ End Row Section ================= -->
		</div>
		<!-- ================ End Container Section ================= -->
	</header>
	<!-- ================ Ending Header Section ================= -->

	<!-- ================ Starting MenuBar Section ================= -->
	<div id="menu">
		<nav class="navbar navbar-default">
		  	<div class="container">
		  		<div class="navbar-header">
	      		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
	      		</button>
	      		<a class="navbar-brand" href="#"></a>
    			</div>

			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	     			<ul class="nav navbar-nav slide">
				        <li class="active"><a href="index.html">Home <span class="sr-only">(current)</span></a></li>
				        <li class="dropdown">
	         				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Categories<span class="caret"></span></a>
				          	<ul class="dropdown-menu">
					            <li><a href="#">Technology</a></li>
					            <li><a href="#">House/Industries</a></li>
					            <li><a href="#">Automotive</a></li>
					            <li><a href="#">Jewelry</a></li>
					            <li><a href="#">Clothes</a></li>
					            <li><a href="#">Furniture</a></li>
					            <li><a href="#">Miscellaneous</a></li>
				         	</ul>
	        			</li>
				        <li><a href="sell_first_step.html">Seller</a></li>
				        <li><a href="#">Buyer</a></li>
				        <li><a href="contact.html">Contact</a></li>
				        <li><a href="about.html">About</a></li>
				        <li><a href="#" style="border-right: none;display: none" id="search"><i class="fa fa-search"></i>
							search
				        </a></li>
	      			</ul>
	      			<!-- ================ Form Search on Menu bar Section ================= -->
			      	<form class="form-inline navbar-form navbar-right" id="formsearch">
						<div class="form-group">
						    <div class="input-group">
						      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Enter keyword">
						      <div class="input-group-addon">Search</div>
						    </div>
						</div>				
			      	</form><!-- ================ End Form Search on Menu bar Section ================= -->
	   			</div><!-- /.navbar-collapse -->
	  		</div><!-- /.container-->
		</nav>
	</div>
	<!-- ================ Ending MenuBar Section ================= -->

	<!-- ================ Starting Content Section ================= -->
	<div class="content">
		<div class="container-fluid">
		<!-- sub category list view -->
		<div class="col-md-12">
			<div class="panel panel-default">
				 <div class="panel-body"><small><a href="index.html">HOME</a> / CATEGORY / AUTOMOTIVE</small></div>
			</div>
		</div>

		<div class="row">
		<!-- ============ List Categpries Section ============= -->
			<div class="col-md-3">
				<div class="list-group categories">
					<p style="font-weight: bold; font-size: 20px;" class="list-group-item">Categories</p>
				  	<a href="#" class="list-group-item">Phone & Accessories<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Computer & Office<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Consumer Electronic<span class="badge">2</span></a>
				 	<a data-toggle="collapse" href="#collapse1" class="list-group-item">Automotive & Motorcycle<span class="badge">2</span>
				 		<div id="collapse1" class="collapse""><span class="glyphicon glyphicon-triangle-right" aria-hidden="true" style="padding-left:5px;"></span> Automotive
				       	  <!-- <a href="#" class="list-group-item">Automotive</a> -->
				          <a href="#" class="list-group-item"><span class="glyphicon glyphicon-triangle-right" aria-hidden="true" style="padding-left:5px;"></span> Motorcycle</a>
				        </div>
				 	</a>

				 	<a href="#" class="list-group-item">Men's Clothing<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Women's Clothing<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Jewellry & Watch<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Home & Garden<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Bag & Shoes<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Toy, Kid & Baby<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Sport & Outdoors<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Health & Beauty<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Phone & Accessories<span class="badge">2</span></a>
				</div>
			</div><!-- ============ End List Categpries Section ============= -->
			<div class="col-md-9">
				<!-- ================ Starting New Item Content ================ -->
				<!-- item 1 -->
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-3">
							<a href="bid-detail.html"><img src="images/newcar1.png" class="img-thumbnail"></a>
						</div>
						<div class="col-md-5">
							<a href="bid-detail.html" class="title">2009 BMW 5 Series 530i</a>
							<h5>Will deliver in the Tri State area!</h5>
						</div>
						<div class="col-md-4" id="right-info">
							<b>Auction</b>
							<div>
							<h5>9 Days, 21 Hours remaining</h5>
							<span class="price">$10,000.00</span><span>0 Bids</span>
				       			<a href="bid-detail.html" class="btn btn-primary" role="button">Bid Now<span class="glyphicon glyphicon-chevron-right"></span></a>
				       		</div>
						</div>
					</div>
				</div>
				<!-- item 2 -->
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-3">
							<a href="#"><img src="images/lexus570.jpg" class="img-thumbnail"></a>
						</div>
						<div class="col-md-5">
							<a href="#" class="title">Lexus 570 2016</a>
							<h5>Color white</h5>
						</div>
						<div class="col-md-4" id="right-info">
							<b>Auction</b>
							<div>
							<h5>9 Days, 21 Hours remaining</h5>
							<span class="price">$10,000.00</span><span>0 Bids</span>
				       			<a href="#" class="btn btn-primary" role="button">Bid Now<span class="glyphicon glyphicon-chevron-right"></span></a>
				       		</div>
						</div>
					</div>
				</div>
			  		
			</div><!-- ============ End col-md-9 Section ============= -->
		</div>
	</div>
	<!-- ================ Ending Content Section ================= -->

	<!-- ================ Starting Footer Section ================= -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="images/iwantlogo1.png" class="img-responsive" style="width:80%">
					<p>&copy; 2016; Privacy Policy</p>
				</div>
				<div class="col-md-5">
					<div class="container">
					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="navfooter">
					      <ul class="nav navbar-nav">
					       	<li class="active"><a href="index.html">Home</a></li>
					        <li><a href="sell_first_step.html">Seller</a></li>
					        <li><a href="#">Buyer</a></li>
					        <li><a href="contact.html">Contact</a></li>
					        <li><a href="about.html">About</a></li>
					      </ul>
					    </div><!-- /.navbar-collapse -->
					</div><!-- /.container -->
				</div>
				<div class="col-md-2 text-center facebook">
					<i class="fa fa-facebook-square fa-2x" aria-hidden="true" style="color: #5061c6;"></i>
					<i class="fa fa-twitter-square fa-2x" aria-hidden="true" style="color: #42ceec;"></i>
					<i class="fa fa-google-plus-square fa-2x" aria-hidden="true" style="color: #d73d32;"></i>
				</div>
			</div>
		</div>
	</footer>
	<!-- ================ Ending Footer Section ================= -->

</body>
	<script type="text/javascript" src="js/jquery-2.1.3.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>	
</html>