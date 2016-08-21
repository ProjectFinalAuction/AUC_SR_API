<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
      <div class="content-page" ng-controller = "bidHistory">
        <!-- Start content -->
        <div class="content">
          <div class="container">   
            <!-- Page-Title -->
            <div class="row">
              <div class="col-sm-12">
                <h4 class="page-title">Bid History</h4>
                <ol class="breadcrumb">
                  <li><a href="#">DENH TLAI</a></li>
                  <li><a href="#">Bids</a></li>
                  <li class="active">Bid History</li>
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
                        <label>Show 
                          <select name="datatable-editable_length" aria-controls="datatable-editable" class="form-control input-sm" style="height: 38px;">
                            <option value="10">10</option>
                            <option value="25">25</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                          </select> 
                        entries</label>
                      </div>
                    </div>

                    <div class="col-sm-4 col-lg-6">
                      <form role="form">
                        <div class="form-group contact-search m-b-30">
                          <input type="text" id="search" name="search" class="form-control" placeholder="Search..." ng-model="str_search">
                          <button type="submit" class="btn btn-white"><i class="fa fa-search"></i></button>
                        </div> <!-- form-group -->
                      </form>
                    </div>

                    <div class="col-sm-4 col-lg-4">
                      <div class="h5 m-0">
                        <span class="vertical-middle">Sort By:</span>
                        <div class="btn-group vertical-middle" data-toggle="buttons">
                          <label class="btn btn-white btn-md waves-effect active">
                            <input type="radio" autocomplete="off" checked=""> Status
                          </label>
                          <label class="btn btn-white btn-md waves-effect">
                            <input type="radio" autocomplete="off"> Type
                          </label>
                          <label class="btn btn-white btn-md waves-effect">
                            <input type="radio" autocomplete="off"> Name
                          </label>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="table-responsive">
                    <table class="mails m-0 table table-actions-bar">
                    	<thead>
      						<tr>
      							<th>
      								<div class="checkbox checkbox-primary checkbox-single m-r-15">
		                              <input id="action-checkbox" type="checkbox">
		                              <label for="action-checkbox"></label>
                            		</div>
                          		</th>
	                            <th>Bid_ID</th>
						        <th>Auction_ID</th>
						        <th>Username</th> 
	                           <th>Current Price</th>
	                           <th style="width: 236px;">Bid Date</th>
	      					  <!--  <th style=" width: 192px;">Action</th> -->
							</tr>
						</thead>
  					
                      	<tbody class="body">
                        	<tr ng-repeat="b in bidHistory | filter:str_search | orderBy:'-bid_id'">
                          		<td>
		                            <div class="checkbox checkbox-primary m-r-15">
		                              <input id="checkbox2" type="checkbox">
		                              <label for="checkbox2"></label>
		                            </div>
                          		</td>
	                            <td>{{b.bid_id}}</td>
	                            <td>{{b.auction.auction_id}}</td>
	                            <td>{{b.user.user_name}}</td>
	                            <td>{{b.current_price}}</td>
	                            <td>{{b.bid_date}}</td>
                          		<!-- <td>
		                          	<a href="#" class="table-action-btn" data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
		                              <i class="fa fa-eye"></i>
		                            </a>
		                          	<a href="#" class="table-action-btn"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                          		</td> -->
                        	</tr>                                                
                      </tbody>
                   </table>
                   </div><!-- table-responsive-->

                  <!-- Pagination-->
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="dataTables_info" id="datatable-editable_info" role="status" aria-live="polite">
                        Showing 1 to 10 of 16 entries
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="dataTables_paginate paging_simple_numbers" id="datatable-editable_paginate">
                        <ul class="pagination">
                          <li class="paginate_button previous disabled" aria-controls="datatable-editable" tabindex="0" id="datatable-editable_previous">
                            <a href="#">Previous</a>
                          </li>
                          <li class="paginate_button active" aria-controls="datatable-editable" tabindex="0">
                            <a href="#">1</a>
                          </li>
                          <li class="paginate_button " aria-controls="datatable-editable" tabindex="0">
                            <a href="#">2</a>
                          </li>
                          <li class="paginate_button next" aria-controls="datatable-editable" tabindex="0" id="datatable-editable_next">
                            <a href="#">Next</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div> <!-- End Pagination-->
                </div><!-- card-box-->
              </div> <!-- end col -->                                
            </div> <!-- end row -->                            
          </div><!-- container -->
        </div>   <!-- content -->                
        
        

<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>  
<script src="${pageContext.request.contextPath}/resources/scripts/bidhistory-angular.js"></script>              