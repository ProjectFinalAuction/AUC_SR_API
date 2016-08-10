<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Management</title>

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
					<h4 class="page-title">Users</h4>
					<ol class="breadcrumb">
						<li><a href="#">iWant Auction</a></li>
						<li class="active">Users</li>
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
											placeholder="Search...">
										<button type="submit" class="btn btn-white">
											<i class="fa fa-search"></i>
										</button>
									</div>
									<!-- form-group -->
								</form>
							</div>
							<div class="col-sm-4">
								<a href="${pageContext.request.contextPath}/admin/adduser"
									class="btn btn-default btn-md waves-effect waves-light m-b-30"><i
									class="md md-add"></i> Add Users</a>
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
											<div class="btn-group dropdown">
												<button type="button"
													class="btn btn-white btn-xs dropdown-toggle waves-effect waves-light"
													data-toggle="dropdown" aria-expanded="false">
													<i class="caret"></i>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
													<li><a href="#">Something else here</a></li>
													<li class="divider"></li>
													<li><a href="#">Separated link</a></li>
												</ul>
											</div>
										</th>
										<th>UserName</th>
										<th>FirstName</th>
										<th>LastName</th>
										<th>Email</th>
										<th>Status</th>
										<th>Type</th>
										<th style="min-width: 90px;">Action</th>
									</tr>
								</thead>
								<tbody>
									<tr ng-repeat="u in user">
										<td>
											<div class="checkbox checkbox-primary m-r-15">
												<input id="checkbox14" type="checkbox"> <label
													for="checkbox14"></label>
											</div>
											</div> <img
											src="${pageContext.request.contextPath}/resources/static/assets/images/users/avatar-5.jpg"
											alt="contact-img" title="contact-img"
											class="img-circle thumb-sm" />
										</td>
										<td>{{u.user_name}}</td>
										<td>{{u.first_name}}</td>
										<td>{{u.last_name}}</td>
										<td><a href="#">{{u.email}}</a></td>
										<td ng-if="u.status==true"><a href="#"
											class="table-action-btn"><i class="fa fa-check"
												aria-hidden="true"></i></a></td>
										<td ng-if="u.status==false"><a href="#"
											class="table-action-btn"><i class="fa fa-times"
												aria-hidden="true"></i></a></td>
										<td>{{u.type}}</td>
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
</div>
<!-- End Right content here -->

<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/user-angular.js"></script>