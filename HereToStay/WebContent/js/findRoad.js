
 

function findMap()
{
	
	init();

}

var map;
var infowindow;

function callback(results, status) {
	  if (status == google.maps.places.PlacesServiceStatus.OK) {
	    for (var i = 0; i < results.length; i++) {
	      createMarker(results[i]);
	    }
	  }
	}
function createMarker(place) {
	  
	  var marker = new google.maps.Marker({
	    map: map,
	    position: place.geometry.location
	  });

	  google.maps.event.addListener(marker, 'click', function() {
	    infowindow.setContent(place.name);
	    infowindow.open(map, this);
	  });
	}


function init() {

	
//	var mylat = '37.477164';
//	 var mylong ='126.884017';   
//
//	 var mapOptions = {
//				zoom:13,
//				disableDefaultUI: true,
//				zoomControl: true,
//				zoomControlOptions: {
//					style: google.maps.ZoomControlStyle.LARGE,
//					position: google.maps.ControlPosition.LEFT_CENTER
//				},
//				center: new google.maps.LatLng(mylat, mylong), // New York 
//			};
//	 
//	 var mapElement = document.getElementById('map1');
//	  map = new google.maps.Map(mapElement, mapOptions);
//	 google.maps.event.addDomListener(window, 'resize', init);
//	google.maps.event.addListenerOnce(map, 'idle', function(){
//			var place = new google.maps.LatLng(37.476708, 126.885713);  
//			var image = new google.maps.MarkerImage('/img/map.png',      
//					new google.maps.Size(19, 29),      
//					new google.maps.Point(0,0),      
//					new google.maps.Point(0, 32));   
//			var marker = new google.maps.Marker({
//				map:map,
//				icon: image, 
//				draggable:false,
//				animation: google.maps.Animation.DROP,
//				position: place
//			});			
//		});	 
//	  
//	infowindow = new google.maps.InfoWindow();
//   var service = new google.maps.places.PlacesService(map);
//   service.nearbySearch({
//     location: new google.maps.LatLng(mylat, mylong),
//     radius: 10000,
//     type: ['store']
//   }, callback);
	  

	 var mylat = '37.477164';
    var mylong ='126.884017';               
	var mapOptions = {
		zoom: 13,
		disableDefaultUI: true,
		zoomControl: true,
		zoomControlOptions: {
			style: google.maps.ZoomControlStyle.LARGE,
			position: google.maps.ControlPosition.LEFT_CENTER
		},
		center: new google.maps.LatLng(mylat, mylong), // New York 
	};
	var mapElement = document.getElementById('map1');
	var map = new google.maps.Map(mapElement, mapOptions);
	google.maps.event.addDomListener(window, 'resize', init);
	google.maps.event.addListenerOnce(map, 'idle', function(){
		var place = new google.maps.LatLng(37.476708, 126.885713);  
		var image = new google.maps.MarkerImage('/img/map.png',      
		new google.maps.Size(19, 29),      
		new google.maps.Point(0,0),      
		new google.maps.Point(0, 32));  
		var marker = new google.maps.Marker({
			map:map,
			icon: image, 
			draggable:false,
			animation: google.maps.Animation.DROP,
			position: place
		}); 
	
		
	});	 
	 
	google.maps.event.trigger(map, 'resize'); 
	
	
}

