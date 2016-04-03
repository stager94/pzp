// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require owl/owl.carousel
//= require scroll
//= require turbolinks



    $(document).ready(function() {
    if (page_control.main == true) {
    	smoothScroll.init();
    };
    
      $("#owl-demo").owlCarousel({
     	
          navigation : true, // Show next and prev buttons
          slideSpeed : 300,
          paginationSpeed : 400,
          singleItem:true
     
          // "singleItem:true" is a shortcut for:
          // items : 1, 
          // itemsDesktop : false,
          // itemsDesktopSmall : false,
          // itemsTablet: false,
          // itemsMobile : false
     
      });
     
    });

	function initialize() {
		var map;
	  var latitude = $("#map_canvas").data("latitude");
	  var longitude = parseFloat($("#map_canvas").data("longitude"));
		var position = new google.maps.LatLng(latitude, longitude);
	  var mapOptions = {
	    zoom: 17,
	    center: position,
	    scrollwheel: false
	  };
	  map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
	  addMarker(map, position);
	}

	google.maps.event.addDomListener(window, 'load', initialize);

	var markers = [];
	var image = new google.maps.MarkerImage('img/icon.png');

	function addMarker(map, position) {
	  markers.push(new google.maps.Marker({
	    position: position,
	    raiseOnDrag: false,
	    map: map,
	    draggable: false
	  }));
	}