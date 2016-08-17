<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.thumb-md {
	border: 1px solid #000;
}

/* 	.preview-area{ */
/* 		border: 2px solid white ; */
/* 	} */
</style>
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
						<li><a href="#">iWant Auction</a></li>
						<li><a href="#">eCommerce</a></li>
						<li class="active">Add/Edit</li>
					</ol>
				</div>
			</div>
			<!-- End Row -->

			<div class="row">
				<div class="col-sm-12">
					<form name="add-product-form">
						<div class="row">
							<div class="col-lg-6">
								<div class="card-box">
									<h5 class="text-muted text-uppercase m-t-0 m-b-20">
										<b>Add Product</b>
									</h5>
									<div class="form-group m-b-20">
										<label for="productname">Product name <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" ng-model="pro_name" name="productname"
											id="productname" placeholder="e.g : Nokia8800">
									</div>

									<div class="form-group m-b-20">
										<label for="productdescription">Product Description <span
											class="text-danger">*</span></label>
										<textarea class="form-control" ng-model="pro_description"
											rows="5" name="prodescript" id="productdescription"
											placeholder="Please enter description"></textarea>
									</div>

									<div class="form-group m-b-20">
										<label>Supplier <span class="text-danger">*</span></label> <select
											class="form-control select2" name="suppiler" id="suppiler"
											ng-model="pro_supplier" aria-label="ngSelected demo">



											TODO: Auto selet after load page

											<optgroup name="" id="">
												<option value="">---Please select---</option>
											</optgroup>



											<optgroup ng-repeat="supplier in Supplier">
												<option value="{{supplier.supplier_id}}">{{supplier.contact_name}}</option>
											</optgroup>

										</select>
									</div>

									<!-- 									<h1 ng-repeat="supp in Supplier"> -->
									<!-- 										{{supp.contact_name}} -->
									<!-- 									</h1> -->

									<div class="form-group m-b-20">
										<label>Categories <span class="text-danger">*</span></label> <select
											class="form-control select2" name="category"
											id="selectcategory" ng-model="pro_category"
											aria-label="ngSelected demo">



											<!-- TODO: Auto selet after load page -->

											<optgroup name="" id="">
												<option value="">---Please select---</option>
											</optgroup> -->




											<optgroup ng-repeat="main in Categories"
												label="{{main.category_name}}">

												<option ng-repeat="s in main.subCategories"
													value="{{s.category_id}}">{{s.category_name}}</option>


											</optgroup>


										</select>
									</div>


									<div class="form-group m-b-20">
										<label for="brand">Brand <span class="text-danger">*</span></label>
										<select class="form-control select2" name="brand"
											id="selectbrand" ng-model="pro_brand"
											aria-label="ngSelected demo">

											<!-- TODO: Auto select after load page -->

											<optgroup name="singleSelect" id="singleSelect"
												ng-model="data.singleSelect">
												<option value="">---Please select---</option>
											</optgroup>
											<!-- -------------------------------- -->
											
											<optgroup>
												<!-- <option ng-repeat="brands in Brands" value="brand.brand_id">{{brand.brand_name}}</option> -->
												<option ng-repeat="brands in Brands"
													value="{{brands.brand_id}}">{{brands.brand_name}}</option>
											</optgroup>

										</select>
									</div>



									<div class="form-group m-b-20">
										<label for="qty">Quantity<span class="text-danger">*</span></label>
										<input type="text" class="form-control" name="qty" id="qty"
											ng-model="pro_quantity">
									</div>

									<div class="form-group m-b-20">
										<label class="m-b-15" for="prostatus">Status <span
											class="text-danger">*</span></label> <br />
										<div class="radio radio-inline">
											<input type="radio" id="status_active" value="active"
												name="prostatus" ng-model="pro_status" checked=""> <label
												for="status_active"> active </label>
										</div>
										<div class="radio radio-inline">
											<input type="radio" id="status_inactive" value="inactive"
												name="prostatus" ng-model="pro_status"> <label
												for="status_inactive"> inactive </label>
										</div>
									</div>
								</div>
								<!-- End card-box -->
							</div>
							<!-- End col-lg-6 -->
							<div class="col-lg-6">
								<div class="card-box">
									<h5 class="text-muted text-uppercase m-t-0 m-b-20">
										<b>Add Product Images</b>
									</h5>
									<section>
									<div class="form-group clearfix">
										<!-- upload image -->
										<div class="col-lg-10">

											<div class="table-box m-b-30">
												<div class="table-detail">
													<!-- Preview Image -->

													<div
														style="margin-left: 119px; text-align: center; padding: 0;"
														alt="Image here" class="preview-area" id="preview_area"></div>

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


											<div class="text-center m-t-30" style="margin-left: 75px;">


												<input
													class="fileupload btn btn-purple btn-md w-md waves-effect waves-light"
													type="file" name="image" id="image-input" multiple />


											</div>

										</div>
									</div>
									</section>
								</div>
							</div>
						</div>
						<!-- End row -->
					</form>
					<!-- End form -->
				</div>
				<!-- End col-sm-12 -->
			</div>
			<!-- End row -->

			<div class="row">
				<div class="col-sm-12">
					<div class="text-center p-20">
						<button type="button" class="btn w-sm btn-white waves-effect">Cancel</button>
						<button type="button"
							class="btn w-sm btn-default waves-effect waves-light"
							ng-click="addProduct($event)" id="save_button">Save</button>
						<button type="button" class="btn w-sm btn-white waves-effect"
							ng-click="testMethod()">test</button>

					</div>
				</div>
			</div>

		</div>
		<!-- End container -->
	</div>
	<!-- End content -->
