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
</style>

<!-- right content -->
	<div class="col-md-9" ng-controller="auctionCtrl" id="right-content">
		<input type="hidden" id="loop_auc_id" value="${param.id}">
		<!-- ================ Contact US ================ -->
		<br>
		
		<div class="col-xs-12">
		    <div class="well well-sm section-title text-muted">
		        <span><strong>Contact Us</strong></span>
		    </div>
		    <div class="panel panel-default">
		        <div class="row">
		            <div class="col-xs-12 col-md-6"><br><br>
			            <form action="/AWDemo/Contact" class="form-horizontal" id="ContactUsForm" method="post">                    
			            	<div class="form-group">
			                    <label for="FirstName" class="col-md-3 control-label required">
			                        First Name
			                    </label>
			                    <div class="col-md-9">
			                        <input class="form-control" id="FirstName" name="FirstName" type="text" value="">
			                    </div>
			                </div>
			                <div class="form-group">
			                    <label for="LastName" class="col-md-3 control-label required">
			                        Last Name
			                    </label>
			                    <div class="col-md-9">
			                        <input class="form-control" id="LastName" name="LastName" type="text" value="">
			                    </div>
			                </div>
			                <div class="form-group">
			                    <label for="Email" class="col-md-3 control-label required">Email</label>
			                    <div class="col-md-9">
			                        <input class="form-control" id="Email" name="Email" type="text" value="">
			                    </div>
			                </div>
			                <div class="form-group">
			                    <label for="Message" class="col-md-3 control-label required">Message</label>
			                    <div class="col-md-9">
			                        <textarea class="form-control" cols="20" id="Message" name="Message" rows="2"></textarea>
			                    </div>
			                </div>
			                <div class="form-group">
			                    <label class="col-md-3 control-label"></label>
			                    <div class="col-md-9">
			                        <a href="mailto:abc.ekchhuon@gmail.com">
			                        	<button class="btn btn-primary pull-right" id="SendMessage">
				                        <span class="glyphicon glyphicon-envelope btnsend">
				                        </span> Send</button>
			                        </a>
			                        
			                    </div>
			                </div>
			            </form>            
		            </div><br>
		            
					<!-- TODO: RIGH SECTION | DENH TLAI -->
		            <div class="col-xs-12 col-md-6" style="  " >
		                <h4>
		                   <strong> 
		                   		<a href="#">
		                   			<span style="color:#238FC7 " > DENH</span> <span style="color:#515153" >TLAI</span> 
		                   		</a>
		                   </strong>
		                </h4 >
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
						
						</div>
		
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