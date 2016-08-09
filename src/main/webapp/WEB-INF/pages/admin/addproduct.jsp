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
                          <input type="text" class="form-control" name="productname" id="productname" placeholder="e.g : Apple iMac">
                        </div>

                        <div class="form-group m-b-20">
                          <label for="prodescript">Product Description <span class="text-danger">*</span></label>
                          <textarea class="form-control" rows="5" name="prodescript" id="prodescript" placeholder="Please enter description"></textarea>
                        </div>

                        <div class="form-group m-b-20">
                          <label>Categories <span class="text-danger">*</span></label>
                          <select class="form-control select2" name="category">
                            <option>Select</option>
                            <optgroup label="Shopping">
                              <option value="cat1">Shopping 1</option>
                              <option value="cat2">Shopping 2</option>
                              <option value="cat3">Shopping 3</option>
                              <option value="cat4">Shopping 4</option>
                            </optgroup>
                            <optgroup label="CRM">
                              <option value="CRM1">Crm 1</option>
                              <option value="CRM2">Crm 2</option>
                              <option value="CRM3">Crm 3</option>
                              <option value="CRM4">Crm 4</option>
                            </optgroup>
                            <optgroup label="eCommerce">
                              <option value="E1">eCommerce 1</option>
                              <option value="E2">eCommerce 2</option>
                              <option value="E3">eCommerce 3</option>
                              <option value="E4">eCommerce 4</option>
                            </optgroup>
                          </select>
                        </div>

                        <div class="form-group m-b-20">
                          <label for="brand">Brand <span class="text-danger">*</span></label>
                          <select class="form-control select2" name="brand">
                            <option>Select</option>
                            <optgroup label="Shopping">
                              <option value="bra1">brand 1</option>
                              <option value="bra2">brand 2</option>
                              <option value="bra3">brand 3</option>
                              <option value="bra4">brand 4</option>
                            </optgroup>
                            <optgroup label="CRM">
                              <option value="CRM1">brand 1</option>
                              <option value="CRM2">brand 2</option>
                              <option value="CRM3">brand 3</option>
                              <option value="CRM4">brand 4</option>
                            </optgroup>
                            <optgroup label="eCommerce">
                              <option value="E1">brand 1</option>
                              <option value="E2">brand 2</option>
                              <option value="E3">brand 3</option>
                              <option value="E4">brand 4</option>
                            </optgroup>
                          </select>
                        </div>

                        <div class="form-group m-b-20">
                          <label for="qty">Quantity<span class="text-danger">*</span></label>
                          <input type="text" class="form-control" name="qty">
                        </div>

                        <div class="form-group m-b-20">
                          <label class="m-b-15" for="prostatus">Status <span class="text-danger">*</span></label>
                          <br/>
                          <div class="radio radio-inline">
                            <input type="radio" id="prostatus1" value="active" name="prostatus" checked="">
                            <label for="prostatus1"> active </label>
                          </div>
                          <div class="radio radio-inline">
                            <input type="radio" id="prostatus2" value="inactive" name="prostatus">
                            <label for="prostatus2"> inactive </label>
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
                  <button type="button" class="btn w-sm btn-default waves-effect waves-light">Save</button>
                  <button type="button" class="btn w-sm btn-danger waves-effect waves-light">Delete</button>
                </div>
              </div>
            </div>

          </div><!-- End container -->
        </div><!-- End content -->
      </div><!-- End content-page -->
      
      <!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>