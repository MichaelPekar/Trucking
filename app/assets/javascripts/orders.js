$(document).ready(function() {
    if($('#map_canvas').size() > 0){
        var map = new google.maps.Map(document.getElementById("map_canvas"),
            {
                zoom: 1,
                center: new google.maps.LatLng(15,0),
                mapTypeId: google.maps.MapTypeId.HYBRID
            });

        var route =
            [
                new google.maps.LatLng(-25.641526,-67.324219),
                new google.maps.LatLng(-13.410994,-53.4375),
                new google.maps.LatLng(24.688,46.7224),
                new google.maps.LatLng(39.97712,-76.201172),
                new google.maps.LatLng(-34.307144,151.875),
                new google.maps.LatLng(51.5133,-0.0889)
            ];    //Always remember that two consecutive lat-lngs above will form one geodesic polyline.

        var icon_array = {"icons":[{"repeat":"24px","icon":{"path":"M 0,-2 0,2","strokeOpacity":1,"strokeColor":"red", "scale": 3}}],"path":[{"$a":35,"ab":-70},{"$a":40,"ab":-80},{"$a":50,"ab":-85}],"strokeColor":"yellow"};

        var route1 =
            [
                new google.maps.LatLng(35,-70),
                new google.maps.LatLng(40,-80),
                new google.maps.LatLng(50, -85)
            ];
        console.log(icon_array);

        icon_array.path = route1;

        console.log(icon_array);

        var path = new google.maps.Polyline(
            {
                path: route,
                icons: [{repeat:"24px",icon:{path:"M 0,-2 0,2",
                    strokeOpacity:1,
                    strokeColor:"red"}}],
                strokeColor: "972BC1",
                strokeOpacity: 0.75,
                strokeWeight: 2,
                geodesic: true    //The polylines need to be declared as geodesic. Google Maps API takes care of the maths behind this.
            });
        path.setMap(map);

        var path1 = new google.maps.Polyline(icon_array);
        path1.setMap(map);
    }

});