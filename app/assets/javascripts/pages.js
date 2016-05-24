$(document).ready(function() {
    $(".nav-toggle").click(function(event){
        $('.log-in').stop().slideToggle();
        return false;        
    });

    $('.quote span').on('click', '', function(){
    	if ($(this).attr('data-info') === '1') {
    		$(this).attr('contenteditable', 'true');
    	} else {
    		//alert('game over');
    	}
    });
});

