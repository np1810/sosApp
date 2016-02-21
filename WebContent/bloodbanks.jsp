<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Banks Locator</title>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/custom.css"
	media="screen,projection" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
	<div id="gmap_canvas"></div>
	<div class="actions">
		<div id="btn1" class="button" onclick="mylocation(); return false;">Find Current Location</div>
		<div id="btn2" class="button" onclick="findBlood(); return false;" style="display:none;">Find Blood Banks</div>
	</div>
	<input type="hidden" id="lat" name="lat" value="30.3164945" /> <input
			type="hidden" id="lng" name="lng" value="78.0321918" />
	
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyByTDh_WosPzE3KjFZHVbI7PQFQf_ZEt20&libraries=places"></script>
	<script src="js/bloodbanksjs.js"></script>
</body>
</html>