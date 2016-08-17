<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.khmeracademy.auction.entities.User"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title class="lang" key="cambodia_auction">CAMBODIA AUCTION</title>
<!-- header -->
<style type="text/css">
#title {
	font-size: 15px;
	font-weight: bold;
	text-align: center;
	color: gray;
	margin-top: 12px;
}
</style>
<jsp:include page="header.jsp" />
<!-- menu -->
<jsp:include page="menu.jsp" />
<!-- left content -->
<jsp:include page="left-content.jsp" />
<!-- right content -->
<div class="col-md-9" ng-controller="auctionCtrl" style="padding: 0;"
	id="right-content">
	<div class="container-fluid">
		<!-- ================ Starting New Item Content ================ -->
		<div class="row">
			<p id="title" class="lang" key="new_arrivale">NEW ARRIVAL</p>
			<!-- ============ thumbnail Section ============= -->
			<div class="col-sm-6 col-md-3" style="padding-right: 1px;"
				ng-repeat="a in auction">
				<div class="thumbnail">
					<a href="bid-detail.html"><img
						src="${pageContext.request.contextPath}/resources/static/images/pophome.jpg"
						alt="..." class="img-thumbnail"></a>
					<div class="caption descript">
						<a href="bid-detail.html" class="title">{{a.product.product_name}}</a>
						<h5 class="lang" key="remaining_day">7 Days, 7 Hours remaining</h5>
						<p>
							<span class="price">{{a.start_price | currency}}</span> <span
								class="bid lang" key="bid">0 Bids</span>
						</p>
						<p>
							<a href="${pageContext.request.contextPath}/detail?id={{a.auction_id}}" class="btn btn-info"
								role="button"><font color="#f2f2f2" class="lang" key="bid_now">Bid Now <span
									class="glyphicon glyphicon-chevron-right"></span></font> </a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- ============ End Row 2 Section ============= -->
	</div>
	<!-- ============ End col-md-9 Section ============= -->
	
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	

	<!--  Static Translate  -->
	<script>
	var arrLang = new Array();
	arrLang['en'] = new Array();
	arrLang['kh'] = new Array();

	arrLang['en']['new_arrivale'] = 'New Arrival';
	arrLang['en']['cambodia_auction'] = 'CAMBODIA AUCTION';
	arrLang['en']['remaining_day'] = '7 Days, 7 Hours remaining';
	arrLang['en']['bid'] = 'Bids';
	arrLang['en']['bid_now'] = 'Bid Now';
	
	arrLang['kh']['new_arrivale'] = 'មកដល់​ថ្មី';
	arrLang['kh']['cambodia_auction'] = 'ការដេញថ្លៃនៅកម្ពុជា';
	arrLang['kh']['remaining_day'] = '7 ថ្ងៃ, 7 ម៉ោងដែលនៅសល់';
	arrLang['kh']['bid'] = 'ដេញថ្លៃ';
	arrLang['kh']['bid_now'] = 'ដេញថ្លៃឥឡូវនេះ';
	
	/* menu */
	arrLang['en']['contact_info'] = ' OUR CUSTOMER CARE +855 70 730 619';
	arrLang['kh']['contact_info'] = ' ផ្នែកផ្តល់ប្រឹក្សាអតិថិជន +855 70 730 619';
	
	arrLang['en']['login_reg'] = 'LOGIN / REGISTER';
	arrLang['kh']['login_reg'] = 'ចូល / ចុះឈ្មោះ';
	
	arrLang['en']['my_wishlist'] = 'MY WISHLIST';
	arrLang['kh']['my_wishlist'] = 'បញ្ជី​ប្រាថ្នា​របស់​ខ្ញុំ';
	
	arrLang['en']['best_bidding'] = 'BEST BIDDING';
	arrLang['kh']['best_bidding'] = 'ដេញថ្លៃច្រើនបំផុត';
	
	arrLang['en']['best_brand'] = 'BEST BRAND';
	arrLang['kh']['best_brand'] = 'ម៉ាកពេញនិយម';
	
	arrLang['en']['contact'] = 'CONTACT';
	arrLang['kh']['contact'] = 'ទំនាក់ទំនង';
	
	arrLang['en']['about'] = 'ABOUT';
	arrLang['kh']['about'] = 'អំពីយើង';
	
	arrLang['en']['language'] = 'LANGUAGE';
	arrLang['kh']['language'] = 'ភាសា';
	
	arrLang['en']['english'] = 'ENGLISH';
	arrLang['kh']['english'] = 'អង់គ្លេស';
	
	arrLang['en']['khmer'] = 'KHMER';
	arrLang['kh']['khmer'] = 'ខ្មែរ';
	
	arrLang['en']['cateogories'] = 'CATEGORIES';
	arrLang['kh']['cateogories'] = 'ប្រភេទ';
	
	arrLang['en']['login'] = 'Login';
	arrLang['kh']['login'] = 'ចូល';
	
	arrLang['en']['register'] = 'Register';
	arrLang['kh']['register'] = 'ចុះឈ្មោះ';
	
	arrLang['en']['welcome'] = 'Welcome';
	arrLang['kh']['welcome'] = 'សូមស្វាគមន៍';
	
	arrLang['en']['logout'] = 'Logout';
	arrLang['kh']['logout'] = 'ចាកចេញ';
	
	arrLang['en']['username'] = 'Username';
	arrLang['kh']['username'] = 'ឈ្មោះ​អ្នកប្រើប្រាស់';
	
	arrLang['en']['password'] = 'Password';
	arrLang['kh']['password'] = 'ពាក្យសម្ងាត់';
	
	arrLang['en']['sign_in'] = 'Sign in';
	arrLang['kh']['sign_in'] = 'ចុះឈ្មោះចូល';
	
	
	/* --  Footer -- */
	arrLang['en']['privacy'] = '2016; Privacy Policy';
	arrLang['kh']['privacy'] = '2016; គោលការណ៍​ភាព​ឯកជន';
	
	arrLang['en']['home'] = 'Home';
	arrLang['kh']['home'] = 'គេហទំព័រដើម';
	
	arrLang['en']['seller'] = 'Seller';
	arrLang['kh']['seller'] = 'អាជីវករ';
	
	arrLang['en']['buyer'] = 'Buyer';
	arrLang['kh']['buyer'] = 'អតិថិជន';
	
	arrLang['en']['SELLER_ACCEPTS_WING'] = 'Seller Accepts Wing';
	arrLang['kh']['SELLER_ACCEPTS_WING'] = 'អាជីវករព្រមទទួលការបង់ប្រាក់តាម វីង';
	

	$(document).ready(function(e) {
		$('.translate').click(function() {
			var lang = $(this).attr('id');

			$('.lang').each(function(index, element) {
				$(this).text(arrLang[lang][$(this).attr('key')]);
			});
		});
	});
</script>

<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/scripts/main-angular.js"></script>