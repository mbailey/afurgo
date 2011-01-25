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

    FB.api({
    method: 'fql.query',
    query: 'SELECT share_count, like_count, comment_count, total_count FROM link_stat WHERE url="http://afurgo.com"'
    }, function(response){ //callback
    $('#share_count').html(response[0].share_count).show();
    });

  updateShareCount();

}
