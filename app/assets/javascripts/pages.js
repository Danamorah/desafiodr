$(document).on('page:change', function() {
    $(".nav-toggle").click(function(event){
        $('.log-in').stop().slideToggle();
        return false;        
    });

    $('.quote span').on('click', '', function(){
        if ($(this).attr('data-info') === '1') {
            $(this).attr('contenteditable', 'true').addClass("edit");
        } else {
            //alert('game over');
        }
    });

    //$('.send_quote').on('click', '', function(){
    //    var get_quote = $('.quote').text();
    //    var g_quote = get_quote.replace(/\s(?=\s)/g,'');
    //    console.log(g_quote);
    //});


   // submit answer //
   /*$( ".edit" ).keypress(function( event ) {
    if ( event.which == 13 && event.shiftKey != 1) {
        event.preventDefault();
        var txt = $(".edit").html();
        $('span').append("");   
        $('span').submit();
    }
});*/
   
   $(".quote").keypress(function(event) {
    if (event.keyCode == 13){
        event.preventDefault();
         this.(".quote").submit;
    }
});

});

