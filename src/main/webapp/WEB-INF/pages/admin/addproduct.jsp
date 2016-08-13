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



<!-- Start right Content here -->
      <!-- ============================================================== -->                      
      <div class="content-page">
        <!-- Start content -->
        <div class="content">
          <div class="container">
            <!-- Page-Title -->
						<div class="row">
							<div class="col-sm-12">
								<h4 class="page-title">Product Management</h4>
								<ol class="breadcrumb">
									<li>
										<a href="#">iWant Auction</a>
									</li>
                  <li>
										<a href="#">eCommerce</a>
									</li>
									<li class="active">Add/Edit</li>
								</ol>
							</div>
						</div><!-- End Row -->

            <div class="row">
              <div class="col-sm-12">
                <form>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="card-box">
                        <h5 class="text-muted text-uppercase m-t-0 m-b-20"><b>Add Product</b></h5>
                        <div class="form-group m-b-20">
                          <label for="productname">Product name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" ng-model="name" name="productname" id="productname" placeholder="e.g : Nokia8800">
                        </div>

                        <div class="form-group m-b-20">
                          <label for="productdescription">Product Description <span class="text-danger">*</span></label>
                          <textarea class="form-control" ng-model="description" rows="5" name="prodescript" id="productdescription" placeholder="Please enter description"></textarea>
                        </div>
						
                        <div class="form-group m-b-20">
                          <label>Categories <span class="text-danger">*</span></label>
                          <select class="form-control select2" name="category" id="selectcategory" ng-model="category" aria-label="ngSelected demo">
                          	
                          	
                          	
                        <!-- TODO: Auto selet after load page -->
                        
                           	<optgroup name="" id="" >
							      <option value="">---Please select---</option> 
      						</optgroup> -->
                         
                          	
                          	
                          	
                            <optgroup ng-repeat="sub in Categories" label="{{sub.category_name}}">
                            	
                        		<option ng-repeat="s in sub.subCategories" value="{{s.category_id}}">
                        			{{s.category_name}}
                        		</option>
                        		
                            	
                            </optgroup>	
                            
                            
                          </select>
                        </div>
											

                        <div class="form-group m-b-20">
                          <label for="brand">Brand <span class="text-danger">*</span></label>
                         <select class="form-control select2" name="category" id="selectbrand" ng-model="brand" aria-label="ngSelected demo">
                        
                        <!-- TODO: Auto select after load page -->
                        
                          	<optgroup name="singleSelect" id="singleSelect" ng-model="data.singleSelect">
							      <option value="">---Please select---</option> 
      						</optgroup>
                          <!-- -------------------------------- --> 	
                          
                            <optgroup>
                        		<!-- <option ng-repeat="brands in Brands" value="brand.brand_id">{{brand.brand_name}}</option> -->
                        		<option ng-repeat="brands in Brands" value="{{brands.brand_id}}">{{brands.brand_name}}</option>
                            </optgroup>
                            
                            
                          </select>
                        </div>



                        <div class="form-group m-b-20">
                          <label for="qty">Quantity<span class="text-danger">*</span></label>
                          <input type="text" class="form-control" name="qty" id="qty" ng-model="quantity">
                        </div>

                        <div class="form-group m-b-20">
                          <label class="m-b-15" for="prostatus">Status <span class="text-danger">*</span></label>
                          <br/>
                          <div class="radio radio-inline">
                            <input type="radio" id="status_active" value="active" name="prostatus" ng-model="radioValue" checked="">
                            <label for="status_active"> active </label>
                          </div>
                          <div class="radio radio-inline">
                            <input type="radio" id="status_inactive" value="inactive" name="prostatus" ng-model="radioValue">
                            <label for="status_inactive"> inactive </label>
                          </div>               
                        </div>                                                       
                      </div><!-- End card-box -->
                    </div><!-- End col-lg-6 -->
                    <div class="col-lg-6">
                      <div class="card-box">
                        <h5 class="text-muted text-uppercase m-t-0 m-b-20"><b>Add Product Images</b></h5>
                        <section>
                          <div class="form-group clearfix">   
                            <!-- upload image -->
                            <div class="col-lg-10">
                               
                              <div class="table-box m-b-30">
                                <div class="table-detail">
                                  <img src="assets/images/products/iphone.jpg" class="thumb-md" alt="img">
                                </div>
                                <div class="table-detail">
                                  <div class="radio radio-inline">
                                    <input type="radio" id="thumbnail" value="thumbnail" name="img">
                                    <label for="thumbnail"> Thumbnail </label>
                                  </div>
                                  <div class="radio radio-inline">
                                    <input type="radio" id="gallary" value="gallary" name="img" checked="">
                                    <label for="gallary"> Gallary </label>
                                  </div>
                                </div>

                                <div class="table-detail table-actions-bar" style="min-width: 60px;">
                                    <a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                  <a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                                </div>
                              </div>

                              <div class="table-box m-b-30">
                                <div class="table-detail">
                                  <img src="assets/images/products/imac.jpg" class="thumb-md" alt="img">
                                </div>
                                <div class="table-detail">
                                  <div class="radio radio-inline">
                                    <input type="radio" id="thumbnail" value="thumbnail" name="img1" checked="">
                                    <label for="thumbnail"> Thumbnail </label>
                                  </div>
                                  <div class="radio radio-inline">
                                    <input type="radio" id="gallary" value="gallary" name="img1">
                                    <label for="gallary"> Gallary </label>
                                  </div>
                                </div>

                                <div class="table-detail table-actions-bar" style="min-width: 60px;">
                                  <a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                  <a href="#" class="table-action-btn"><i class="md md-close"></i></a>
                                </div>
                              </div>
                              
                              <div class="text-center m-t-30">
                                <div class="fileupload btn btn-purple btn-md w-md waves-effect waves-light">
                                  <span><i class="ion-upload m-r-5"></i>Upload</span>
                                  <input type="file" class="upload">
                                </div>
                              </div>
                              
                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div><!-- End row -->           
                </form><!-- End form --> 
              </div><!-- End col-sm-12 --> 
            </div><!-- End row --> 

            <div class="row">
              <div class="col-sm-12">           
                <div class="text-center p-20">
                  <button type="button" class="btn w-sm btn-white waves-effect">Cancel</button>
                  <button type="button" class="btn w-sm btn-default waves-effect waves-light" ng-click="addProduct()">Save</button>
                  <button type="button" class="btn w-sm btn-white waves-effect" ng-click="testMethod()">test</button>
           			
                </div>
              </div>
            </div>

          </div><!-- End container -->
        </div><!-- End content -->
      </div><!-- End content-page -->
      
      <script type="text/javascript">
			var app = angular.module('myApp', []);
				app.controller('myCtrl', function($rootScope,$scope, $http) {
					
					
					
					//TODO: auto seleted option
		/* 			 	$scope.data = {
						    singleSelect: null,
						   };

					$scope.forceUnknownOption = function() {
						     $scope.data.singleSelect = 'nonsense';
						   }; */
					////////////////////////////////
					
					
					
					
			     /*   	$scope.testMethod=function(){
			       		 alert($scope.brand);
			       	}
					 */
					
			       	$rootScope.addProduct=function () {
						/*  alert($scope.category);
						 alert($scope.brand);
			       			 */
			       			
			       			 $scope.checkIfValueUndefine = function(){
			       				
			       				if (typeof $scope.category == "undefined" ) {
			       					alert("You have not chose ***Categoy");
								}else if (typeof $scope.brand == "undefined" ){
									alert("You have not chose ***Brand");
								}else{
									
									$http({
										  
									      method:"POST",
									      url:"http://localhost:8080/rest/product",
									      data:{
									    	  "brand_id": $scope.brand,
									    	  "category_id":$scope.category,
									    	  "product_description": $scope.description,
									    	  "product_id":0,
									    	  "product_name": $scope.name,
									    	  "qty": $scope.quantity,
									    	  "status":true,
									    	  "supplier_id":1 
									      }
									    }).then(function(response){
									    	
									    	console.log(response.data.MESSAGE);
									      
									    }) 
			       				}
			       			};
			       			$scope.checkIfValueUndefine(); 
			       			
						
						
			       
					
					}
			       	
			       	
			       	
			       	
			       	
			       	
			       	
			       	$rootScope.getCategory=function(){
			    		//alert("a");
			           $http.get("http://localhost:8080/rest/category/find-main-category")
			          		 .then(function(response) {
			          			
			          
			          		$rootScope.Categories = response.data.DATA;
			          		//$scope.subcate =$rootScope.Categories.subCategories;
			          		
							console.log(response.data.DATA);
							
			  			});
			        }
			    	$rootScope.getCategory();
			    	
			    	
			    	
			    	$rootScope.getBrand=function(){
			    		//alert("a");
			           $http.get("http://localhost:8080/rest/brand")
			          		.then(function(response) {
			          		$rootScope.Brands = response.data.DATA;
							console.log(response.data.DATA);
							
			  			});
			        }
			    	$rootScope.getBrand();
			    	
			    	
			    	
			});

	</script>
    <!-- <script>  
    var app = angular.module('myApp',[]);
	app.controller('myCtrl', function($rootScope,$scope, $http) {
		
		$scope.testMethod=function(){
       		alert("9999");
       	}
			$rootScope.addmethod=function () {
		    var nam=$("#name").val();
		    var aag=$("#age").val();
		    $http({
		      method:"POST",
		      url:"http://localhost:8080/rest/product",
		      data:{
		              "AGE":aag,
		              "NAME":nam
		      }
		    }).then(function(response){
		        alert(response.data.MESSAGE);
		        $rootScope.getmethod();
		    })
		
		  }
	}
    </script> -->
      
      
      <!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>