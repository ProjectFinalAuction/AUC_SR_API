<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AUCTION SYSTEM</title>
<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- menu -->
<jsp:include page="menu.jsp"></jsp:include>
<!-- left content -->
<jsp:include page="left-content.jsp"></jsp:include>

<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page rightContent">
        <!-- Start content -->
        <div class="content ">
          <div class="container">
            <!-- Page-Title -->
            <div class="row">
              <div class="col-sm-12">
                <h4 class="page-title">Dashboard</h4>
                <p class="page-title-alt">Welcome to iWant Auction admin panel !</p>
                <p>This Data for today.</p>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 col-lg-4">
                <div class="widget-bg-color-icon card-box fadeInDown animated">
                  <div class="bg-icon bg-info pull-left">
                    <i class="md md-attach-money text-white"></i>
                  </div>
                  <div class="text-right">
                    <h3><b class="counter">31,570</b></h3>
                    <p>Total Revenue</p>
                  </div>
                  <div class="circliful-chart m-b-30" data-dimension="180" data-text="35%" data-info="Total Revenue" data-width="15" data-fontsize="24" data-percent="35" data-fgcolor="#34d3eb" data-bgcolor="#505A66">
                  </div>
                </div>
              </div>

              <div class="col-md-6 col-lg-4">
                <div class="widget-bg-color-icon card-box">
                  <div class="bg-icon bg-pink pull-left">
                    <i class="md md-add-shopping-cart text-white"></i>
                  </div>
                  <div class="text-right">
                    <h3><b class="counter">280</b></h3>
                    <p>Today's New Products</p>
                  </div>
                  <div class="circliful-chart m-b-30" data-dimension="180" data-text="8%" data-info="New Products" data-width="15" data-fontsize="24" data-percent="8" data-fgcolor="#fb6d9d" data-bgcolor="#505A66">
                  </div>
                </div>
              </div>

              <div class="col-md-6 col-lg-4">
                <div class="widget-bg-color-icon card-box">
                  <div class="bg-icon bg-success pull-left">
                    <i class="md md-remove-red-eye text-white"></i>
                  </div>
                  <div class="text-right">
                    <h3><b class="counter">1,570</b></h3>
                    <p>Today's Visits</p>
                  </div>
                  <div class="circliful-chart m-b-30" data-dimension="180" data-text="20%" data-info="Today's Visits" data-width="15" data-fontsize="24" data-percent="20" data-fgcolor="#81c868" data-bgcolor="#505A66">
                  </div>
                </div>
              </div>
            </div>

            <div class="row">              
              <div class="col-lg-4 col-sm-6">
                <div class="card-box">
                  <div class="circliful-chart m-b-30" data-dimension="180" data-text="20%" data-info="Today's Bids" data-width="15" data-fontsize="24" data-percent="20" data-fgcolor="#ffbd4a" data-bgcolor="#505A66">
                  </div>
                  <div class="widget-panel widget-style-2">
                  <i class="md md-add-shopping-cart text-warning"></i>
                  <h3><b class="counter">1256</b></h3>
                  <div class="m-t-5">Today's Bids</div>
                  </div>
                </div>

              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="card-box">
                  <div class="circliful-chart m-b-30" data-dimension="180" data-text="20%" data-info="Products Auction" data-width="15" data-fontsize="24" data-percent="20" data-fgcolor="#f05050" data-bgcolor="#505A66">
                  </div>
                  <div class="widget-panel widget-style-2">
                    <i class="md md-store-mall-directory text-danger"></i>
                    <h3><b class="counter">1118</b></h3>
                    <div class="m-t-5">Products Auction</div>
                  </div>
                </div>
               
              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="card-box">
                  <div class="circliful-chart m-b-30" data-dimension="180" data-text="20%" data-info="All Bidder" data-width="15" data-fontsize="24" data-percent="20" data-fgcolor="#5d9cec" data-bgcolor="#505A66">
                  </div>
                  <div class="widget-panel widget-style-2">
                    <i class="md md-account-child text-custom"></i>
                    <h2><b class="counter">85</b></h2>
                    <div class="m-t-5">All Bidder</div>
                  </div>
                </div>
              </div>
            </div>           
                                       
            <div class="row">
            	<div class="col-lg-6">
            		<div class="card-box">
                  <a href="#" class="pull-right btn btn-default btn-sm waves-effect waves-light">View All</a>
            			<h4 class="header-title m-t-0">Recent Bids</h4>
            			<p class="m-b-30 font-13">
  			            Your awesome text goes here.
  		            </p>

          			  <div class="table-responsive">
                    <table class="table table-actions-bar">
                      <thead>
                        <tr>
                          <th>Bid_ID</th>
                          <th>Auction_ID</th>
                          <th>Username</th>
                          <th>CurrentPrice</th>
                          <th>Bid Date</th>
                          <th style="min-width: 80px;">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>B001</td>
                          <td>A001</td>
                          <td><a href="#">Soa</a></td>
                          <td>$1,456</td>
                          <td>08/07/2016</td>
                          <td>
                          	<a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                          	<a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                          </td>
                        </tr>

                        <tr>
                          <td>B002</td>
                          <td>A002</td>
                          <td><a href="#">Sok</a></td>
                          <td>$6,562</td>
                          <td>08/07/2016</td>
                          <td>
                          	<a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                          	<a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                          </td>
                        </tr>

                        <tr>
                          <td>B003</td>
                          <td>A002</td>
                          <td><a href="#">Sao</a></td>
                          <td>$3,458</td>
                          <td>08/07/2016</td>
                          <td>
                          	<a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                          	<a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                          </td>
                        </tr>

                        <tr>
                          <td>B004</td>
                          <td>A001</td>
                          <td><a href="#">Sok</a></td>
                          <td>$1,256</td>
                          <td>08/07/2016</td>
                          <td>
                          	<a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                          	<a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div><!-- end table-responsive -->
                </div><!-- end Card-box -->
              </div> <!-- end col -->

              <div class="col-lg-6">
          		  <div class="card-box">
                  <a href="#" class="pull-right btn btn-default btn-sm waves-effect waves-light">View All</a>
          			  <h4 class="header-title m-t-0">Top Auction of Products</h4>
          			  <p class="m-b-30 font-13">
			              Your awesome text goes here.
		              </p>

            			<div class="table-responsive">
                    <table class="table table-actions-bar">
                      <thead>
                        <tr>
                          <th>Bid_ID</th>
                          <th>Auction_ID</th>
                          <th>Username</th>
                          <th>CurrentPrice</th>
                          <th>Bid Date</th>
                          <th style="min-width: 80px;">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>B001</td>
                          <td>A001</td>
                          <td><a href="#">Soa</a></td>
                          <td>$1,456</td>
                          <td>08/07/2016</td>
                          <td>
                            <a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                            <a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                          </td>
                        </tr>

                        <tr>
                          <td>B002</td>
                          <td>A002</td>
                          <td><a href="#">Sok</a></td>
                          <td>$6,562</td>
                          <td>08/07/2016</td>
                          <td>
                            <a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                            <a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div><!-- end table-responsive -->
                </div><!-- end CARD-BOX -->
              </div> <!-- end col -->
            </div>
          </div> <!-- container -->
        </div> <!-- content -->

	<!-- <footer class="footer text-right">
                    � 2016. All rights reserved.
                </footer> -->

