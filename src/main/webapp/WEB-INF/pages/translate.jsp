<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<button class="translate" id="en">English</button>
	<button class="translate" id="kh">ខ្មែរ</button>
	<ul>
		<li class="lang" key="home">Home</li>
		<li class="lang" key="about">About Us</li>
		<li class="lang" key="contact">Contact Us</li>
	</ul>
</body>

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

		$(document).ready(function(e){
			$('.translate').click(function(){
				var lang = $(this).attr('id');

				$('.lang').each(function(index, element){
					$(this).text(arrLang[lang][$(this).attr('key')]);
				});
			});
		});

	</script>

</html>