<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Auction</title>

<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- menu -->
<jsp:include page="menu.jsp"></jsp:include>
<!-- left content -->
<jsp:include page="left-content.jsp"></jsp:include>

<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page">
	<!-- Start content -->
	<div class="content">
		<div class="container">
			<!-- Page-Title -->
			<div class="row">
				<div class="col-sm-12">
					<h4 class="page-title">Auction</h4>
					<ol class="breadcrumb">
						<li><a href="">iWant Auction</a></li>
						<li><a href="">Auction Management</a></li>
						<li class="active">Add Auction</li>
					</ol>
				</div>
			</div>

			<!-- Wizard with Validation -->
			<div class="row">
				<div class="col-sm-12">
					<div class="card-box">
						<h4 class="m-t-0 header-title">
							<b>Add Auction </b>
						</h4>

						<form id="wizard-validation-form" action="/index">
							<section>
							<div class="form-group clearfix">
								<label class="col-lg-2 control-label" for="supplier">Supplier
									Name *</label>
								<div class="col-lg-10">
									<select class="form-control required" name="supplier" 
										ng-change="findProductsHasSupplier(sup)"
										ng-model="sup" id="supplier" required 
										ng-options="s.supplier_id as s.contact_name for s in supplier">
										<option value="" style="display:none">-- Choose Supplier --</option>

									</select>
								</div>
							</div>
							<div class="form-group clearfix">
								<label class="col-lg-2 control-label" for="product">Product
									*</label>
								<div class="col-lg-10">
									<select class="form-control required" name="product"
										ng-model="product_id" id="product"  ng-value="product_id"
										ng-options="p.product_id as p.product_name for p in product">
										<option value="" style="display:none">-- Choose	Product --</option>
									</select>
								</div>
							</div>
							<div class="form-group clearfix">
								<label class="col-lg-2 control-label" for="product">Product
									Condition *</label>
								<div class="col-lg-10">
									<select class="form-control required" name="product"
										ng-model="product_condition" required>
										<option value="" ng-selected="true">-- Choose Condition	--</option>
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
									<input id="startprice" name="startprice" type="number"
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
									<div class="input-group" >
										<input type="text" class="required form-control"
											placeholder="mm/dd/yyyy" id="datepickerEnd" name="endDate" ng-model="end_date">
										<span class="input-group-addon bg-custom b-0 text-white"><i
											class="icon-calender"></i></span>
									</div>
									<!-- input-group -->
								</div>
							</div>

							<div class="form-group clearfix">
								<label class="col-lg-2 control-label">Status</label>
								<div class="col-lg-10" ng-init="status = 'true'">
									<div class="radio radio-info radio-inline">
										<input type="radio" id="status1" name="status"
											ng-model="status" value="true"> <label for="status1">
											Enable </label>
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
										<button type="button" onclick="clearFrm()"
											class="btn w-sm btn-danger waves-effect waves-light">
											<i class="fa fa-times" aria-hidden="true"></i> Cancel
										</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- container -->
	</div>
	<!-- content -->
</div>
<!-- ============================================================== -->
<!-- End Right content here -->

<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/auction-angular.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular-filter/0.5.9/angular-filter.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular-filter/0.5.9/angular-filter.min.js"></script>

<script type="text/javascript">
	function clearFrm(){
		$("#wizard-validation-form")[0].reset();
	}
</script>

