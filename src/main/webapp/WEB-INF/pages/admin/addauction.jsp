<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
                <h4 class="page-title">Auction</h4>
                <ol class="breadcrumb">
                  <li><a href="">iWant Acution</a></li>
                  <li><a href="">Auction Management</a></li>
                  <li class="active">Add Auction</li>
                </ol>
              </div>
            </div>

            <!-- Wizard with Validation -->
            <div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									<h4 class="m-t-0 header-title"><b>Add Auction </b></h4>
									
									<form id="wizard-validation-form" action="/index">
                    <section>
                      <div class="form-group clearfix">
                        <label class="col-lg-2 control-label" for="product">Product</label>
                          <div class="col-lg-10">
                            <select class="form-control required" name="product">
                              <option>Product 1</option>
                              <option>Product 2</option>
                              <option>Product 3</option>
                            </select>
                          </div>
                      </div>
                      <div class="form-group clearfix">
                        <label class="col-lg-2 control-label" for="startprice"> Start Price *</label>
                        <div class="col-lg-10">
                          <input id="startprice" name="startprice" type="text" class="required form-control">
                        </div>
                      </div>
                      <div class="form-group clearfix">
                        <label class="col-lg-2 control-label " for="increseprice"> Increment Price *</label>
                        <div class="col-lg-10">
                          <input id="increseprice" name="increseprice" type="text" class="required form-control">
                        </div>
                      </div>

                      <div class="form-group clearfix">
                        <label class="col-lg-2 control-label " for="buyprice">Buy Now Price *</label>
                        <div class="col-lg-10">
                          <input id="buyprice" name="buyprice" type="text" class="required  form-control">
                        </div>
                      </div>

                      <div class="form-group clearfix">
                        <label class="col-lg-2 control-label " for="startdate">Start Date *</label>
                        <div class="col-lg-10">
                          <input id="startdate" name="startdate" type="text" class="required  form-control">
                        </div>
                      </div>

                      <div class="form-group clearfix">
                        <label class="col-lg-2 control-label " for="enddate">End Date *</label>
                        <div class="col-lg-10">
                          <input id="enddate" name="enddate" type="text" class="required  form-control">
                        </div>
                      </div>

                      <div class="form-group clearfix">
                        <label class="col-lg-12 control-label ">(*) Mandatory</label>
                      </div>
                    </section> 
                    <div class="row">
                      <div class="col-sm-12">           
                        <div class="text-center p-20">
                          <button type="button" class="btn w-sm btn-default waves-effect waves-light">
                          <i class="fa fa-floppy-o" aria-hidden="true"></i> Save</button>
                          <button type="button" class="btn w-sm btn-danger waves-effect waves-light">
                          <i class="fa fa-times" aria-hidden="true"></i> Cancel</button>
                        </div>
                      </div>
                    </div>                                                                           
                  </form>
								</div>
							</div>
						</div><!-- End row -->                        
          </div> <!-- container -->                              
        </div> <!-- content -->