<!-- ================ Starting Content Section ================= -->
	<div class="content">
		<div class="row">
			<!-- ============ List Categpries Section ============= -->
			<div class="col-md-3">		
				<div class="panel-group">
				   <div class="panel panel-default" ng-repeat="c in category">
				     <div class="panel-heading">
				       <h4 class="panel-title">
				         <a data-toggle="collapse" href=".collapse1">{{c.category_name}}</a>
				          
				       </h4>
				     </div>
				     <div class="panel-collapse collapse collapse1">
				       <ul class="list-group">
				         <li class="list-group-item" ng-repeat="subCategory in c.subCategories">{{subCategory.category_name}}</li>
				       </ul>
				     </div>
				   </div>
				  </div>
								
			</div><!-- ============ End List Categpries Section ============= -->