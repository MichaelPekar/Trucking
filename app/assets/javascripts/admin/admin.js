//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require ckeditor/init
//= require bootstrap_file_upload/bootstrap-fileupload.min
//= require country_select/js/msdropdown/jquery.dd.min

$(document).ready(function() {
    $("#countries").msDropdown();
    $("#countries").change(function(){
        window.location.href = $(this).find('option:selected').data('href');
    });

    $("#lang").msDropdown();
});