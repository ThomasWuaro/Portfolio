// Modal
$(document).ready(function(){
    $('.modal').modal({
    	onOpenStart: function(){
  			fullpage_api.setAllowScrolling(false);
  			$('.navbar-fixed').css({opacity: 0.5});
    	},
    	onCloseStart: function(){
    		fullpage_api.setAllowScrolling(true);
  			$('.navbar-fixed').css({opacity: 1});
    	}
    });
  });

