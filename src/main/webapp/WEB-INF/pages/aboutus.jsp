<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="cambodia_auction"></spring:message></title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/accordion-menu.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/accordion-menu.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/bootstrap.min.js"></script>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/static/js/googlemap.js"></script>
<!-- header -->
<jsp:include page="header.jsp" />
<!-- menu -->
<jsp:include page="menu.jsp" />
<!-- left content -->
<jsp:include page="left-content.jsp" />

<style type="text/css">
	.btn-primary {
		background:#238FC7;
	}
	.glyphicon-map-marker, .glyphicon-earphone, .glyphicon-envelope {
		color:#238FC7;
	}
	.btnsend{
		color:white;
	}
	.section-title{
		background-color: #FFFFFF;
	}
 	.section-title span {
		margin-left: 3%;
	}
	.txt p{
		text-align: justify;
	}
</style>

<!-- right content -->
	<div class="col-md-9" ng-controller="auctionCtrl" id="right-content">
		<input type="hidden" id="loop_auc_id" value="${param.id}">
		<!-- ================ ABOUT US ================ -->
		<br>
		
		<div class="col-xs-12">
		    <div class="well well-sm section-title text-muted">
		        <span><strong>About Us</strong></span>
		    </div>
		    <div class="panel panel-default"><br>
		        <div class="row" style=" background-color: ">
		        	<!-- TODO: RIGHT PART -->
		            <div class="col-xs-12 col-md-6" style=" background-color: ">
			            <div class="row">
					        <div class="col-sm-7 col-md-11 txt" >
					        
					        	<!--TODO: Article -->
					            <p>  
					            	<strong> 
				                   		<a href="#">
				                   			<span style="color:#238FC7 " > DENH</span>
				                   			<span style="color:#515153" >TLAI</span> 
				                   		</a>
				                   	</strong>
				                   	is the first Cambodian Online Auction System.
				                   	We offer online service in which people can exchange their products by means of bidding. 
				                   	We browse the items from all around to into a single platform. 
				                   	The system is found in 2016 with the aiming at improving online transaction and participating the country’s development and its business environment in Cambodia. 
				                   	Cambodian people is our target user. 
				                   	
				                   	<!--
				                   	DENH TLAI គឺជាសេវាកម្មដេញថ្លៃដំបូងគេបំផុតក្នុងប្រទេសកម្ពុជា។ យើងផ្តល់ឱកាសអោយអ្នកប្រើប្រាស់អាចទិញ រឺ ដាក់លក់ទំនិញរបស់ខ្លួនតាមរយៈការដេញថ្លៃ។ 
				                   	ពួកយើងត្រូវបានបង្កើតឡើងក្នុងឆ្នាំ ២០១៦​ ក្នុងគោលបំណងជួយសម្រួលប្រត្តិការអាជីវកម្មតាមរយៈបរិបទថ្មីនៃបច្ចេកវិទ្យា និងជួយបង្កើនសក្តានុពលអាជីវកម្មក្នុងប្រទេសកម្ពុជា។ 
				                   	សេវាកម្មរបស់យើងធ្វើឡើងជាភាសារខ្មែ និងសំរាប់ប្រជាជនកម្ពុជាជាពិសេស។ 
				                   	
				                   	-->
				                   
					            </p>
					             <!--TODO: ADDRESS         -->					     
				                <div class="pi-col-md-4 pi-col-sm-6 pi-padding-bottom-30" style=" color: gray ">
									<br>
									<ul class="list-unstyled">
										<li>
											<a href="#">
		          								<span class="glyphicon glyphicon-map-marker"></span>
		        							</a>
											Address: #12, St 323, Sangkat Boeung Kak II, KhanToul Kork, Phnom Penh, Cambodia.
										</li>
										<li>
											<a href="#">
		          								<span class="glyphicon glyphicon-earphone"></span>
		        							</a>
											<span class="pi-weight-600 pi-text-white">Tel:&nbsp;&nbsp;</span> (855)97 989 9689</li>
										<li><span class="pi-weight-600 pi-text-white">&nbsp; &nbsp; &nbsp;</span>(855)77 77 12 36 (Khmer, English) </li>
										<li><span class="pi-weight-600 pi-text-white">&nbsp; &nbsp; &nbsp;</span>(855)15 4 5555 2 (Khmer, English) </li>
										<li><span class="pi-weight-600 pi-text-white">&nbsp; &nbsp; &nbsp;</span>(855)17 52 81 69(Korean, English) </li>
										
										<li>
											<a href="#">
		          								<span class="glyphicon glyphicon-envelope"></span>
		        							</a>
											
											<span class="pi-weight-600 pi-text-white">Email:</span> 
											<a href="mailto:info.denhtlai@gmail.com">info.denhtlai@gmail.com</a>
										</li>
									</ul>
								
								</div> <!-- END ADDRESS -->
					            
						    		
					    	</div>        
		            	</div>
		            </div>
		            
					<!-- TODO: RIGH SECTION | DENH TLAI -->
		            <div class="col-xs-12 col-md-6" style=" background-color: " >
		                <!-- GOOGLE MAP -->
		                <div id="googleMap" style="width:100%;height:250px;"></div>	
		            </div>
		            
		            
		            <div class="col-xs-12 col-md-6" style=" background-color: ; float:right ; text-align: right; margin-top: 4%;" >
						<img alt="kh-img" style="width:80px; height:20px; padding:0px; opacity:0.6 " src="${pageContext.request.contextPath}/resources/images/trust.jpg">
					</div>
		
		        </div>
		    </div>
	   </div>


	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- unique script -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/angular-filter.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/chhuon.js"></script>
	
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#menustand").hide(function(){
				$("#right-content").removeClass('col-md-9');
			});

			
		});
	</script>