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
<!-- right content -->
	<div class="col-md-9" ng-controller="auctionCtrl" id="right-content">
		<input type="hidden" id="loop_auc_id" value="${param.id}">
		<!-- ================ Item List ================ -->
		<div class="container-fluid">

			<!-- TOP BAR -->
			<div class="well well-sm section-title" style=" background-color: white; margin-top: 10px; ">
				<form action="#" class="form-inline text-right" method="get">
					<input id="ViewStyle" name="ViewStyle" type="hidden" value="grid">
					<input id="StatusFilter" name="StatusFilter" type="hidden" value="active_only">            
					<div class="form-group">
						<div class="btn-group">
							<button id="ShowListView" type="button" class="btn btn-sm btn-primary"><span id="ToggleIcon" class="glyphicon glyphicon-list"></span></button>
							<button id="ShowGridView" type="button" class="btn btn-sm btn-default"><span id="ToggleIcon" class="glyphicon glyphicon-th-large"></span></button>
						</div>
					</div>
					<div class="form-group">
						<div class="btn-group">
							<button id="Status_IncludeActive" class="btn btn-sm btn-primary"><spring:message code="active"></spring:message></button>
							<button id="Status_IncludeCompleted" class="btn btn-sm btn-default"><spring:message code="completed"></spring:message></button>
						</div>
					</div>


<%-- 					<div class="panel-collapse collapse" id="item-{{$index+1}}">
				       <ul class="list-group">
				         <li class="list-group-item" ng-repeat="subCategory in c.subCategories">&nbsp;&nbsp;
				         <a href="${pageContext.request.contextPath}/itemlist?cat={{subCategory.category_name}}&&id={{subCategory.category_id}}" class="submenu"><i class="fa fa-chevron-right" aria-hidden="true"></i>
				         &nbsp;&nbsp;{{subCategory.category_name}}</a></li>			         
				       </ul>
				    </div> --%>


					<div class="form-group">
						<div class="input-group">
							<label class="input-group-addon" for="SortFilterOptions"><spring:message code="filter"></spring:message></label>
							<select class="form-control input-sm" id="SortFilterOptions" name="SortFilterOptions"><option selected="selected" value="0"><spring:message code="all"></spring:message></option>
								<option ng-repeat="b in auctionProduct | unique: 'product.brand.brand_id'"> {{b.product.brand.brand_name}} </a> </option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<div class="input-group">
							<label class="input-group-addon" for="SortFilterOptions"><spring:message code="sort"></spring:message></label>
							<select class="form-control input-sm" id="SortFilterOptions" name="SortFilterOptions"><option selected="selected" value="0"><spring:message code="ending_soon"></spring:message></option>
								<option value="1"><spring:message code="newest"></spring:message></option>
								<option value="2"><spring:message code="price_low_to_high"></spring:message></option>
								<option value="3"><spring:message code="price_high_to_low"></spring:message></option>
								<option value="4"><spring:message code="title_a_to_z"></spring:message></option>
								<option value="5"><spring:message code="title_z_to_a"></spring:message></option>
								<option value="6"><spring:message code="listing_id_0_to_9"></spring:message></option>
								<option value="7"><spring:message code="listing_id_9_to_0"></spring:message></option>
								<option value="8"><spring:message code="activity_high_to_low"></spring:message></option>
								<option value="9"><spring:message code="activity_low_to_high"></spring:message></option>
							</select>
						</div>
					</div>
					<input type="submit" id="submitDropDown" class="awe-hidden">
				</form>    
			</div>

			<!-- DATA-LISTING -->
			
			<section data-listingid="327081" style=" width: 100% " ng-repeat="a in auctionProduct ">
				<!-- wrapper div -->
				<div class="panel panel-default clearfix listing" >		

					<!-- image and property -->
					<div class="col-sm-7 img-wraper">
						<!-- img & title -->
						<h1 class="title">
							<a href="#">
								<span class="img" ng-repeat="proimg in a.product.gallery" ng-show="$first">
									<img src="{{proimg.image_path}}" class="img-thumbnail" style="width: 160px; height: 170px" alt="Cinque Terre">
								</span>
								<strong>{{b.product.product_name}}</strong>
							</a>
						</h1>
						<!-- subtitle -->
						<p class="subtitle">
							<a href="#">
								<strong></strong>
							</a>
						</p>
						<!-- seller -->
						<span class="condition">
							<spring:message code="brand"></spring:message>: <a href="#">{{a.product.brand.brand_name}}</a>
						</span><br>
						<!-- seller -->
						<span class="condition">
							<spring:message code="condition"></spring:message>: <a href="#">{{a.product_condition}}</a>
						</span><br>

						<span class="seller">
							<spring:message code="seller"></spring:message>: <a href="#">{{a.product.supplier.contact_name}}</a>
						</span><br>
						
					</div>	<!--End image and property -->

					<!-- Auction Part -->
					<div class="col-sm-5" >
						<span class="label label-primary status-type" style="float: right; background-color: #BBBAB9 ; margin-top: 5px; "><spring:message code="auction"></spring:message></span><br><br><br><br><br>
						<span style=" text-align: right; ">
							<p class="time remaining" > 
								<span data-epoch="ending" data-end-hide-selector="[data-listingid='327081'] .awe-rt-Done" data-action-time="08/25/2016 00:22:49" data-end-value="Ended" data-action-milliseconds="1472059369000">9 Days, 34 Minutes</span>
								<span class="awe-rt-Done "><spring:message code="remaining"></spring:message></span>
							</p>
							<p class="bids">
								&nbsp;
								<span class="awe-rt-CurrentPrice price NumberPart"><span class="NumberPart">{{a.current_price | currency}}</span></span>
								<span class="glyphicon glyphicon-option-vertical"></span>
								<span class="awe-rt-AcceptedListingActionCount" data-previous-value="0">0</span>
								<spring:message code="bids"></spring:message>
								&nbsp;
								<a href="#" class="btn btn-primary awe-rt-Active awe-rt-Done"><spring:message code="bid_now"></spring:message> 
									<span class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</p>
						</span>
					</div>	<!-- End auction part -->
					

				</div> <!-- End wrapper div -->
			</section>


		</div>


	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- unique script -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/angular-filter.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/chhuon.js"></script>