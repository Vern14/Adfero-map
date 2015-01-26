<!DOCTYPE html>
  <head>
  <!--Vernon Zidana-->
  <meta charset="UTF-8">
<title>Adfero Exam</title>
  
  <style>
  b{color: black;}
 #sev{width:320px;}
 th{text-align:left; font-size: 14px; background:#f2f2f2;}
 a{color:black;}
 table{width:100%; font-size: 12px;  }
 iframe{width:100%; height: 300px;  }
 #tooltipcontent{margin-left:15px; margin-bottom:15px; height: 500px; overflow:hidden; color: black; width:335px; overflowX:hidden; }
 #map_markers_div{ margin: 10px; height: 700px; width: 82%;}
  </style>
  
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
	

      google.load("visualization", "1", {packages:["map"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() { 

		var data = google.visualization.arrayToDataTable([
          
		  ['Lat', 'Long', 'Name'],
		  //php here
		  // To populate the map with markers and content from the database
            <?php
// Create connection
$myconnection = new mysqli("localhost", "root", "", "maps");
// Retrieve information from the database
$myinformation = $myconnection->query("SELECT * FROM map");

		 // output data of each record
		 while($record = $myinformation->fetch_assoc()) {
			$image=$record["image"];
			$text=$record["text"];
			$lat=$record["lat"];
			$link=$record["link"];
			$linkname=$record["linkname"];
			$name=$record["name"];
			$long=$record["long"];
			print "[".$lat.",". $long.","."'<div id=".'tooltipcontent'."><h4 align=center>".$name."</h4><img src=$image  style=width:344px;height:228px><br><b>About</b><br><div id=sev>$text</div><br><b>Website</b><br><a target=_blank href=$link>$linkname</a><br><br><table><tr><th>Name</th><th>Latitude</th><th>Longitude</th> </tr><tr><td>$name</td><td>$lat</td><td >$long</td></tr></table></div>'"."],";
		 }	  
	
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