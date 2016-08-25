$(function(){

	// $('#search').on('click', function(){

	// 		$('#formsearch').slideDown('slow').css({

	// 			'position': 'absolute',
	// 			'display' : 'block',
	// 			'right' : 10,
	// 			'top'	: 10

	// 		});
	// });

});



// script for detail image slides
        function jssor_1_slider_init() {
            
            var jssor_1_options = {
              $AutoPlay: true,
              $AutoPlaySteps: 4,
              $SlideDuration: 160,
              $SlideWidth: 200,
              $SlideSpacing: 3,
              $Cols: 4,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,
                $Steps: 4
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $SpacingX: 1,
                $SpacingY: 1
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
            
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 809);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end
        };

        // jssor_1_slider_init();

// link to change images
    $("#moreImgs1").click(function(){
      $("#myImage").attr('src',"images/home1.png");
      $("#myLink").attr('href', 'images/home1.png')
    });

    $("#moreImgs2").click(function(){
      $("#myImage").attr('src',"images/home2.png");
      $("#myLink").attr('href', 'images/home2.png')
    });

    $("#moreImgs3").click(function(){
      $("#myImage").attr('src',"images/home3.png");
      $("#myLink").attr('href', 'images/home3.png')
    });

    $("#moreImgs4").click(function(){
      $("#myImage").attr('src',"images/home4.png");
      $("#myLink").attr('href', 'images/home4.png')
    });

    $("#moreImgs5").click(function(){
      $("#myImage").attr('src',"images/home5.png");
      $("#myLink").attr('href', 'images/home5.png')
    });

    $("#moreImgs6").click(function(){
      $("#myImage").attr('src',"images/newcar1.png");
      $("#myLink").attr('href', 'images/newcar1.png')
    });

    $("#moreImgs7").click(function(){
      $("#myImage").attr('src',"images/newcar2.png");
      $("#myLink").attr('href', 'images/newcar2.png')
    });

    $("#moreImgs8").click(function(){
      $("#myImage").attr('src',"images/newcar3.png");
      $("#myLink").attr('href', 'images/newcar3.png')
    });

    $("#moreImgs9").click(function(){
      $("#myImage").attr('src',"images/newcar4.png");
      $("#myLink").attr('href', 'images/newcar4.png')
    });

