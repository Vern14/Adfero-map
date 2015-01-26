<?php
/* Note: Since this code successfully connect to the database and we have populated our database, 
         I omitted some error handling(e.g. if the connection wasn't successful, if the database rows were not populated etc) to keep it simple 
*/
		// Create connection
		$myconnection = new mysqli("localhost", "root", "", "maps");
		// Retrieve information from the database
		$myinformation = $myconnection->query("SELECT * FROM map");

				 // output data of each record
				 while($record = $myinformation->fetch_assoc()) {
					$image=$record["image"];
					$text=$record["text"];
					$lat=$record["lat"]; //latitude
					$link=$record["link"];
					$linkname=$record["linkname"];
					$name=$record["name"];
					$long=$record["long"]; //longitude
					print "[".$lat.",". $long.","."'<div id=".'tooltipcontent'."><h4 align=center>".$name."</h4><img src=$image  style=width:344px;height:228px><br><b>About</b><br><div id=sev>$text</div><br><b>Website</b><br><a target=_blank href=$link>$linkname</a><br><br><table><tr><th>Name</th><th>Latitude</th><th>Longitude</th> </tr><tr><td>$name</td><td>$lat</td><td >$long</td></tr></table></div>'"."],";
				 }				
?>  
