<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice Management</title>

<!-- header -->
<jsp:include page="header.jsp"></jsp:include>

<!-- menu -->
<jsp:include page="menu.jsp"></jsp:include>
<!-- left content -->
<jsp:include page="left-content.jsp"></jsp:include>
</head>

<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page" ng-controller="invoiceCtrl">
	<!-- Start content -->
	<div class="content">
		<div class="container">
			<!-- Page-Title -->
			<div class="row">
				<div class="col-sm-12">
					<h4 class="page-title">Invoice Management</h4>
					<ol class="breadcrumb">
						<li><a href="#">DENH TLAI</a></li>
						<li><a href="#">Invoice Management</a></li>
						<li class="active">Sale Invoice</li>
					</ol>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="card-box table-responsive">
						<h4 class="m-t-0 header-title">
							<b>Buttons example</b>
						</h4>
						<%-- <table id="datatable-buttons"
							class="table table-hover table-actions-bar">
							<thead>
								<tr>
									<th>Date<br><br>Contact
									</th>
									<th>Seller<br><br>Buyer
									</th>
									<th>Invoice ID<br><br><br></th>
									<th>Product<br><br>Address
									</th>
									<th>Price<br><br><br></th>
									<th>Quantity<br><br>First Name
									</th>
									<th>Total<br><br>Last Name
									</th>
									<th>Paid<br> <select class="form-control required">
											<option value="paid">Paid</option>
											<option value="unpaid">Unpaid</option>
									</select>
									</th>
								</tr>
							</thead>
							<tbody style="color: #ffffff;">
								<tr ng-repeat=" inv in invoiceDetail | orderBy:'-invoice.invoice_id'">
									<td>{{inv.invoice.invoice_date}}<br><br>{{inv.invoice.user.contact}}</td>
									<td>Admin<br><br>{{inv.invoice.user.user_name}}</td>
									<td>{{inv.invoice.invoice_id}}<br><br><br></td>
									<td>{{inv.auction.product.product_name}}<br><br>{{inv.invoice.user.address}}</td>
									<td>{{inv.buy_price}}<br><br><br></td>
									<td>{{inv.qty}}<br><br>{{inv.invoice.user.first_name}}</td>
									<td>{{inv.buy_price * inv.qty}}<br><br>{{inv.invoice.user.last_name}}</td>
									<td ng-if="inv.invoice.status=='1'">
										<img alt="" src="${pageContext.request.contextPath}/resources/static/images/paidStamp.png"
										class="img-responsive">
									</td>
									<td ng-if="inv.invoice.status=='0'"><i class="fa fa-check fa-lg text-primary"
												aria-hidden="true"></i>
									</td>
								</tr>
								
							</tbody>
						</table> --%>
						
						<div id="datatable-buttons_wrapper"
							class="dataTables_wrapper form-inline dt-bootstrap no-footer">
							<div class="dt-buttons btn-group">
								<a class="btn btn-default buttons-copy buttons-html5 btn-sm"
									tabindex="0" aria-controls="datatable-buttons"><span>Copy</span></a>
								<a class="btn btn-default buttons-csv buttons-html5 btn-sm"
									tabindex="0" aria-controls="datatable-buttons"><span>CSV</span></a>
								<a class="btn btn-default buttons-pdf buttons-html5 btn-sm"
									tabindex="0" aria-controls="datatable-buttons"><span>PDF</span></a>
								<a class="btn btn-default buttons-print btn-sm" tabindex="0"
									aria-controls="datatable-buttons"><span>Print</span></a>
							</div>
							<div id="datatable-buttons_filter" class="dataTables_filter">
								<label>Search:<input type="search"
									class="form-control input-sm" placeholder=""
									aria-controls="datatable-buttons"></label>
							</div>
							<table id="datatable-buttons"
								class="table table-hover table-actions-bar dataTable no-footer"
								role="grid" aria-describedby="datatable-buttons_info">
								<thead>
									<tr role="row">
										<th tabindex="0"
											aria-controls="datatable-buttons" rowspan="1" colspan="1"
											style="width: 209px;">Date<br><br>Contact</th>
										<th tabindex="0"
											aria-controls="datatable-buttons" rowspan="1" colspan="1" 
											style="width: 265px;">Seller<br><br>Buyer</th>
										<th tabindex="0"
											aria-controls="datatable-buttons" rowspan="1" colspan="1"
											style="width: 179px;">Invoice ID<br><br><br></th>
										<th tabindex="0"
											aria-controls="datatable-buttons" rowspan="1" colspan="1"											
											style="width: 94px;">Product<br><br>Address</th>
										<th tabindex="0"
											aria-controls="datatable-buttons" rowspan="1" colspan="1"											
											style="width: 173px;">Price<br><br><br></th>
										<th tabindex="0"
											aria-controls="datatable-buttons" rowspan="1" colspan="1"											
											style="width: 128px;">Quantity<br><br>First Name</th>
										<th tabindex="0"
											aria-controls="datatable-buttons" rowspan="1" colspan="1"											
											style="width: 128px;">Total<br><br>Last Name</th>
										<th tabindex="0"
											aria-controls="datatable-buttons" rowspan="1" colspan="1"											
											style="width: 128px;">Paid<br> <select class="form-control required">
											<option value="paid">Paid</option>
											<option value="unpaid">Unpaid</option>
											</select></th>
									</tr>
								</thead>
								<tbody style="color: #ffffff;">
									<tr ng-repeat=" inv in invoiceDetail | orderBy:'-invoice.invoice_id'">
									<td>{{inv.invoice.invoice_date}}<br><br>{{inv.invoice.user.contact}}</td>
									<td>Admin<br><br>{{inv.invoice.user.user_name}}</td>
									<td><a href="#">{{inv.invoice.invoice_id}}</a><br><br><br></td>
									<td>{{inv.auction.product.product_name}}<br><br>{{inv.invoice.user.address}}</td>
									<td>{{inv.buy_price}}<br><br><br></td>
									<td>{{inv.qty}}<br><br>{{inv.invoice.user.first_name}}</td>
									<td>{{inv.buy_price * inv.qty}}<br><br>{{inv.invoice.user.last_name}}</td>
									<td ng-if="inv.invoice.status=='1'">
										<img alt="" src="${pageContext.request.contextPath}/resources/static/images/paidStamp.png"
										class="img-responsive">
									</td>
									<td ng-if="inv.invoice.status=='0'"><i class="fa fa-check fa-lg text-primary"
												aria-hidden="true"></i>
									</td>
								</tr>
								</tbody>
							</table>
							
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- container -->

	</div>
	<!-- content -->


	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

	<script
		src="${pageContext.request.contextPath}/resources/scripts/invoice-angular.js"></script>

	<!-- ------------ DataTabeland Button Print----------------- -->
	<script
		src="${pageContext.request.contextPath}/resources/static/assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/assets/plugins/datatables/dataTables.bootstrap.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/static/assets/plugins/datatables/dataTables.buttons.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/assets/plugins/datatables/buttons.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/assets/plugins/datatables/pdfmake.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/assets/plugins/datatables/buttons.html5.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/assets/plugins/datatables/buttons.print.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/assets/pages/datatables.init.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#datatable').dataTable();
			var table = $('#datatable-fixed-col').DataTable({
				scrollY : "310px",
				scrollX : true,
				scrollCollapse : true,
				paging : false,
				fixedColumns : {
					leftColumns : 1,
					rightColumns : 1
				}
			});
		});
		TableManageButtons.init();
	</script>