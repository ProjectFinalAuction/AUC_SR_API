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
                <h4 class="page-title">Suppliers</h4>
                <ol class="breadcrumb">
                  <li><a href="#">iWant Auction</a></li>
                  <li><a href="">Suppliers Management</a></li>
                  <li class="active">Suppliers List</li>
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
                        	<input type="text" id="search" class="form-control" placeholder="Search..." ng-model="str_search">
                            <button type="submit" class="btn btn-white" ><i class="fa fa-search"></i></button>
                        </div> <!-- form-group -->
                      </form>
                  	</div>
                  	<div class="col-sm-4">
                  		 <a href="${pageContext.request.contextPath}/admin/addsupplier" class="btn btn-default btn-md waves-effect waves-light m-b-30"><i class="md md-add"></i> Add Supliser</a>
                  	</div>
                  </div>
			                        
            			<div class="table-responsive">
                    <table class="table table-hover mails m-0 table table-actions-bar">
                      <thead>
												<tr>
													<th style="min-width: 95px;">
														<div class="checkbox checkbox-primary checkbox-single m-r-15">
                              <input id="action-checkbox" type="checkbox">
                              <label for="action-checkbox"></label>
                            </div>
  												</th>
  												<th>Supplier_ID</th>
                          <th>ContactName</th>
                          <th>Address</th>
  												<th>Email</th>
                          <th>Phone</th>                    
													<th style="min-width: 90px;">Action</th>
										    </tr>
									    </thead>
                      <tbody>
                        

                        <tr ng-repeat = "s in supplier | filter:str_search">
                          <td>
                            <div class="checkbox checkbox-primary m-r-15">
                              <input id="checkbox14" type="checkbox">
                              <label for="checkbox14"></label>
                            </div>
                          </td>
                          <td>{{s.supplier_id}}</td>
                          <td>{{s.contact_name}}</td>
                          <td>{{s.address}}</td>
                          <td>
                            <a href="#">{{s.email}}</a>
                          </td>                                                       
                          <td>{{s.phone}}</td>
                          <td>
                          	<a href="${pageContext.request.contextPath}/admin/update-supplier" class="table-action-btn"><i class="md md-edit"></i></a>
                          	<a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
            		</div>
              </div> <!-- end col -->   
            </div>
          </div> <!-- container -->             
        </div> <!-- content -->
        
        <!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/supplier-angular.js"></script>     