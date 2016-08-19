<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ITEM INFORMAITON</title>	
<style type="text/css">
.sublinkcategory{
	color: gray;
	font-size: 12px;
}
#status1 p{
 	padding: 1px 5px;
 	margin: 0;
	float: right;
	background-color: blue;
	color: white;
	font-weight: bold;
	border-radius: 3px;
}
#status2 p{
 	padding: 1px 5px;
 	margin: 0;
	float: right;
	background-color: red;
	color: white;
	font-weight: bold;
	border-radius: 3px;
}


.choose ul li a,.productinfo p{
                color: black;
            }
            .add-to-cart{
                color:white;
            }
            .productinfo{
                border:1px solid #8BC34A ;
            }
            .choose ul li a,.productinfo p,.category-products .panel-default .panel-heading .panel-title a,.brands-name .nav-stacked li a,.shop-menu ul li a,.mainmenu ul li a{
                color: black;
            }
            .add-to-cart{
                color:white;
            }

</style>

<jsp:include page="header.jsp" />
<!-- menu -->
<jsp:include page="menu.jsp" />
<!-- left content -->
<jsp:include page="left-content.jsp" />
<!-- right content -->
<div class="col-md-9" ng-controller="auctionCtrl" style="padding:0;" id="right-content">
	<div class="container-fluid">
		<input type="hidden" id="ac_id" value="${param.Aid}">
		<!-- detail content information -->
		<ul class="list-group" style="padding-left: 14px;">
		  <li class="list-group-item sublinkcategory"><span class="lang" key="home">HOME</span> / {{category_name | uppercase}} / {{product_name | uppercase}}</li>
		</ul>
			<!-- image and some detail information -->
			<div class="row" style="margin-top:-15px;">
				<!-- colunm for image content -->
				<div class="col-md-5" style="padding-right:0;">
					<div class="list-group">
						<div class="list-group-item">
							<p><span class="lang" key="remainin_time">REMAINING TIME</span>: <span>{{auc_detail.remainingTime1 | durationview}}</span></p>
						</div> <!-- end remain time -->
						<div class="list-group-item" id="img" ng-controller="auctionCtrl">
							<div class="thumbnail" ng-repeat="proimg in gallery" ng-show="$first">
								<a href="images/newcar1.png" data-lightbox="example-set" id="myLink">
								<img src="{{proimg.image_path}}" class="img-responsive" width="100%" id="myImage"/></a>
							</div>
						</div>
						<div class="list-group-item">
							<div class="thumbnail" style="border:none;">

	<script type="text/javascript" src="js/jssor.slider.min.js"></script>
    <!-- use jssor.slider.debug.js instead for debug -->

	<div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 819px; height: 150px; overflow: hidden; visibility: hidden;">

        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 809px; height: 150px; overflow: hidden;">
        	<div style="display: none;">
                <img data-u="image" src="images/newcar1.png" id="moreImgs6"/><a href="images/newcar1.png" data-lightbox="example-set"></a>
            </div>
            <div style="display: none;">
                <img data-u="image" src="images/newcar2.png" id="moreImgs7"/><a href="images/newcar2.png" data-lightbox="example-set"></a>
            </div>
            <div style="display: none;">
                <img data-u="image" src="images/newcar3.png" id="moreImgs8"/><a href="images/newcar3.png" data-lightbox="example-set"></a>
            </div>
            <div style="display: none;">
                <img data-u="image" src="images/newcar4.png" id="moreImgs9"/><a href="images/newcar4.png" data-lightbox="example-set"></a>
            </div>
            <!-- <div style="display: none;">
                <img data-u="image" src="images/home5.png" id="moreImgs5"/><a href="images/home5.png" data-lightbox="example-set"></a>
            </div>  -->	     
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb03" style="bottom:10px;right:20px;">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:21px;height:21px;">
                <div data-u="numbertemplate"></div>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora03r" style="top:0px;right:18px;width:55px;height:55px;" data-autocenter="2"></span>
    </div>
    <!-- link from js.js to call function jssor_1_slider_init() -->
    <script type="text/javascript" src="js/js.js"></script>
    <script>
        jssor_1_slider_init();
    </script>
    						</div>
						</div>
					</div> <!-- end div content left -->
				</div>

