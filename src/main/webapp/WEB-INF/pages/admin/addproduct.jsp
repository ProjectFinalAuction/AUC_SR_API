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
      <div class="content-page" ng-controller="addImageCtrl">
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
                <form name="add-product-form">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="card-box">
                        <h5 class="text-muted text-uppercase m-t-0 m-b-20"><b>Add Product</b></h5>
                        <div class="form-group m-b-20">
                          <label for="productname">Product name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" ng-model="pro_name" name="productname" id="productname" placeholder="e.g : Nokia8800">
                        </div>

                        <div class="form-group m-b-20">
                          <label for="productdescription">Product Description <span class="text-danger">*</span></label>
                          <textarea class="form-control" ng-model="pro_description" rows="5" name="prodescript" id="productdescription" placeholder="Please enter description"></textarea>
                        </div>
                        
                        <div class="form-group m-b-20">
                          <label>Supplier <span class="text-danger">*</span></label>
                          <select class="form-control select2" name="suppiler" id="suppiler" ng-model="pro_suppiler" aria-label="ngSelected demo">
                          	
                          	
                          	
                        <!-- TODO: Auto selet after load page -->
                        
                           	<optgroup name="" id="" >
							      <option value="">---Please select---</option> 
      						</optgroup> -->
                         
                          	
                          	
                          	
                            <optgroup ng-repeat="sub in " label="{{}}">
                            	
                        		<option ng-repeat="s in " value="{{}}">
                        			{{}}
                        		</option>
                        		
                            	
                            </optgroup>	
                            
                            
                          </select>
                        </div>
						
                        <div class="form-group m-b-20">
                          <label>Categories <span class="text-danger">*</span></label>
                          <select class="form-control select2" name="category" id="selectcategory" ng-model="pro_category" aria-label="ngSelected demo">
                          	
                          	
                          	
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
                         <select class="form-control select2" name="brand" id="selectbrand" ng-model="pro_brand" aria-label="ngSelected demo">
                        
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
                          <input type="text" class="form-control" name="qty" id="qty" ng-model="pro_quantity">
                        </div>

                        <div class="form-group m-b-20">
                          <label class="m-b-15" for="prostatus">Status <span class="text-danger">*</span></label>
                          <br/>
                          <div class="radio radio-inline">
                            <input type="radio" id="status_active" value="active" name="prostatus" ng-model="pro_status" checked="">
                            <label for="status_active"> active </label>
                          </div>
                          <div class="radio radio-inline">
                            <input type="radio" id="status_inactive" value="inactive" name="prostatus" ng-model="pro_status">
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
                                  <img style="margin-left:319px; " src="" class="thumb-md" alt="Image here" id="result" height="165" width="165"/>
                               
                               <!--  <div class="table-detail">
                                  <div class="radio radio-inline">
                                    <input type="radio" id="thumbnail" value="thumbnail" name="img">
                                    <label for="thumbnail"> Thumbnail </label>
                                  </div>
                                  <div class="radio radio-inline">
                                    <input type="radio" id="gallary" value="gallary" name="img" checked="">
                                    <label for="gallary"> Gallary </label>
                                  </div>
                                </div> -->

                               <!--  <div class="table-detail table-actions-bar" style="min-width: 60px;"> -->
                                  <!-- <a href="#" class="table-action-btn"><i class="md md-edit"></i></a>
                                  <a href="#" class="table-action-btn"><i class="md md-close"></i></a> -->
                                </div> 
                              </div>

                              
                              <div class="text-center m-t-30" style="margin-left:75px; ">
                                
                                
                              	<input class="fileupload btn btn-purple btn-md w-md waves-effect waves-light" type="file" name="image" id="image" multiple/>
                              
                                
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
                  <button type="button" class="btn w-sm btn-default waves-effect waves-light" ng-click="addProduct($event)" id="">Save</button>
                  <button type="button" class="btn w-sm btn-white waves-effect" ng-click="testMethod()">test</button>
           			
                </div>
              </div>
            </div>

          </div><!-- End container -->
        </div><!-- End content -->
      </div><!-- End content-page -->
      
      
      
      
      <script src="${pageContext.request.contextPath}/resources/static/js/jQuery-2.1.4.min.js"></script>
      <script type="text/javascript">
      
      
  

			/* $("#image").change(function(){
				var formData = new FormData();
				formData.append('image',  $("#image")[0].files[0]);
		     	$.ajax({
		            url: "http://localhost:9999/api/v1/uploading",
		            type:"POST",
		         	enctype : 'multipart/form-data',
					data : formData ,
					cache: false,
					crossDomain: true,
					processData : false, // tell jQuery not to process the data
					contentType : false, // tell jQuery not to set contentType
		  	        beforeSend: function(xhr) {
		  	        	//WRONG
						//xhr.setRequestHeader('Access-Control-Allow-Origin', '*');
		  	        	
						//xhr.setRequestHeader('Authorization', 'Basic ZWxpYnJhcnlBRE1JTjplbGlicmFyeVBAU1NXT1JE');
		  	        },
		            success: function(data) {
		            	console.log(data);
		            	 $("#result").attr("src", data.DATA);
		            	//$("#resultThumbnail").attr("src", data.DATA);
		            },
		         	error: function(data){
		         		console.log(data);
					}
		        });
			}); */
			
			
			
			/* $("#btnSave").click(function(){
				alert($("#result").attr("src"));
				$.ajax({
					url: "http://localhost:9999/api/add-image",
					type: "POST",
					data: JSON.stringify({
						"image_id": 1,
						"image_path":$("#result").attr("src"),
						"product_id": $("#productID").val()
						 
					}),
		  	     beforeSend: function(xhr) {
               xhr.setRequestHeader("Accept", "application/json");
               xhr.setRequestHeader("Content-Type", "application/json");
           },
					success: function(data) {
		            	alert(data);
		            },
		         	error: function(data){
		         		alert("Error");
					}
				
				});
			}); */ 

    
      
      
  </script>
      
      
      
      <script type="text/javascript">
      
      ///////////////////////---------------upload images----------------////////////////////////////
      
      
      
   ///////////////-----------------------------------------------------------------------------------------------/////////////  

			var app = angular.module('myApp', []);
				app.controller('addImageCtrl', function($rootScope,$scope, $http) {
					
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
					
			       	$rootScope.addProduct=function (e) {
						 e.preventDefault()
			       			 
			       			var frmData = new FormData();
/* 			       			var serializeArray = $('form[name=add-product-form]').serializeArray();
			       			
			       			var temp = $('form[name=add-product-form]').serialize();			       		    
			       		    // Serialize not include Radio & CheckBox & Radio
			       		    // Add to Serialize Param for generating in Java & add to serializeArray
				       		$('input[type=radio]').each(function() {     
				       		    if ($(this).checked) {
				       		    	temp += '&'+this.name+'='+$(this).val();
				       		    	serializeArray.push(this.name, $(this).val());
				       		    }
				       		});			       			
			       			
			       		    $.each(serializeArray, function(i, field){
			       		    	frmData.append(field.name, field.value);
			       		    }); */
			       		    

			       			
			       			frmData.append('product_name', $scope.pro_name);
			       		 	frmData.append('product_description', 'Beer');
			       		 	frmData.append('supplier_id', 1);
				       		frmData.append('category_id', 1);
				       		frmData.append('qty', 100);
				       		frmData.append('brand_id', 1);
				       		frmData.append('status', ($scope.pro_status == 'active' ? true : false));			       		   

							// Gallery File
			       			var gallery_files = $('input[name=image]')[0].files;
							console.log(gallery_files.length); 
			       			for(var i=0; i<gallery_files.length; i++){
			       				frmData.append("images", gallery_files[i]);
			       			}
			       			console.log(gallery_files.length); 
			       			$http({
			       				url:'http://localhost:8080/rest/product',
			       				method: 'POST',
			       				data: frmData,
			       				transformRequest: angular.identity,
			       	            headers: {'Content-Type': undefined}
			       			}).then(function(response){
			       				console.log(response.data);
			       			}, function(error){
			       				console.log(error.data);
			       				alert('failed to upload !!');
			       			});
			       			 /******************/
			       			
			       			 /* $scope.checkIfValueUndefine = function(){
			       				
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
			       			$scope.checkIfValueUndefine();  */
			       			
						
						
			       
					
					}
			    
			       	
// 			       	$rootScope.getCategory=function(){
// 			    		//alert("a");
// 			           $http.get("http://localhost:8080/rest/category/find-main-category")
// 			          		 .then(function(response) {
			          			
			          
// 			          		$rootScope.Categories = response.data.DATA;
// 			          		//$scope.subcate =$rootScope.Categories.subCategories;
			          		
// 							console.log(response.data.DATA);
							
// 			  			});
// 			        }
// 			    	$rootScope.getCategory();
			    	
			    	
			    	
// 			    	$rootScope.getBrand=function(){
// 			    		//alert("a");
// 			           $http.get("http://localhost:8080/rest/brand")
// 			          		.then(function(response) {
// 			          		$rootScope.Brands = response.data.DATA;
// 							console.log(response.data.DATA);
							
// 			  			});
// 			        }
// 			    	$rootScope.getBrand();
			    	
			    	
			    	
			});

	</script>
    
      
      
      <!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
