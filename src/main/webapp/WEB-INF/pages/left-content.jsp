<!-- ================ Starting Content Section ================= -->
	<div class="content">
		<div class="row">
		<!-- ============ List Categpries Section ============= -->
			<div class="col-md-3">
				<div class="list-group categories">
					<p style="font-weight: bold; font-size: 20px;" class="list-group-item">Categories</p>
				  	<a href="#" class="list-group-item" ng-repeat="c in category">
				  		{{c.category_name}}
				  		<br />
				  		 <span ng-repeat="subCategory in c.subCategories">
					        ==> {{subCategory.category_name}}
					        <br />
					    <span/>
				  		
				  		<span class="badge"></span>
				  	</a>
<!-- 				 	<a href="#" class="list-group-item">Computer & Office<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Consumer Electronic<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Men's Clothing<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Women's Clothing<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Jewellry & Watch<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Home & Garden<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Bag & Shoes<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Toy, Kid & Baby<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Sport & Outdoors<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Health & Beauty<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Automotive & Motorcycle<span class="badge">2</span></a>
				 	<a href="#" class="list-group-item">Phone & Accessories<span class="badge">2</span></a> -->
				</div>
			</div><!-- ============ End List Categpries Section ============= -->