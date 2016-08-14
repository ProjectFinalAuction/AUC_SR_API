<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auction List</title>
<link
	href="${pageContext.request.contextPath}/resources/static/assets/plugins/custombox/dist/custombox.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/assets/plugins/magnific-popup/dist/magnific-popup.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/assets/plugins/jquery-datatables-editable/datatables.css" />

<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<body class="fixed-left" ng-app="vAucApp" ng-controller="vAucCtrl">
	<!-- menu -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- left content -->
	<jsp:include page="left-content.jsp"></jsp:include>

	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->
	<div class="content-page">
		<!-- Start content -->
		<div class="content">
			<div class="container">
				<!-- Page-Title -->
				<div class="row">
					<div class="col-sm-12">
						<h4 class="page-title">Auction Management</h4>
						<ol class="breadcrumb">
							<li><a href="#">iWant Auction</a></li>
							<li><a href="#">Auction Management</a></li>
							<li class="active">Auction List</li>
						</ol>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="card-box">
							<div class="row m-t-10 m-b-10">
								<!--Select Limit Row-->
								<div class="col-sm-4 col-lg-2">
									<div class="dataTables_length" id="datatable-editable_length">
										<label>Show <select name="datatable-editable_length"
											aria-controls="datatable-editable"
											class="form-control input-sm" style="height: 38px;">
												<option value="10">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100">100</option>
										</select> entries
										</label>
									</div>
								</div>
								<!--Form Search-->
								<div class="col-sm-4 col-lg-6">
									<form role="form">
										<div class="form-group contact-search m-b-30">
											<input type="text" id="search" name="search"
												class="form-control" placeholder="Search...">
											<button type="submit" class="btn btn-white">
												<i class="fa fa-search"></i>
											</button>
										</div>
										<!-- form-group -->
									</form>
								</div>
								<!--Option Sort-->
								<div class="col-sm-4 col-lg-4">
									<div class="h5 m-0">
										<span class="vertical-middle">Sort By:</span>
										<div class="btn-group vertical-middle" data-toggle="buttons">
											<label class="btn btn-white btn-md waves-effect active">
												<input type="radio" autocomplete="off" checked="">
												Status
											</label> <label class="btn btn-white btn-md waves-effect"> <input
												type="radio" autocomplete="off"> Type
											</label> <label class="btn btn-white btn-md waves-effect"> <input
												type="radio" autocomplete="off"> Name
											</label>
										</div>
									</div>
								</div>
							</div>

							<!-- Table Data-->
							<div class="">
								<table class="mails m-b-0 table table-striped">
									<thead>
										<tr>
											<th>
												<div
													class="checkbox checkbox-primary checkbox-single m-r-15">
													<input id="action-checkbox" type="checkbox"> <label
														for="action-checkbox"></label>
												</div>
											</th>
											<th>
												<div class="btn-group dropdown">
													<button type="button"
														class="btn btn-white btn-xs dropdown-toggle waves-effect waves-light"
														data-toggle="dropdown" aria-expanded="false">
														<i class="caret"></i>
													</button>
												</div>
											</th>
											<th>Product_ID</th>
											<th>Product_Name</th>
											<th>Product_Condition</th>
											<th>Supplier</th>
											<th>Start Price</th>
											<th>Start Date</th>
											<th>End Date</th>
											<th>Total Bids</th>
											<th style="min-width: 90px;">Action</th>
										</tr>
									</thead>

									<tbody>
										<tr ng-repeat="a in auction">
											<td>
												<div class="checkbox checkbox-primary m-r-15">
													<input id="checkbox2" type="checkbox"> <label
														for="checkbox2"></label>
												</div>
											</td>
											<td><img
												src="${pageContext.request.contextPath}/resources/static/assets/images/products/iphone.jpg"
												class="thumb-sm" alt="product-img"></td>
											<td>{{a.product.product_id}}</td>
											<td>{{a.product.product_name}}</td>
											<td>{{a.product_condition}}</td>
											<td>{{a.product.supplier.contact_name}}</td>
											<td>{{a.start_price}}</td>
											<td>{{a.start_date}}</td>
											<td>{{a.end_date}}</td>
											<td><span>0 Bids</span></td>
											<td class="action">
												<!-- 										<button type="button" class="btn btn-info" ng-click="getAuctionById(a.auction_id)" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button> -->
												<a href="#custom-modal"><i class="fa fa-eye"
													title="View bids"></i> </a>&nbsp;&nbsp; <a href="#"
												data-toggle="modal" data-target="#myModal"
												ng-click="getAuctionById(a.auction_id)"><i
													class="fa fa-pencil-square-o" title="Edit"></i> </a>&nbsp;&nbsp;
												<a href="#" ng-click="alertme()"><i
													class="fa fa-trash-o" title="Delete"></i></a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- Table Data-->

							<!-- Pagination-->
							<div class="row">
								<div class="col-sm-6">
									<div class="dataTables_info" id="datatable-editable_info"
										role="status" aria-live="polite">Showing 1 to 10 of 16
										entries</div>
								</div>
								<div class="col-sm-6">
									<div class="dataTables_paginate paging_simple_numbers"
										id="datatable-editable_paginate">
										<ul class="pagination">
											<li class="paginate_button previous disabled"
												aria-controls="datatable-editable" tabindex="0"
												id="datatable-editable_previous"><a href="#">Previous</a>
											</li>
											<li class="paginate_button active"
												aria-controls="datatable-editable" tabindex="0"><a
												href="#">1</a></li>
											<li class="paginate_button "
												aria-controls="datatable-editable" tabindex="0"><a
												href="#">2</a></li>
											<li class="paginate_button next"
												aria-controls="datatable-editable" tabindex="0"
												id="datatable-editable_next"><a href="#">Next</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- End Pagination-->
						</div>
						<!-- card-box-->
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
			<!-- container -->
		</div>
		<!-- content -->
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog" style="background-color:black">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Update Auction Information</h4>
				</div>
				<div class="modal-body">
					<form id="wizard-validation-form" action="/index">
						<section>
						<div class="form-group clearfix">
							<label class="col-lg-2 control-label" for="supplier">Supplier
								Name *</label>
							<div class="col-lg-10">
								<select class="form-control required" name="supplier"
									ng-model="sup" id="supplier" required>
									<option value="" ng-selected="true">-- Choose Supplier
										--</option>
									<option value="{{s.supplier.supplier_id}}">{{s.supplier.contact_name}}</option>
								</select>
							</div>
						</div>
						<div class="form-group clearfix">
							<label class="col-lg-2 control-label" for="product">Product
								*</label>
							<div class="col-lg-10">
								<select class="form-control required" name="product"
									ng-model="product_id" id="product" required>
									<option value="" ng-selected="true">-- Choose Product
										--</option>
									<option ng-repeat="p in product"
										ng-show="p.supplier.supplier_id == sup"
										value="{{p.product_id}}">{{p.product_name}}</option>
								</select>
							</div>
						</div>
						<div class="form-group clearfix">
							<label class="col-lg-2 control-label" for="product">Product
								Condition *</label>
							<div class="col-lg-10">
								<select class="form-control required" name="product"
									ng-model="product_condition" required>
									<option value="" ng-selected="true">-- Choose
										Condition --</option>
									<option value="Good">Good</option>
									<option value="Very Good">Very Good</option>
									<option value="Like New">Like New</option>
									<option value="New">New</option>
								</select>
							</div>
						</div>
						<div class="form-group clearfix">
							<label class="col-lg-2 control-label" for="startprice">
								Start Price *</label>
							<div class="col-lg-10">
								<input id="startprice" ng-value	="start_price1" name="startprice" type="number"
									class="required form-control" placeholder="$"
									ng-model="start_price" required>
							</div>
						</div>
						<div class="form-group clearfix">
							<label class="col-lg-2 control-label " for="increseprice">
								Increment Price *</label>
							<div class="col-lg-10">
								<input id="increseprice" name="increseprice" type="number"
									class="required form-control" placeholder="$"
									ng-model="increment_price" required>
							</div>
						</div>

						<div class="form-group clearfix">
							<label class="col-lg-2 control-label " for="buyprice">Buy
								Now Price *</label>
							<div class="col-lg-10">
								<input id="buyprice" name="buyprice" type="number"
									class="required  form-control" placeholder="$"
									ng-model="buy_price" required>
							</div>
						</div>

						<div class="form-group clearfix">
							<label class="col-lg-2 control-label " for="startdate">Start
								Date *</label>
							<div class="col-lg-10">
								<div class="input-group">
									<input type="text" class="required form-control"
										ng-value="currentDate | date:'MM/dd/yyyy'" ng-disabled="true"
										ng-model="start_date"> <span
										class="input-group-addon bg-custom b-0 text-white"><i
										class="icon-calender"></i></span>
								</div>
								<!-- input-group -->
							</div>
						</div>
						<div class="form-group clearfix">
							<label class="control-label col-lg-2">End Date *</label>
							<div class="col-lg-10">
								<div class="input-group">
									<input type="text" class="required form-control"
										placeholder="mm/dd/yyyy" id="datepickerEnd" name="endDate"
										ng-model="end_date"> <span
										class="input-group-addon bg-custom b-0 text-white"><i
										class="icon-calender"></i></span>
								</div>
								<!-- input-group -->
							</div>
						</div>

						<div class="form-group clearfix">
							<label class="col-lg-2 control-label">Status</label>
							<div class="col-lg-10">
								<div class="radio radio-info radio-inline">
									<input type="radio" id="status1" name="status"
										ng-model="status" value="true" checked> <label
										for="status1"> Enable </label>
								</div>
								<div class="radio radio-inline">
									<input type="radio" id="status2" name="status"
										ng-model="status" value="false"> <label for="status2">
										Disable </label>
								</div>
							</div>
						</div>

						<div class="form-group clearfix">
							<label class="col-lg-2 control-label">Comment</label>
							<div class="col-lg-10">
								<textarea class="form-control" rows="5" ng-model="comment"></textarea>
							</div>
						</div>

						<div class="form-group clearfix">
							<label class="col-lg-12 control-label ">(*) Mandatory</label>
						</div>
						</section>
						<div class="row">
							<div class="col-sm-12">
								<div class="text-center p-20">
									<button type="button"
										class="btn w-sm btn-default waves-effect waves-light"
										ng-click="addAuction()">
										<i class="fa fa-floppy-o" aria-hidden="true"></i> Save
									</button>
									<button type="button"
										class="btn w-sm btn-danger waves-effect waves-light">
										<i class="fa fa-times" aria-hidden="true"></i> Cancel
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/scripts/auction-angular.js"></script>