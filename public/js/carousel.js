let i=2;


$(document).ready(function(){
	var radius = 200;
	var fields = $('.itemDot');
	var container = $('.dotCircle');
	var width = container.width();
	radius = width/2.5;

	var height = container.height();
	var angle = 0, step = (2*Math.PI) / fields.length;
	fields.each(function() {
		var x = Math.round(width/2 + radius * Math.cos(angle) - $(this).width()/2);
		var y = Math.round(height/2 + radius * Math.sin(angle) - $(this).height()/2);
		/*if(window.console) {
			console.log($(this).text(), x, y);
		}*/

		$(this).css({
			left: x + 'px',
			top: y + 'px'
		});
		angle += step;
	});


	$('.itemDot').click(function(){

		var dataTab= $(this).data("tab");
		$('.itemDot').removeClass('active');
		$('.itemDot').css({
			"opacity": 0.8
		});
		$(this).addClass('active');
		$(this).css({
			"opacity":1
		});
		$('.CirItem').removeClass('active');
		$( '.CirItem'+ dataTab).addClass('active');
		i=dataTab;

		$('.dotCircle').css({
			"transform":"rotate("+(360-(i-1)*45)+"deg)",
			"transition":"2s"
		});
		$('.itemDot').css({
			"transform":"rotate("+((i-1)*45)+"deg)",
			"transition":"1s"
		});


	});

	setInterval(function(){
		var dataTab= $('.itemDot.active').data("tab");
		if(dataTab>fields.length||i>fields.length){
			dataTab=1;
			i=1;
		}
		$('.itemDot').removeClass('active');
		$('.itemDot').css({
			"opacity": 0.8
		});
		$('[data-tab="'+i+'"]').addClass('active');
		$('[data-tab="'+i+'"]').css({
			"opacity": 1
		});
		$('.CirItem').removeClass('active');
		$( '.CirItem'+i).addClass('active');
		i++;


		$('.dotCircle').css({
			"transform":"rotate("+(360-(i-2)*45)+"deg)",
			"transition":"2s"
		});
		$('.itemDot').css({
			"transform":"rotate("+((i-2)*45)+"deg)",
			"transition":"1s"
		});

	}, 5000);

});