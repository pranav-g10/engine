
$("#pages-nav li a").click(function(){
    // remove previously added selectedLi
    // add class `selectedLi`
    $(this).addClass('current-page');
});

$(document).ready(function() {
    $('.image').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
        gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1] // Will preload 0 - before current, and 1 after the current image
        },

    });


});

$grid=$('.grid');
$items=$('.grid-item');
$grid.imagesLoaded( function() {
    // init Masonry
    $grid.masonry({
        // options...
        itemSelector: '.grid-item'
    });
});


$('.slick-team').slick({
    dots: false,
    infinite: false,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 4,
    responsive: [
        {
            breakpoint: 1030,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
                infinite: true,
                dots: true
            }
        },
        {
            breakpoint: 700,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2
            }
        },
        {
            breakpoint: 685,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
    ]
});

