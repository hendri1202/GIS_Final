<!DOCTYPE html>
<html>

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Fintel Maps</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Carousel-Hero.css">
    <link rel="stylesheet" href="assets/css/Footer-with-social-media-icons.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="assets/css/styles.css">
   
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-md" id="app-navbar">
        <div class="container-fluid"><a class="navbar-brand" href="index.php"><i class="icon ion-android-locate" id="brand-logo"> ~ Fintel</i></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="index.php"><strong>Home</strong></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="maps.php" style="color: #ffffff;"><strong>Map</strong></a></li>
                    <li class="nav-item" role="presentation"></li>
                </ul>
        </div>
        </div>
    </nav>
<!-- FILE MAP -->
<script type='text/javascript' src='https://www.bing.com/api/maps/mapcontrol?callback=GetMap&key=[ArChgKl-nCWhIXarPh_yhklm8giq3I36a1RM7Vo6XitvtJaqtwejkXuZJp_hxLY-]' async defer></script>
    
    <script type='text/javascript'>
    function GetMap()
    {
    var map = new Microsoft.Maps.Map('#myMap', {
    credentials: 'ArChgKl-nCWhIXarPh_yhklm8giq3I36a1RM7Vo6XitvtJaqtwejkXuZJp_hxLY-',
    center: new Microsoft.Maps.Location(3.582983, 98.682927),
    mapTypeId: Microsoft.Maps.MapTypeId.road,
    zoom: 16,
    });
    
 downloadUrl('/marker.php', function(data) {
            var xml = data.responseXML;
            var markers = xml.documentElement.getElementsByTagName('marker');
            Array.prototype.forEach.call(markers, function(markerElem) {
              var id = markerElem.getAttribute('id');
              var title = markerElem.getAttribute('title');
              var address = markerElem.getAttribute('address');
              var telp =markerElem.getAttribute('telp');
              var fasilitas =markerElem.getAttribute('fasilitas')
              var type = markerElem.getAttribute('type');
              var point = new Microsoft.Maps.Location(
                  parseFloat(markerElem.getAttribute('lat')),
                  parseFloat(markerElem.getAttribute('lng')));
                var infobox = new Microsoft.Maps.Infobox;
              var infowincontent = document.createElement('div');
              var strong = document.createElement('strong');
              strong.textContent = title
              infowincontent.appendChild(strong);
              infowincontent.appendChild(document.createElement('br'));

              var text = document.createElement('text');
              text.textContent = address
              infowincontent.appendChild(text);
              var marker = new Microsoft.Maps.Pushpin(point);
              Microsoft.Maps.Events.addHandler(marker, 'mouseover', displayInfobox);
              Microsoft.Maps.Events.addHandler(marker, 'mouseout', closeInfobox);
              Microsoft.Maps.Events.addHandler(infobox, 'mouseleave', closeInfobox);
               map.entities.push(marker);
        function displayInfobox(e) {
            var pin = e.target;
             infobox.setLocation(pin.getLocation());
             pin.description = '<h3>'+ title +'</h3>'+ 'Alamat:' + address + '<br>' + 'Telp: ' + telp + '<br>' + 'Fasilitas: ' + fasilitas +'<br>' + 'Jenis hotel:'+ type;
            infobox.setOptions({
                title:pin.name,
                description: pin.description,
                visible: true
            });
            infobox.setMap(map);
    }
        function closeInfobox() {
        infobox.setOptions({ visible: false });
    }
            });
            
          });
          map.setOptions({
    maxZoom: 15,
    minZoom: 14
});
        }
        function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

 request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }

      function doNothing() {}
    </script>
</head>
<body>
    <div id="myMap" style="position:relative;width:100%;height:500px;"></div>
</body>
</html>
<!-- AKHIR FILE MAP -->
    <footer id="footerpad">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-8 mx-auto">
                    <ul class="list-inline text-center">
                        <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-facebook fa-stack-1x fa-inverse"></i></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-twitter fa-stack-1x fa-inverse"></i></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-instagram fa-stack-1x fa-inverse"></i></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-pinterest fa-stack-1x fa-inverse"></i></span></a></li>
                    </ul><footer class="text-center">
          <div class="credits">
            <span>©️</span>
            <span class="current-year">2020</span> Made with 
                <i style="color: red" class="fa fa-heart heart"
              alt="love">
                </i>
                &
                <i style="color: brown" class="fa fa-coffee"></i> 
                by 
                <a href="https://hendripj.web.id" target="_blank">Hendri Putra Jaya & Martini
                </a>
          </div>
</footer></div>
            </div>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/Footer---Made-with-love.js"></script>
</body>

</html>