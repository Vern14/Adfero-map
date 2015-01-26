<!DOCTYPE html>
  <head>
	<!--Vernon Zidana-->
	<meta charset="UTF-8">
	<title>Adfero Exam</title>
    <link rel="stylesheet" type="text/css" href="mapstyle.css">  
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
		  google.load("visualization", "1", {packages:["map"]});
		  google.setOnLoadCallback(drawChart);
		  function drawChart() {
			var data = google.visualization.arrayToDataTable
				([
					['Lat', 'Long', 'Name'],
				  //php here
				  // To populate the map with markers and dynamically load content from the database without refreshing the page		  
					<?php  
					require 'markersAndContent.php';			
					?>  		  
				]);
		
			var options = {
			
			  icons: {
				default: {
				  normal: 'http://icons.iconarchive.com/icons/icons-land/vista-map-markers/48/Map-Marker-Ball-Azure-icon.png',
				  selected: 'http://icons.iconarchive.com/icons/icons-land/vista-map-markers/48/Map-Marker-Ball-Right-Azure-icon.png'
				  
				}
			  }
			};

			var map = new google.visualization.Map(document.getElementById('map_markers_div'));
			map.draw(data, {showTip: true, mapType: 'normal', useMapTypeControl:true, enableScrollWheel:true});	 
			}		
    </script>
  </head>  

  <body>
		<div id="map_markers_div"></div>
  </body>
</html>