</div>
<!-- End content-page -->




<script
	src="${pageContext.request.contextPath}/resources/static/js/jQuery-2.1.4.min.js"></script>



<script type="text/javascript">
	

	
	
	var app = angular.module('myApp', []);
	app.controller('addImageCtrl', function($rootScope, $scope, $http) {
	
		$rootScope.getBrand=function(){
	    		//alert("a");
	           $http.get("http://localhost:8080/rest/brand")
	          		.then(function(response) {
	          		$rootScope.Brands = response.data.DATA;
					console.log(response.data.DATA);

	  			});
		}

	    	$rootScope.getBrand();
	    	
//------------------------get category

// 				$rootScope.testSupp=function(){
// 					alert($scope.pro_supplier);
			
// }
				 $rootScope.getCategory=function(){
			    		
				           $http.get("http://localhost:8080/rest/category/find-main-category")
				          		 .then(function(response) {

				          		$rootScope.Categories = response.data.DATA;
			          		

								console.log(response.data.DATA);

				  			});
				        }
				    	$rootScope.getCategory();
				
//------------------------get Supplier

	 					$rootScope.getSupplier = function(){
						
	 						$http.get("http://localhost:8080/rest/supplier")
	 		          		 .then(function(response) {

	 		          		$scope.Supplier = response.data.DATA;
			          		
							
	 						console.log(response.data.DATA);

	 		  			});
	}
	 				    $rootScope.getSupplier();
		
		
// 	---------------------------------View Images after select images--------------------------------------//
			
		var inputLocalFont = document.getElementById("image-input");
		inputLocalFont.addEventListener("change",previewImages,false); //bind the function to the input

		function previewImages(){
		    var fileList = this.files;

		    var anyWindow = window.URL || window.webkitURL;

		        for(var i = 0; i < fileList.length; i++){
		          //get a blob to play with
		          var objectUrl = anyWindow.createObjectURL(fileList[i]);
		          // for the next line to work, you need something class="preview-area" in your html
		          $('.preview-area').append('<img class="thumb-lg" src="' + objectUrl + '" />');
		          // get rid of the blob
		          window.URL.revokeObjectURL(fileList[i]);
		          document.getElementById("preview_area").style.border = "2px solid white";
		          
		        }


		}
//	 	------------------End---------------View Images after select images--------------------End------------------//	




		
//---------------add product funtion 
		
		
		
		$rootScope.addProduct=function (e) {
						 e.preventDefault();
		
		
//--------************-------upload images-------************---------//
			var frmData = new FormData();
			/* 		var serializeArray = $('form[name=add-product-form]').serializeArray();
			
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
			 
			 
			 
			$scope.tf = "";
			 
			frmData.append('product_name', $scope.pro_name);
			frmData.append('product_description', $scope.pro_description);
			frmData.append('supplier_id', $scope.pro_supplier);
			frmData.append('category_id',  $scope.pro_category);
			frmData.append('qty',  $scope.pro_quantity);
			frmData.append('brand_id',  $scope.pro_brand);
			if ($scope.pro_status == 'active') {
				$scope.tf=true;
			}else{
				$scope.tf=false;
			}
// 			frmData.append('status', ($scope.pro_status == 'active' ?true:!false));
			frmData.append('status', $scope.tf );
// 			alert($scope.tf);
			

			// Gallery File
			var gallery_files = $('input[name=image]')[0].files;
			console.log(gallery_files.length);
			for (var i = 0; i < gallery_files.length; i++) {
				frmData.append("images", gallery_files[i]);
				//$("#result").src = gallery_files[i];
			}
			console.log(gallery_files.length);
			$http({
				url : 'http://localhost:8080/rest/product',
				method : 'POST',
				data : frmData,
				transformRequest : angular.identity,
				headers : {
					'Content-Type' : undefined
				}
			}).then(function(response) {
				console.log(response.data);
			}, function(error) {
				console.log(error.data);
				alert('failed to upload !!');
			});
			}
			/******************/


	});
</script>



<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>