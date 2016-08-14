<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
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
					<h4 class="page-title">Category</h4>
					<ol class="breadcrumb">
						<li><a href="#">iWant Auction</a></li>
						<li><a href="">Category Management</a></li>
						<li class="active">Category List</li>
					</ol>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="card-box">
						<div class="row">
							<div class="col-sm-8">
								<form role="form">
									<div class="form-group contact-search m-b-30">
										<input type="text" id="search" class="form-control"
											placeholder="Search..." ng-model="str_search">
										<button type="submit" class="btn btn-white">
											<i class="fa fa-search"></i>
										</button>
									</div>
									<!-- form-group -->
								</form>
							</div>
							<div class="col-sm-4">
								<a href="${pageContext.request.contextPath}/admin/addcategory"
									class="btn btn-default btn-md waves-effect waves-light m-b-30"><i
									class="md md-add"></i> Add Category</a>
							</div>
						</div>

						<div class="table-responsive">
							<table
								class="table table-hover mails m-0 table table-actions-bar">
								<thead>
									<tr>
										<th style="min-width: 95px;">
											<div class="checkbox checkbox-primary checkbox-single m-r-15">
												<input id="action-checkbox" type="checkbox"> <label
													for="action-checkbox"></label>
											</div>
										</th>
										<th>Brand_ID</th>
										<th>BrandName</th>
										<th>Description</th>
										<th>Status</th>
										<th style="min-width: 90px;">Action</th>
									</tr>
								</thead>
								<tbody>
									<tr class=""
										ng-repeat="cat in category | filter:str_search | orderBy:'-category_id' ">
										<td>
											<div class="checkbox checkbox-primary m-r-15">
												<input id="checkbox5" type="checkbox"> <label
													for="checkbox5"></label>
											</div>
										</td>
										<td>{{cat.category_id}}</td>
										<td>{{cat.category_name}}</td>
										<td>{{cat.category_description}}</td>
										<td>{{cat.parent_id}}</td>
										<td>{{cat.status}}</td>
										<td><a href="#" class="table-action-btn"><i
												class="md md-edit"></i></a> <a href="#" class="table-action-btn"><i
												class="md md-close"></i></a></td>
									</tr>


								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- end col -->
			</div>
		</div>
		<!-- container -->
	</div>
	<!-- content -->

<!-- 	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($rootScope, $scope, $http) {

			$rootScope.getmethod = function() {

				$http.get("http://localhost:8080/rest/category").then(
						function(response) {
							$rootScope.category = response.data.DATA;
							console.log(response.data.DATA);

						});
			}
			$rootScope.getmethod();

		});
	</script> -->

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/category-angular.js"></script>