<!-- ==================== end image ========================= -->

				<!-- colunm for information content -->
				<div class="col-md-7" style="padding-right:0; margin-bottom: -10px;" id="tablebidding">
					<div class="list-group">
						<div class="list-group-item">
							<h3>{{product_name}}</h3>
							<h4>{{product_condition}}</h4>
						</div>
						<div class="list-group-item" >
							<table class="table table-hover">
								<thead>
									<tr>
							        	<td><b><span class="lang" key="current_price">Current Price</span></b></td>
							        	<td>{{current_price | currency}}</td>
							      	</tr>
								</thead>
							    <tbody>
							   		<tr>
							        	<th><span class="lang" key="minimum_bid">Minimum Bid</span></th>
							        	<td>{{start_price + increment_price | currency}} ({{start_price | currency}} + {{increment_price | currency}})</td>
							      	</tr>
							      	<tr>
							        	<th><span class="lang" key="max_bid">Your Maximum Proxy Bid</span></th>
							        	<td colspan="2">
							        	<div class="input-group">
									      <div class="input-group-addon">$</div>
									      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
									      <div class="input-group-addon">.00</div>
								    	</div>
							        		<!-- <input type="text" class="form-control"> -->
							        	</td>
							      	</tr>
							      	<tr>
							        	<th></th>
							        	<td align="center">
							        		
							        	<sec:authorize access="isAuthenticated()">
                                            <span ng-init="findUserById()"></span>   
                                        	<a class="btn btn-success btn-block lang" style="width: 50%; float: left;" 
							        		key="bid_now" ng-click="test()">Bid Now</a>
                                        </sec:authorize>
							        	<sec:authorize access="!isAuthenticated()">
							        		<a class="btn btn-success btn-block lang" style="width: 50%; float: left;" 
							        		key="bid_now" data-toggle="modal" data-target="#login">Bid Now</a>
							        	</sec:authorize>
							        	</td>
							        							        	
							      	</tr>
							      	<tr>
							        	<td colspan="2">
							      			<small><span class="lang" key="description">Your site name here will bid incrementally for you up to your maximum bid. Your maximum bid is kept a secret from other users.   Your bid is a contract between you and the listing creator. If you have the highest bid you will enter into a legally binding purchase contract.</span></small>
							        	</td>
							      	</tr>
							      	</tbody>
							     </table>
							</div>
						</div>
					</div>
					<div id="titleEndStatus" style="color: red; padding:10px; text-align: center"></div>
					<div class="col-md-7" style="padding-right:0; margin-bottom: 20px;" id="tablebidend">
<!-- 						<div class="list-group"> -->
							<div class="list-group-item" >
							     <table class="table table-hover">	
							     	<thead>
							     	<tr>
							        	<td><span class="lang" key="current_price"><b>Current Price</b></span></td>
							        	<td>{{current_price | currency}}</td>
							        	<td id='status1' ng-if="status==1" value="{{status}}" class="status"><p>Active</p></td>
							        	<td id='status2' ng-if="status==4" value="{{status}}" class="status"><p>End</p></td>
							      	</tr>
							     	</thead>
							     	<tbody>
							      	
							      	<tr>
							        	<td style="color:red;"><span class="lang" key="reserve_price">Reserve Price Not Met</span> </td>
							        	<td colspan="2"></td>
							      	</tr>
							      	<tr>
							        	<th><span class="lang" key="bid_history">Bid History</span></th>
							        	<td colspan="2">0 <span class="lang" key="bidsy">Bids</span></td>
							      	</tr>
							      	<tr>
							        	<th>
							        	<span class="lang" key="end_date">End Date</span></th>
							        	<td colspan="2">{{end_date}}</td>
							      	</tr>
							      	<tr>
							        	<th><span class="lang" key="start_date">Start Date</span></th>
							        	<td colspan="2">{{start_date}}</td>
							      	</tr>
							      	<tr>
							        	<th><span class="lang" key="listed_by">Listed By</span></th>
							        	<td colspan="2">
							        		<i class="fa fa-star-o" aria-hidden="true"></i>
							        		<i class="fa fa-star-o" aria-hidden="true"></i>
							        		<i class="fa fa-star-o" aria-hidden="true"></i>
							        		<i class="fa fa-star-o" aria-hidden="true"></i>
							        		<i class="fa fa-star-o" aria-hidden="true"></i>
							        	</td>
							      	</tr>
							    </tbody>
							    
							</table>
						</div>
					</div> <!-- end div content right -->
				</div>
			</div> <!-- end div row -->
			
			<!-- more description of item -->
			<div class="col-md-12">
				<!-- group description infor -->
				<div class="list-group">
					<div class="list-group-item"><span class="lang" key="desc">DESCRIPTION</span></div>
					<div class="list-group-item">
						<p>{{product_description}}</p>
					</div>
				</div>
				<!-- group payment infor -->
				<div class="list-group">
					<div class="list-group-item"><span class="lang" key="payment_option">PAYMENT OPTION</span></div>
					<div class="list-group-item">
						<P>
						<span class="lang" key="SELLER_ACCEPTS_WING">Seller Accepts Wing</span> <br>
						<span class="lang" key="SELLER_ACCEPTS_CASH">Seller Accepts Cash</span>
						</P>
					</div>
				</div>
			</div>
			</div>
			</div>
	<!-- ============ End col-md-9 Section ============= -->

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



	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<script type="text/javascript" src="http://momentjs.com/downloads/moment-with-locales.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/main-angular.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#menustand").hide(function(){
				$("#right-content").removeClass('col-md-9');
			});

			
		});
	</script>
	