<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item Information</title>
<style type="text/css">
.sublinkcategory{
	color: gray;
	font-size: 12px;
}

</style>

<jsp:include page="header.jsp" />
<!-- menu -->
<jsp:include page="menu.jsp" />
<!-- left content -->
<jsp:include page="left-content.jsp" />
<!-- right content -->
<div class="col-md-9" ng-controller="auctionCtrl" style="padding: 0;" id="right-content">
	<div class="container-fluid">
		<!-- detail content information -->
		<ul class="list-group" style="padding-left: 14px;">
		  <li class="list-group-item sublinkcategory">HOME / {{category_name}} / DREAM 2014</li>
		</ul>
			<!-- image and some detail information -->
			<div class="row" style="margin-top:-15px;">
				<!-- colunm for image content -->
				<div class="col-md-5" style="padding-right:0;">
					<div class="list-group">
						<div class="list-group-item">
							<p>REMAINING TIME: <span>7 DAYS, 7 HOURS</span></p>
						</div> <!-- end remain time -->
						<div class="list-group-item" id="img">
							<div class="thumbnail">
								<a href="images/newcar1.png" data-lightbox="example-set" id="myLink"><img src="images/newcar1.png" class="img-responsive" width="100%" id="myImage"/></a>
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
				<div class="col-md-7" style="padding-right:0;">
					<div class="list-group">
						<div class="list-group-item">
							<h3>2009 BMW 5 Series 530i</h3>
							<h4>Will deliver in the Tri State area!</h4>
						</div>
						<div class="list-group-item" >
							<table class="table table-hover">
								<thead>
									<tr>
							        	<td><b>Current Price</b></td>
							        	<td>10,000.00$</td>
							      	</tr>
								</thead>
							    <tbody>
							   		<tr>
							        	<th>Minimum Bid</th>
							        	<td>10,050.00$ (10,000.00$ + 50.00$)</td>
							      	</tr>
							      	<tr>
							        	<th>Your Maximum Proxy Bid</th>
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
							        		<button class="btn btn-success btn-block" style="width: 50%; float: left;">Bid Now</button>
							        	</td>
							      	</tr>
							      	<tr>
							        	<td colspan="2">
							      			<small>Your site name here will bid incrementally for you up to your maximum bid. Your maximum bid is kept a secret from other users.   Your bid is a contract between you and the listing creator. If you have the highest bid you will enter into a legally binding purchase contract.</small>
							        	</td>
							      	</tr>
							      	
							      	<tr>
							        	<th>Current Price</th>
							        	<td>10,000.00$</td>
							      	</tr>
							      	<tr>
							        	<td style="color:red;">Reserve Price Not Met </td>
							        	<td></td>
							      	</tr>
							      	<tr>
							        	<th>Bid History</th>
							        	<td>0 Bids</td>
							      	</tr>
							      	<tr>
							        	<th>End Date</th>
							        	<td>Sunday, June 30, 2016 12:00 AM</td>
							      	</tr>
							      	<tr>
							        	<th>Start Date</th>
							        	<td>Sunday, June 15, 2016 12:00 AM</td>
							      	</tr>
							      	<tr>
							        	<th>Listed By</th>
							        	<td>
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
					<div class="list-group-item">DESCRIPTION</div>
					<div class="list-group-item">
						<p>
						Includes a moonroof, 10-speaker AM/FM/CD sound system, iDrive central control (with six programmable memory buttons), 10-way power seats, Bluetooth hands-free phone connectivity and no-charge maintenance for four years or 50,000 miles. Safety equipment includes electronic stability control plus front, front-side and two-row curtain airbags. Unique to the 535xi Sport Wagon are a dual-panel panoramic sunroof and a power liftgate.
						</p>
					</div>
				</div>
				<!-- group payment infor -->
				<div class="list-group">
					<div class="list-group-item">PAYMENT OPTION</div>
					<div class="list-group-item">
						<P>
						Seller Accepts PayPal <br>
						Seller Accepts Credit Cards
						</P>
					</div>
				</div>
			</div>
			</div>
			</div>
	<!-- ============ End col-md-9 Section ============= -->

	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/category-angular.js"></script>