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
			
			
			<div class="row">
            	<div class="col-lg-12">
            		<div class="card-box">
            			<div class="row">
                  	<div class="col-sm-8">
                  		<form role="form">
                        <div class="form-group contact-search m-b-30">
                        	<input type="text" id="search" class="form-control" placeholder="Search...">
                            <button type="submit" class="btn btn-white"><i class="fa fa-search"></i></button>
                        </div> <!-- form-group -->
                      </form>
                  	</div>
                  	<div class="col-sm-4">
                  		 <a href="${pageContext.request.contextPath}/admin/addproduct" class="btn btn-default btn-md waves-effect waves-light m-b-30"><i class="md md-add"></i> Add Product</a>
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
  								<th>Images</th>
  								<th>Product ID</th>
                          		<th>Product Name</th>
                          		<th>Description</th>
  								<th>Supplier</th>
                          		<th>Category</th>  
                          		<th>Quantity</th>   
                          		<th>Brand</th>                 
								<th style="min-width: 90px;">Action</th>
							</tr>
					</thead>
					
                    <tbody>
              			
                        <tr  ng-repeat="pro in products">
	                          <td>
	                            <div class="checkbox checkbox-primary m-r-15">
	                              <input id="checkbox14" type="checkbox">
	                              <label for="checkbox14"></label>
	                            </div>
	                          </td>
	                          <td><img
											src={{pro.gallery.image_path}}
											class="thumb-sm" alt="product-img"></td>
	                          <td>{{pro.product_id}}</td>
	                          <td>{{pro.product_name}}</td>
	                          <td>{{pro.product_description}}</td>
	                          <td>{{pro.supplier.contact_name}}</td>                                                       
	                          <td>{{pro.category.category_name}}</td>
	                          <td>{{pro.qty}}</td>
	                          <td>{{pro.brand.brand_name}}</td>
	                          <td>
	                          	<a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
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
        </div>
        
<script type="text/javascript">
	var app = angular.module('myApp', []);
		app.controller('myCtrl', function($rootScope,$scope, $http) {
			$scope.imgSrc = "/files/images/";
			
			//$rootScope.test="hello";
    	$rootScope.getmethod=function(){
    		//alert("a");
           $http.get("http://localhost:8080/rest/product")
          		.then(function(response) {
          		$rootScope.products = response.data.DATA;
				console.log(response.data.DATA);
				
				/* for ( var i = 0; i < $rootScope.products.length; i++) {
					
			
					$rootScope.getImg = function(){
			    		$http.get("http://localhost:8080/rest/product/getimage/"+$rootScope.products[i].product_name)
			      		.then(function(response) {
			      		$scope.imgs = response.data.DATA;
			      		
			      			
			      			
			      		alert($scope.imgs.image_path);
						console.log(response.data.DATA);
						
						});
			    	}
					$rootScope.getImg();
					
				} */
				
  			});
        }
    	$rootScope.getmethod();
    	
    	
    	////////////////////////////////
    	
    	/* $rootScope.getImg = function(){
    		$http.get("http://localhost:8080/rest/product/getimage/"+$rootScope.products.product_name)
      		.then(function(response) {
      		
			console.log(response.data.DATA);
			
			});
    	} */
    	/*  $rootScope.getImg(); */
	});

</script>

<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>     
 
 
        