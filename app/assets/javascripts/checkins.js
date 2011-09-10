function findMe() {
  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      document.getElementById('checkin_latitude').value = position.coords.latitude;
      document.getElementById('checkin_longitude').value = position.coords.longitude;
    }, function() {
      alert('We couldn\'t find your position.');
    });
  } else {
    alert('Your browser doesn\'t support geolocation.');
  }
}