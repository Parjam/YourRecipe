$(document).ready(function() {
google.maps.event.addDomListener(window, 'load', initialize);
});

function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(37.7833, -122.4167),
    zoom: 12
  };
  var map = new google.maps.Map(document.getElementById("map-canvas"),
    mapOptions);
}
