function initialize() {
  var myLatlng = new google.maps.LatLng(-34.397, 150.644);
var myOptions = {
  center: myLatlng,
  mapTypeId: google.maps.MapTypeId.ROADMAP,
  zoom: 8,
  disableDefaultUI: true,
  navigationControl: true,
  scrollwheel: false,
  locale: "en_AU"
};
var map = new google.maps.Map(document.getElementById("google-map"), myOptions);
}
