$('#tag_click a').click(function(e){
    e.preventDefault();
    var animationClass = 'animated pulse';
    var animation_end = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
    if($(this).attr('id') == 'all'){
        $('#show_project div').show();
        $('#tag_click li a#'+ $(this).attr('id')).parent().addClass('active');
        $('#tag_click a').not('#'+$(this).attr('id')).each(function() {
            $(this).parent().removeClass('active');
        });
    }else {
        $('#show_project div.project_div').show();
        $('#show_project div.project_div:not(.' + $(this).attr('id') + ')').hide();
        $('#tag_click a#'+ $(this).attr('id')).parent().addClass('active');
        $('#tag_click a').not('#'+$(this).attr('id')).each(function(){
            $(this).parent().removeClass('active');
        });
    }


    $('.project_div').addClass(animationClass).one(animation_end, function(){
        $(this).removeClass(animationClass);
    });
});

$("#about").click(function(e) {
    e.preventDefault();
    $("html, body").animate({ scrollTop: $(document).height() }, "slow");
    return false;
});
