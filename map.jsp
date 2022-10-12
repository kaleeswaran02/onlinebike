<!DOCTYPE html>
<html>
   
   <head>
      <script src = "https://maps.googleapis.com/maps/api/js"></script>
      
      <script>
         function loadMap() {
			
            var marker = new google.maps.Marker({
  position: coordinates,
  map: map,
  icon: {
    url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
    labelOrigin: new google.maps.Point(75, 32),
    size: new google.maps.Size(32,32),
    anchor: new google.maps.Point(16,32)
  },
  label: {
    text: "5409 Madison St",
    color: "#C70E20",
    fontWeight: "bold"
  }
});
         }
      </script>
      
   </head>
   
   <body onload = "loadMap()">
      <div id = "sample" style = "width:580px; height:400px;"></div>
   </body>
   
</html>