</div>


<!-- ============================================================== -->
<!-- End Right content here -->
<!-- ============================================================== -->


<!-- Right Sidebar -->
<div class="side-bar right-bar nicescroll">
	<h4 class="text-center">Chat</h4>
	<div class="contact-list nicescroll">
		<ul class="list-group contacts-list">
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-1.jpg" alt="">
					</div> <span class="name">Chadengle</span> <i class="fa fa-circle online"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-2.jpg" alt="">
					</div> <span class="name">Tomaslau</span> <i class="fa fa-circle online"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-3.jpg" alt="">
					</div> <span class="name">Stillnotdavid</span> <i
					class="fa fa-circle online"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-4.jpg" alt="">
					</div> <span class="name">Kurafire</span> <i class="fa fa-circle online"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-5.jpg" alt="">
					</div> <span class="name">Shahedk</span> <i class="fa fa-circle away"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-6.jpg" alt="">
					</div> <span class="name">Adhamdannaway</span> <i
					class="fa fa-circle away"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-7.jpg" alt="">
					</div> <span class="name">Ok</span> <i class="fa fa-circle away"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-8.jpg" alt="">
					</div> <span class="name">Arashasghari</span> <i
					class="fa fa-circle offline"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-9.jpg" alt="">
					</div> <span class="name">Joshaustin</span> <i
					class="fa fa-circle offline"></i>
			</a> <span class="clearfix"></span></li>
			<li class="list-group-item"><a href="#">
					<div class="avatar">
						<img src="assets/images/users/avatar-10.jpg" alt="">
					</div> <span class="name">Sortino</span> <i class="fa fa-circle offline"></i>
			</a> <span class="clearfix"></span></li>
		</ul>
	</div>
</div>
<!-- /Right-bar -->

</div>
<!-- END wrapper -->

<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>