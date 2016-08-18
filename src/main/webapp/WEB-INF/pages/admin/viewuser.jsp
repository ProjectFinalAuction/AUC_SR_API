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
<div class="content-page" ng-controller="myCtrl">
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
											placeholder="Search..." ng-model="str_search">
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
										<th style="min-width: 95px;" class="text-center"></th>
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
									<tr ng-repeat="u in user | filter:str_search | orderBy:'-user_id'">
										<td class="text-center">
											
											<img
											src="${pageContext.request.contextPath}/resources/static/assets/images/users/avatar-5.jpg"
											alt="contact-img" title="contact-img"
											class="img-circle thumb-sm" />
										</td>
										<td>{{u.user_name}}</td>
										<td>{{u.first_name}}</td>
										<td>{{u.last_name}}</td>
										<td><a href="#">{{u.email}}</a></td>
										<td ng-if="u.status==true"><i class="table-action-btn fa fa-check"
												aria-hidden="true"></i></td>
										<td ng-if="u.status==false"><i class="table-action-btn fa fa-times"
												aria-hidden="true"></i></td>
										<td>{{u.type}}</td>
										<td><a href="#" data-toggle="modal" data-target=".enterData" class="table-action-btn"
												ng-click="getUserByID(u)"><i
												class="md md-edit"></i></a>
										</td>
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


<!-- Modal -->
<div class="modal fade enterData" id="myModal" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Update User</h4>
			</div>
			<div class="modal-body">
				<form name="myForm">
					<!--  User name -->
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="userName2">Username *</label>
						<div class="col-lg-10">
							<input class=" form-control required" id="user_name"
								name="user_name" type="text" ng-model="user_name" value={{user_name}}>
						</div>
					</div>
					<!-- User Password -->
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="password2">Password *</label>
						<div class="col-lg-10">
							<input id="password2" name="password" type="password"
								class="required form-control" ng-model="password" value={{password}}>
						</div>
					</div>

					<!--  Type of / Parent ID -->
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="email2">Email *</label>
						<div class="col-lg-10">
							<input id="email2" name="email" type="text"
								class="required email form-control" ng-model="email" value={{email}}>
						</div>
					</div>

					<!--  Status -->
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="phone">Contact Number *</label>
						<div class="col-lg-10">
							<input id="phone" name="phone" type="text" placeholder="Ex: 012 345 678"
								class="required form-control" ng-model="contact" value={{contact}}>
						</div>
					</div>
			
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="fname">First Name *</label>
						<div class="col-lg-10">
							<input id="fname" name="fname" type="text"
								class="form-control" ng-model="first_name" value={{first_name}}>
						</div>		
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="lname">Last Name *</label>
						<div class="col-lg-10">
							<input id="lname" name="lname" type="text"
								class="form-control" ng-model="last_name" value={{last_name}}>
						</div>	
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="lname">Gender *</label>
						<div class="col-lg-10">
							<select class="form-control select2" name="gender" ng-model="gender" value={{gender}}>
								<option value="female">Female</option>
								<option value="male">Male</option>
							</select>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="control-label col-lg-2">Date of Birth</label>
						<div class="col-lg-10">
							<div class="input-group">
								<input type="text" class="required form-control"
									placeholder="mm/dd/yyyy" id="datepicker" ng-model="dob" value={{dob}}> 
								<span class="input-group-addon bg-custom b-0 text-white"><i
									class="icon-calender"></i></span>
							</div>
							<!-- input-group -->
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label">Address</label>
						<div class="col-lg-10">
							<textarea class="required form-control" rows="5"
								ng-model="address" value={{address}}></textarea>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label">Photo</label>
						<div class="col-lg-10 dropzone dz-clickable" id="dropzone">
							<div class="dz-default dz-message" ng-model="photo" value={{photo}}></div>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label">Role</label>
						<div class="col-lg-10">
							<div class="radio radio-info radio-inline">
								<input type="radio" id="role1" name="role"
									ng-model="type" value="admin"> 
									<label for="role1"> Admin </label>
							</div>
							<div class="radio radio-inline">
								<input type="radio" id="role2" name="role"
									ng-model="type" value="bidder" > 
									<label for="role2"> Bidder </label>
							</div>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label">Status</label>
						<div class="col-lg-10">
							<div class="radio radio-info radio-inline">
								<input type="radio" id="status1" name="status"
									ng-model="status" value="true" > <label for="status1">
									Enable </label>
							</div>
							<div class="radio radio-inline">
								<input type="radio" id="status2" name="status" 
									ng-model="status" value="false" > <label
									for="status2"> Disable </label>
							</div>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label">Comment</label>
						<div class="col-lg-10">
							<textarea class="form-control" rows="5" ng-model="comment" value={{comment}}></textarea>
						</div>
					</div>
					
					<div class="form-group row">
						<label for="" class="col-sm-2 form-control-label"></label>
						<div class="col-sm-10">	
							<button type="button" class="btn btn-success btn-md"
								ng-model="user_id" ng-click="updateUser(user_id)"
								id="u_submit" data-dismiss="modal">Update</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--  end modal  -->

<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/user-angular.js"></script>