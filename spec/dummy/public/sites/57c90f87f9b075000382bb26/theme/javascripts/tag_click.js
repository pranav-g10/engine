//$('#tag_click a').click(function(e){
//    e.preventDefault();
//    var animationClass = 'animated pulse';
//    var animation_end = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
//    var tag = $(this).text();
//    var tag_id = $(this).attr('id');
//    $.ajax({url:"/tag-projects",
//        data: {"tag" : tag},
//        dataType: "html",
//        type: "post",
//        success: function(data) {
//            $( "#show_project" ).replaceWith( data );
//            $('.project_div').addClass(animationClass).one(animation_end, function(){
//                $(this).removeClass(animationClass);
//            });
//            if(tag == 'All'){
//             $('#tag_click li a#'+ tag_id).parent().addClass('active');
//             $('#tag_click a#'+ tag_id).css('font-family','fantasy');
//             $('#tag_click a').not('#'+tag_id).each(function() {
//                 $(this).parent().removeClass('active');
//             });
//            }else {
//             $('#tag_click a#'+ tag_id).parent().addClass('active');
//             $('#tag_click a#'+ tag_id).css('font-family','fantasy');
//             $('#tag_click a').not('#'+tag_id).each(function(){
//                 $(this).parent().removeClass('active');
//             });
//            }
//        }
//
//    })
//
//
//});

function search_projects(e){
    e.preventDefault();
    var animationClass = 'animated pulse';
    var animation_end = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
    var search_text = $('#search').val();
    $.ajax({url:"/search-projects",
        data: {"search_text" : search_text},
        dataType: "html",
        type: "post",
        success: function(data) {
            $( "#show_project" ).replaceWith( data );
            $('.project_div').addClass(animationClass).one(animation_end, function(){
                $(this).removeClass(animationClass);
            });
            $('.isotopeFilters').find('.active').removeClass('active');
            jQuery(window).trigger('load');
        }

    })
}

$("#about").click(function(e) {
    e.preventDefault();
    $("html, body").animate({ scrollTop: $(document).height() }, "slow");
    return false;
});

$(document).ready(function(){
    $('#tag_click li.active a').css('font-family','fantasy')
});

$('#search').keypress(function(e){
    var code = (e.keyCode ? e.keyCode : e.which);
    if(code == 13) {
      search_projects(e);
    }
});
