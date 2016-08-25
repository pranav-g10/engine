
    $(document).ready(function() {

    });

    $('#tag_click a').click(function(e){
        e.preventDefault();
        if($(this).attr('id') == 'all'){
            $('#show_project div').show();
        }else {
            $('#show_project div.project_div').show();
            $('#show_project div.project_div:not(.' + $(this).attr('id') + ')').hide();
        }
    });
