<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

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
                <h4 class="page-title">Add Category</h4>
                <ol class="breadcrumb">
                  <li><a href="#">iWant Auction</a></li>
                  <li><a href="#">Category Management</a></li>
                  <li class="active">Add/Edit Category&Brand</li>
                </ol>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <form>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="card-box">
                        <h5 class="text-muted text-uppercase m-t-0 m-b-20"><b>Add Category</b></h5>
                        <div class="form-group m-b-20">
                          <label for="catename">Category Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" name="catename" id="catename">
                        </div>
                        <div class="form-group m-b-20">
                          <label for="catedescript">Category Description</label>
                          <textarea class="form-control" rows="3" name="catedescript" id="catedescript" placeholder="Please enter summary"></textarea>
                        </div>
                        <div class="form-group m-b-20">
                          <label for="parenid">Parent ID<span class="text-danger">*</span></label>
                          <input type="text" class="form-control" name="parenid" id="parenid">
                        </div>
                        <div class="form-group m-b-20">
                          <label class="m-b-15" for="catestatus">Status <span class="text-danger">*</span></label>
                          <br/>
                          <div class="radio radio-inline">
                            <input type="radio" id="catestatus1" value="active" name="catestatus" checked="">
                            <label for="inlineRadio1"> active </label>
                          </div>
                          <div class="radio radio-inline">
                            <input type="radio" id="catestatus2" value="inactive" name="catestatus">
                            <label for="catestatus2"> inactive </label>
                          </div>
                        </div>
                        <div class="row">                         
                          <div class="text-center p-20">
                            <button type="button" class="btn w-sm btn-white waves-effect">Cancel</button>
                            <button type="button" class="btn w-sm btn-default waves-effect waves-light">Save</button>
                            <button type="button" class="btn w-sm btn-danger waves-effect waves-light">Delete</button>
                          </div>                        
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="card-box">
                        <h5 class="text-muted text-uppercase m-t-0 m-b-20"><b>Add Brand</b></h5>
                        <div class="form-group m-b-20">
                          <label for="brandname">Branch Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" name="brandname" id="brandname">
                        </div>
                        <div class="form-group m-b-20">
                          <label for="branddescipt">Branch Description</label>
                          <textarea class="form-control" rows="3" name="branddescipt" id="branddescipt" placeholder="Please enter summary"></textarea>
                        </div>
                        <div class="form-group m-b-20">
                          <label class="m-b-15" for="brandstatus">Status <span class="text-danger">*</span></label>
                          <br/>
                          <div class="radio radio-inline">
                            <input type="radio" id="brandstatus1" value="active" name="brandstatus" checked="">
                            <label for="brandstatus1"> active </label>
                          </div>
                          <div class="radio radio-inline">
                            <input type="radio" id="brandstatus2" value="inactive" name="brandstatus">
                            <label for="brandstatus2"> inactive </label>
                          </div>
                        </div>
                        <div class="row">                         
                          <div class="text-center p-20">
                            <button type="button" class="btn w-sm btn-white waves-effect">Cancel</button>
                            <button type="button" class="btn w-sm btn-default waves-effect waves-light">Save</button>
                            <button type="button" class="btn w-sm btn-danger waves-effect waves-light">Delete</button>
                          </div>                        
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>            
          </div> <!-- container -->                        
        </div> <!-- content -->
       
        <!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>     