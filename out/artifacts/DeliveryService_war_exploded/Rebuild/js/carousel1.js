$(document).ready(function() {

    $(".owl-carousel").owlCarousel({
        navText:['<i class="fa fa-arrow-circle-left" aria-hidden="true"></i>','<i class="fa fa-arrow-circle-right" aria-hidden="true"></i>'],
        autoPlay: 3000,
        items : 2,
        margin: -10,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [979,3],
        center: true,
        nav:true,
        loop:true,
        responsive: {
            600: {
                items: 1
            }
        }






    });

});