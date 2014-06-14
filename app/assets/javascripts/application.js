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
//= require bootstrap
//= require bootstrap/scrollspy
//= require bootstrap/dropdown
//= require underscore
//= require gmaps/google
//= require moment
//= require bootstrap-datetimepicker


$(document).ready(function() {

    if($(document).height() <= $(window).height()){
        $("footer").addClass("navbar-fixed-bottom");
    };

    $('#myCarousel').carousel({
        interval: 4000
    })
    if($('#roads-map').size() > 0){
        handler = Gmaps.build('Google');
        handler.buildMap({ provider: {}, internal: {id: 'roads-map'}}, function(){
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
    }
    if($('#base-map').size() > 0){
        handler2 = Gmaps.build('Google');
        handler2.buildMap({ provider: {}, internal: {id: 'base-map'}}, function(){
            markers = handler2.addMarkers([
                {
                    "lat": 48.607518,
                    "lng": 22.310761,
                    "infowindow": "hello!"
                }
            ]);
            handler2.map.centerOn({lat: 48.607518, lng: 22.310761});
            handler2.getMap().setZoom(15);
        });
    }
});