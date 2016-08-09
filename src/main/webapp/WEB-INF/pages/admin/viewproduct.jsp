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
								<h4 class="page-title">Products</h4>
								<ol class="breadcrumb">
									<li><a href="">iWant Acution</a></li>
                  <li><a href="">Product Management</a></li>
									<li class="active">Products List</li>
								</ol>
							</div>
						</div>

            <!-- SECTION FILTER ================================================== -->
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 ">
                <div class="portfolioFilter">
                  <a href="#" data-filter="*" class="current">All</a>
                  <a href="#" data-filter=".mobiles">Mobiles</a>
                  <a href="#" data-filter=".tablets">Tablets</a>
                  <a href="#" data-filter=".desktops">Desktops</a>
                  <a href="#" data-filter=".other">Other</a>
                </div>
              </div>
            </div>

            <div class="row port">
              <div class="portfolioContainer m-b-15">
                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/1.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/1.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Samsung Gallaxy</a> </h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 other">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/2.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/2.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Branded camera A1254</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-half-o" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/3.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/3.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Samsung Gallaxy</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 desktops">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/4.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/4.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Apple iMac 27"</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/5.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/5.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Sony xperia Aqua M4</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 other">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/6.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/6.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Branded headphone UB07</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-half-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 tablets">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/7.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/7.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Apple iPad</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 desktops">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/8.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/8.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Branded Laptop</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/1.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/1.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Samsung Gallaxy</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 other">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/2.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/2.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Branded camera A1254</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-half-o" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 mobiles">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/3.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/3.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Samsung Gallaxy</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-lg-3 col-md-4 desktops">
                  <div class="product-list-box thumb">
                    <a href="assets/images/products/big/4.jpg" class="image-popup" title="Screenshot-1">
                      <img src="assets/images/products/big/4.jpg" class="thumb-img" alt="work-thumbnail">
                    </a>

                    <div class="product-action">
                      <a href="#" class="btn btn-success btn-sm"><i class="md md-mode-edit"></i></a>
                      <a href="#" class="btn btn-danger btn-sm"><i class="md md-close"></i></a>
                    </div>

                    <div class="detail">
                      <h4 class="m-t-0 m-b-5"><a href="#" class="text-white">Apple iMac 27"</a></h4>
                      <div class="rating">
                        <ul class="list-inline">
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star" href="#"></a></li>
                          <li><a class="fa fa-star-o" href="#"></a></li>
                        </ul>
                      </div>
                      <h5 class="m-0"><span class="text-custom">$ 125</span> <span class="text-muted m-l-15"> Stock :98pcs.</span></h5>
                    </div>
                  </div>
                </div>
              </div>
            </div> <!-- End row -->
          </div> <!-- container -->                    
        </div> <!-- content -->
        
        


<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>      
        