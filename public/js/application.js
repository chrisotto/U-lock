$(document).ready(function() {
});

// https://developers.google.com/maps/documentation/javascript/geocoding#GeocodingStatusCodes

var geocoder;
var map;
function initMap() {
  geocoder = new google.maps.Geocoder;
  var latlng = new google.maps.LatLng(37.7749, -122.4194);
  var mapOptions = {
    zoom: 11,
    center: latlng
  }
  map = new google.maps.Map(document.getElementById("map"), mapOptions);
}

function redrawMap() {
  var address = document.getElementById("address").value;
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
      });
    } else {
      alert("Geocode was not successful for the following reason: " + status);
    }
  });
}
