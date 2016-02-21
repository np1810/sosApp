var geocoder;
var map;
var centerPos;
var markers = Array();
var infos = Array();

$(window).resize(function() {
	$("#gmap_canvas").width($(window).width());
	$("#gmap_canvas").height($(window).height());
	if (map) map.setCenter(centerPos);
});

$(document).ready(function() {
	$("#gmap_canvas").width($(window).width());
	$("#gmap_canvas").height($(window).height());
	if (map) map.setCenter(centerPos);
});

function initialize() {
	// prepare Geocoder
	geocoder = new google.maps.Geocoder();

	// set initial position (DEHRADUN)
	var myLatlng = new google.maps.LatLng(30.3164945, 78.0321918);

	var myOptions = { // default map options
		zoom : 14,
		center : myLatlng,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
}


//clear overlays function
function clearOverlays() {
	if (markers) {
		for (i in markers) {
			markers[i].setMap(null);
		}
		markers = [];
		infos = [];
	}
}

//clear infos function
function clearInfos() {
	if (infos) {
		for (i in infos) {
			if (infos[i].getMap()) {
				infos[i].close();
			}
		}
	}
}


function mylocation() {
	var infoWindow = new google.maps.InfoWindow({
		map : map
	});
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(position) {
			var pos = {
				lat : position.coords.latitude,
				lng : position.coords.longitude
			};
			infoWindow.setPosition(pos);
			infoWindow.setContent('Location found!');
			centerPos = pos;
			map.setCenter(centerPos);
			var lati = position.coords.latitude;
			var longi = position.coords.longitude;
			document.getElementById('lat').value = lati;
			document.getElementById('lng').value = longi;
			$("#btn1").hide();
			$("#btn2").show();
			var addrMarker = new google.maps.Marker({
				position : pos,
				map : map,
				title : pos.formatted_address
			});

		}, function() {
			handleLocationError(true, infoWindow, map.getCenter());
		});
	} else {
		// Browser doesn't support Geolocation
		handleLocationError(false, infoWindow, map.getCenter());
	}
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	infoWindow.setPosition(pos);
	infoWindow
			.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.'
					: 'Error: Your browser doesn\'t support geolocation.');
}

function findBlood()
{		
	//mylocation();
	var lat = document.getElementById('lat').value;
	var lng = document.getElementById('lng').value;
	var curloc = new google.maps.LatLng(lat,lng);
    var request = {
    		location: curloc,
    		radius: '2500',
    		query: 'bloodbank'
    };

  service = new google.maps.places.PlacesService(map);
  service.textSearch(request, callback);	
}
	function callback(results, status) {
	  if (status == google.maps.places.PlacesServiceStatus.OK) {
		  if (results[0]) {
			  centerPos = results[0].geometry.location;
			  map.setCenter(centerPos);
			  $("#btn2").text("Blood Banks Found!");
		  }
	    for (var i = 0; i < results.length; i++) {
	      var place = results[i];
	      createMarker(results[i]);
	    }
	  }
	}


function createMarker(obj) {

	// prepare new Marker object
	var mark = new google.maps.Marker({
		position : obj.geometry.location,
		map : map,
		title : obj.name
	});
	markers.push(mark);

	// prepare info window
	var infowindow = new google.maps.InfoWindow({
		content : '<img src="' + obj.icon + '" /><font style="color:#000;">'
				+ obj.name + '<br />Rating: ' + obj.rating + '<br />Vicinity: '
				+ obj.vicinity + '</font>'
	});

	// add event handler to current marker
	google.maps.event.addListener(mark, 'click', function() {
		clearInfos();
		infowindow.open(map, mark);
	});
	infos.push(infowindow);
}


//initialization
google.maps.event.addDomListener(window, 'load', initialize);
