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
    <div class="content-page" ng-controller="viewProductCtrl">
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
                        	<input type="text" id="search" class="form-control" ng-model="str_search" placeholder="Search...">
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
              			
                        <tr  ng-repeat="pro in products | filter: str_search | orderBy:'-product_id'">
                       
	                          <td>
	                            <div class="checkbox checkbox-primary m-r-15">
	                              <input id="checkbox14" type="checkbox">
	                              <label for="checkbox14"></label>
	                            </div>
	                          </td>
	                          
	                          <td ng-repeat="proimg in pro.gallery" ng-show="$first">
	                         
	                         	 <img src={{proimg.image_path}}   class="thumb-lg" alt="product-img" />
								
							  </td>
											
	                          <td>{{pro.product_id}}</td>
	                          <td>{{pro.product_name}}</td>
	                          <td>{{pro.product_description}}</td>
	                          <td>{{pro.supplier.contact_name}}</td>                                                       
	                          <td>{{pro.category.category_name}}</td>
	                          <td>{{pro.qty}}</td>
	                          <td>{{pro.brand.brand_name}}</td>
	                          
	                          	
	                          
	                          <td>
	                          	<a href="#" data-toggle="modal" data-target=".enterData" class="table-action-btn" ng-click="getProductByID(pro,pro.gallery)"><i class="md md-edit"></i></a>
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
				<h4 class="modal-title" id="myModalLabel">Update Product</h4>
			</div>
			<div class="modal-body">
				<form name="myForm">
					<!--  User name -->
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="userName2">Product Name *</label>
						<div class="col-lg-10">
							<input class=" form-control required" id=""
								name="user_name" type="text" ng-model="proname" value={{proname}}>
						</div>
					</div>

					<!--  Status -->
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="phone">Description *</label>
						<div class="col-lg-10">
							<input id="phone" name="phone" type="text" placeholder="Ex: 012 345 678"
								class="required form-control" ng-model="prodescription" value={{prodescriptiont}}>
						</div>
					</div>
			
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="fname">Supplier *</label>
						<div class="col-lg-10">
							<select id="lname" name="lname" type="text" class="form-control" ng-model="pro_supplier_to_update">
								<option value="">{{prosupplier}}</option>
								<option ng-repeat="supplier in Supplier" value="{{supplier.supplier_id}}">{{supplier.contact_name}}</option>
							
					
							</select>
						</div>		
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="lname">Category *</label>
						<div class="col-lg-10">
							<select id="lname" name="lname" type="text" class="form-control" ng-model="pro_category_to_update">
								<optgroup ng-repeat="categories in Categories" label="{{categories.category_name}}">
									<option value="">{{thisPro_category_name}}</option>
									<option ng-repeat="sub in categories.subCategories" value="{{sub.category_id}}">{{sub.category_name}}</option>
								</optgroup>
							</select>
								
						</div>	
					</div>
					
					<div class="form-group row">
						<label class="col-lg-2 control-label " for="lname">Quantity *</label>
						<div class="col-lg-10">
						<input id="lname" name="lname" type="text"
								class="form-control" ng-model="proqty" alue={{proqty}}>
							
						</div>
					</div>
					
					<div class="form-group row">
						<label class="control-label col-lg-2">Brand *</label>
						<div class="col-lg-10">
							<select id="lname" name="lname" type="text" class="form-control" ng-model="pro_brand_to_update">
								
								<option value="">{{probrand}}</option>
								<option ng-repeat="brand in Brand" value="{{brand.brand_id}}">{{brand.brand_name}}</option>
							
					
							</select>
							<!-- input-group -->
						</div>
					</div>
					
					<div class="form-group row">
						<label for="" class="col-sm-2 form-control-label"></label>
						<div class="col-sm-10">	
							<button type="button" class="btn btn-success btn-md"
								ng-model="user_id" ng-click="updateProduct()"
								id="u_submit" data-dismiss="modal">Update</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--  end modal  -->
          
 </div>
        
