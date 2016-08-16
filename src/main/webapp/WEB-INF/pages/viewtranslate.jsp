<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Register New Account</title>
<!-- header -->
<jsp:include page="header.jsp" />

<!-- menu -->
<jsp:include page="menu.jsp" />

<!-- content -->
<div class="content" id="register">
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<small>CREATE AN ACCOUNT</small>
				</div>
			</div>
		</div>
		<button class="translate" id="en">English</button>
		<button class="translate" id="kh">ខ្មែរ</button>
		<ul>
			<li class="lang" key="home">Home</li>
			<li class="lang" key="about">About Us</li>
			<li class="lang" key="contact">Contact Us</li>
		</ul>

	</div>
	<!-- end div container -->
</div>
<!-- end div main content information -->

<!-- footer -->
<jsp:include page="footer.jsp" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/translate-angular.js"></script>

<script>
	var arrLang = new Array();
	arrLang['en'] = new Array();
	arrLang['kh'] = new Array();

	arrLang['en']['home'] = 'Home';
	arrLang['en']['about'] = 'About Us';
	arrLang['en']['contact'] = 'Contact Us';
	arrLang['en']['desc'] = 'This is my description';

	arrLang['kh']['home'] = 'ទំព័រដើម';
	arrLang['kh']['about'] = 'អំពីយើង';
	arrLang['kh']['contact'] = 'ទំនាក់ទំនង';
	arrLang['kh']['desc'] = 'នេះគឺជាអត្ធបទ';

	$(document).ready(function(e) {
		$('.translate').click(function() {
			var lang = $(this).attr('id');

			$('.lang').each(function(index, element) {
				$(this).text(arrLang[lang][$(this).attr('key')]);
			});
		});
	});
</script>