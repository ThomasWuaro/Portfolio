$(function(){
	
	var carousel = $('.skill-carousel');
	var dotContainer = carousel.find('.carousel-dots'), dotItems = dotContainer.find('.carousel-dots-item');
	var contentItem = $('.carousel-content'); 
	
	var currentItem = 0, lastItem, itemsNbr = dotItems.length;
	var rotateValue = 360/itemsNbr, dotContainerRotation = 0, dotItemsRotation = 0;
    var interval, speed = 3000

	initCarousel();
	displayContent($(dotItems[0]));
	initInterval();

	$(window).resize(function(){
		initCarousel();
	});

	function initCarousel(){

		var width = dotContainer.width();
		var height = dotContainer.height();

		radius = width/2.5;

		var angle = 0, step = (2*Math.PI) / itemsNbr;

		dotItems.each(function() {
			var x = Math.round(width/2 + radius * Math.cos(angle) - $(this).width()/2);
			var y = Math.round(height/2 + radius * Math.sin(angle) - $(this).height()/2);

			$(this).css({
				left: x + 'px',
				top: y + 'px'
			});
			angle += step;
		});

	}

	dotItems.click(function(){

		lastItem = currentItem;
		currentItem = $(this).data("dot");

		var diff = currentItem - lastItem;
		if(diff < 0) diff = itemsNbr + diff;

		selectItem(diff);
	});

	function selectItem(diff = 1) {
		var item = $(dotItems[currentItem]);
		$(dotItems[lastItem]).toggleClass('active');
		item.toggleClass('active');

		dotContainerRotation -= rotateValue * diff;
        dotItemsRotation += rotateValue * diff;

		dotContainer.css({"transform":"rotate("+ dotContainerRotation +"deg)"});
		dotItems.css({"transform":"rotate("+ dotItemsRotation +"deg)"});

		displayContent(item);
	}

	function displayContent(item){
		contentItem.html(item.data('title'));
		contentItem.css({ "backgroundColor" : item.data('color') });
	}

	carousel.on('mouseenter', function(){
		clearInterval(interval);
		interval = null;
	});

	carousel.on('mouseleave', function() {
		if(!interval) initInterval();
	});

	function initInterval() {
		interval = setInterval(function(){

			lastItem = currentItem;
			currentItem++;
			if(currentItem >= itemsNbr) currentItem = 0;

			selectItem();

		 }, speed)
	};

});