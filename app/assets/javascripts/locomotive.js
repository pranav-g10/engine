// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore/underscore
//= require backbone/backbone
//= require bootstrap-tagsinput/bootstrap-tagsinput
//= require select2/select2
//= require moment/moment
//= require moment-timezone/moment-timezone
//= require eonasdan-bootstrap-datetimepicker/bootstrap-datetimepicker
//= require codemirror
//= require codemirror/modes/markdown
//= require nprogress
//= require nprogress-ajax
//= require locomotive/vendor
//= require ./locomotive/application
//= require ./locomotive/fancybox


$(document).ready(function(){
    // Landing Page Scroll
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    });

    // Highlight the top nav as scrolling occurs
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    });

    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a:not(.dropdown-toggle)').click(function() {
        $('.navbar-toggle:visible').click();
    });

    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })

  $.datepicker.setDefaults($.datepicker.regional[window.locale]);

    $('ul li').on("click",function(e)
    {
      if ($(this).text() == 'Restore') {
        $('.text-right').hide();
      }
      else{
        $('.text-right').show();
      }
    
    });
    $('.dropdown').on("click",function(e)
    {
        if ($('.nav-tabs li.active').text() == 'Restore') {
            $('.text-right').hide();
        }

    });


    $(".fancybox").fancybox({
      helpers : {
       overlay: {
        opacity: 0.8,
        onComplete: function() {
          $("#fancybox-wrap").css({'top':'20px', 'bottom':'auto'});
       },  // or the opacity you want
        css: {'background': 'rgba(255, 255, 255, 0.972549)'},
    // or your preferred hex color value
       } // overlay
      } // helpers
    });




    $('.restore-btn').on("click",function(e) {
        $(".sidebar, .navigation").css("z-index", "-1");
    });


    $(".restore-modal").on("hidden.bs.modal", function () {
        $(".sidebar, .navigation").css("z-index", "100");
    });


    $("input:checkbox").on("change", function(){
        if($('input:checkbox').is(':checked')){
            $('.yearly-price').show();
            $('.monthly-price').hide();
        }
        else{
            $('.monthly-price').show();
            $('.yearly-price').hide();
        }

    });

    //home page contact form validation and submission
    $(function () {
        $('#contactForm').validate({
            // Specify validation rules
            rules: {
                name: "required",
                phone: "required",
                email: {
                    required: true,
                    email: true
                }
            },
            // Specify validation error messages
            messages: {
                name: "Please enter your name",
                phone: "Please enter your phone",
                email: "Please enter a valid email address"
            },
            errorClass: "my-error-class",
            submitHandler: function (form) {
                //form.submit();
                var name = $('#name').val();
                var email = $('#email').val();
                var phone = $('#phone').val();
                var message = $('#message').val();
                $.ajax({url:"contact_us",
                    method: "POST",
                    dataType: "json",
                    data: {"name" : name,
                        "email" : email,
                        "phone" : phone,
                        "message" : message},
                    success:function(result){
                        if (result.success == true) {
                            var url = "/locomotive/page";
                            $(location).attr('href', url);
                        }
                    }});
            }
        });
    });

    $('.parallax-window').parallax({imageSrc: '/assets/landing_page/header-bg.jpg'});



});



