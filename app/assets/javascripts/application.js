// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require gallery/jquery.gallery
//= require country_select/js/msdropdown/jquery.dd.min
//= require twitter/bootstrap
//= require underscore
//= require gmaps/google


$(document).ready(function() {
    $("#countries").msDropdown();
    $("#countries").change(function(){
        window.location.href = $(this).find('option:selected').data('href');
    });

    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
        markers = handler.addMarkers([
            {
                "lat": 48.607518,
                "lng": 22.310761,
                "infowindow": "hello!"
            }
        ]);
        handler.map.centerOn({lat: 48.607518, lng: 22.310761});
        handler.getMap().setZoom(15);
    });
});