<script type="text/javascript">
	var app = angular.module('myApp', []);
		app.controller('viewProductCtrl', function($rootScope,$scope, $http) {
			
			
			
		//****************get brand
			$rootScope.getBrand=function(){
	    		//alert("a");
	           $http.get("http://localhost:8080/rest/brand")
	          		.then(function(response) {
	          		$rootScope.Brand = response.data.DATA;
					console.log(response.data.DATA);

	  			});
		}

	    	$rootScope.getBrand();
			
			
		//****************get category
			$rootScope.getCategory=function(){
	    		
		           $http.get("http://localhost:8080/rest/category/find-main-category")
		          		 .then(function(response) {

		          		$rootScope.Categories = response.data.DATA;
	          		

						console.log(response.data.DATA);

		  			});
		        }
		    	$rootScope.getCategory();
		    	
		    	
		    	
			//***********Supplier 
		    	$rootScope.getSupplier = function(){
					
						$http.get("http://localhost:8080/rest/supplier")
		          		 .then(function(response) {

		          		$scope.Supplier = response.data.DATA;
	          		
					
						console.log(response.data.DATA);

		  			});
}
				    $rootScope.getSupplier();
			

//**********get product
    	$rootScope.getProductsMethod=function(){
//     		alert("a");
           $http.get("http://localhost:8080/rest/product")
          		.then(function(response) {
          		$rootScope.products = response.data.DATA;
          		/* alert(response.data.DATA.gallery.image_path); */
				console.log(response.data.DATA);
				
  			});
        }
    	$rootScope.getProductsMethod();
		
      
       
       
           
    	$scope.getProductByID = function(proObject,progallery){
    		var frmData = new FormData();
    		///*********
    		$scope.productObj = proObject;
    		
    		//to get That product's category id
    		$scope.thisPro_category_id = $scope.productObj.category.category_id
    		
    		$scope.proid = proObject.product_id;
    		$scope.proname = proObject.product_name;
    		$scope.prodescription = proObject.product_description;
    		$scope.prosupplier= proObject.supplier.contact_name;
    		
    		$scope.thisPro_category_name = proObject.category.category_name;
    		
    		$scope.proqty = proObject.qty;
    		$scope.probrand = proObject.brand.brand_name;
    		$scope.prostatus = proObject.status;
    		alert(proObject.status);
//     		alert($scope.proid);
//     		for (var i = 0; i < progallery.length; i++) {
//     			//$scope.gallery = progallery[0].image_path;
//         		//console.log($scope.gallery);
// 			}
//     		for (var i = 0; i < progallery.length; i++) {
// 				frmData.append("images", progallery[i]);
// 				alert(frmData.values("images"));
// 			}
    		
    	}
    	
    	
    	//**************Update Product
    	$rootScope.updateProduct = function(){
    		
    		
    		if ($scope.pro_category_to_update == undefined) {
				//alert("category no update");
				$scope.pro_category_to_update = $scope.productObj.category.category_id;
				//alert($scope.pro_category_to_update);
						
			}
    		
    		if($scope.pro_brand_to_update == undefined){
				//alert("brand no update");
				$scope.pro_brand_to_update = $scope.productObj.brand.brand_id;
				//alert($scope.pro_brand_to_update);
			}
    		
    		if($scope.pro_supplier_to_update == undefined){
				//alert("supplier no update");
				$scope.pro_supplier_to_update = $scope.productObj.supplier.supplier_id;
				//alert($scope.pro_supplier_to_update);
			}

			alert($scope.pro_brand_to_update +"brand");
			alert($scope.pro_category_to_update + "category");
			alert($scope.pro_supplier_to_update+ "supplier");
			
    		$http({
    			
			url : 'http://localhost:8080/rest/product',
			method : 'PUT',
			data :{ 
					"product_id":$scope.proid,
					"product_name": $scope.proname,
			  		"product_description": $scope.prodescription,
				  	"supplier_id": $scope.pro_supplier_to_update,
				  	"category_id": $scope.pro_category_to_update,	  
				  	"qty": $scope.proqty,
				  	"brand_id":$scope.pro_brand_to_update,
				  	"status": $scope.prostatus
			}					
    		
		}).then(function(response) {
			console.log(response.data)
			
			swal({ 
				title: "Success!",
				text: "Product has been updated.",
			    type: "success",
			    timer : 500,
			    showConfirmButton : false
			  }, function(){
			    window.location.href = 'http://localhost:8080/admin/viewproduct';
			});
		
		}, function(error) {
			console.log(error.data);
			alert('failed to update !!');
			window.location.href = 'http://localhost:8080/admin/viewproduct';
			
		});
    	}
    	
    	
	});

</script>

<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>     
 
 
        