<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MediCare</title>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/custom.css"
	media="screen,projection" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
	<div id="gmap_canvas"></div>
	<div class="actions">
		<div id="button1 " class="button"
			onclick="mylocation(); return false;">Get My Location</div>
		<div class="button">
			<label for="gmap_where">Location:</label> <input id="gmap_where"
				type="text" name="gmap_where" />
		</div>
		<div id="button2" class="button"
			onclick="findAddress(); return false;">Go To Location</div>
		<div class="button">
			<label for="gmap_keyword">Area (optional):</label> <input
				id="gmap_keyword" type="text" name="gmap_keyword" />
		</div>
		<div class="button" style="display: none;">
			<label for="gmap_type">Type:</label> <select id="gmap_type">
				<option value="hospital">hospital</option>
			</select>
		</div>
		<div class="button">
			<label for="gmap_radius">Radius:</label> <select
				class="browser-default" id="gmap_radius" style="margin-left: 10px;">
				<option value="500">500</option>
				<option value="1000">1000</option>
				<option value="1500">1500</option>
				<option value="5000">5000</option>
			</select>
		</div>
		<input type="hidden" id="lat" name="lat" value="30.3164945" /> <input
			type="hidden" id="lng" name="lng" value="78.0321918" />
		<div id="button3" class="button" onclick="findPlaces(); return false;">Show
			Hospitals</div>
		<div id="button4" class="button" onclick="showPlaces(); return false;">List
			Hospitals</div>
	</div>

	<div id="modal1" class="modal">
		<div class="modal-content"></div>
		<div class="modal-footer">
			<a class="waves-effect waves-green btn-flat modal-action modal-close">Close</a>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?libraries=places"></script>
	<script src="js/medicarejs.js"></script>
</body>
</html>