<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SoS</title>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/custom.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<div class="row ">
		<div class="col s12 m4 offset-m2">
			<div class="card small black-text grey lighten-4 hoverable">
				<div class="card-content ">
					<span class="card-title black-text">Add Relief Center</span>
					<p>If you are aware of any help centers nearby your place, then
						please help us in helping someone</p>
				</div>
				<div class="card-action teal white-text">
					<a style="cursor: pointer;" id="enterform">Add Relief Center</a>
				</div>
			</div>
		</div>

		<div class="col s12 m4">
			<div class="card small black-text grey lighten-4 hoverable">
				<div class="card-content ">
					<span class="card-title black-text">Search Relief Centers</span>
					<p>If you have been affected with disasters and searching for
						relief centers</p>
				</div>
				<div class="card-action teal white-text">
					<a style="cursor: pointer;" id="searchall">Search Relief Centers</a>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col s12 m4 offset-m2 ">
			<div class="card small black-text hoverable grey lighten-4">
				<div class="card-content ">
					<span class="card-title black-text">Donate</span>
					<p>Please help us by donating a bit from your immense wealth,
						you know a glass from an ocean will not affect it's volume</p>
				</div>
				<div class="card-action teal white-text">
					<a style="cursor: pointer;" id="donation">Donate</a>
				</div>
			</div>
		</div>


		<div class="col s12 m4">
			<div class="card small black-text hoverable grey lighten-4">
				<div class="card-content ">
					<span class="card-title black-text">Find Help</span>
					<p>In danger?</p>
					<p>Click It... You will be provided with immediate support</p>
				</div>
				<div class="card-action teal white-text">
					<a style="cursor: pointer;" id="helpme">Find Help</a>
				</div>
			</div>
		</div>
	</div>

	<div id="donate" class="modal modal-fixed-footer">
		<form class="col s12" method="post" action="addAid">
			<div class="modal-content">
				<h4 class="black-text">Donate Us A Bit</h4>
				<div class="row">
					<div class="row">
						<div class="input-field col s6">
							<input id="first_name" name="fname" type="text" class="validate" length=15 required>
							<label for="first_name">First Name</label>
						</div>
						<div class="input-field col s6">
							<input id="last_name" type="text" name="lname" class="validate" length=15 required>
							<label for="last_name">Last Name</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="amount" type="text" class="validate" name="amount" length=20 required>
							<label for="amount">Money or Things</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="textarea1" type="text" class="validate" name="address" length=60 required>
							<label for="textarea1">Your Address</label>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="submit" class="waves-effect waves-light btn">Submit</button>
			</div>
		</form>
	</div>

	<div id="enter" class="modal modal-fixed-footer">
		<form id="subForm" class="col s12" method="post" action="addControl">
			<div class="modal-content">
				<h4 class="black-text">Add Relief Center</h4>
				<div class="row">
					<div class="row">
						<div class="input-field col s6">
							<input id="place" name="place" type="text" class="validate" length=50 required>
							<label for="place">Relief Center Name</label>
						</div>
						<div class="input-field col s3">
							<input id="pincode" name="pincode" type="text" class="validate" length=10 required>
							<label for="pincode">Pincode</label>
						</div>
						<div class="input-field col s3">
							<input class="with-gap" name="type" type="radio" id="type1" value="SELF" checked/>
      						<label for="type1">SELF</label>
      						<input class="with-gap" name="type" type="radio" id="type2" value="GOVT" />
      						<label for="type2">GOVT</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="address" type="text" class="validate" name="address" length=50 required>
							<label for="address">Center Address with Contact Number</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="amount" type="text" class="validate" name="items" length=50 required>
							<label for="amount">Items Available</label>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="submit" class="waves-effect waves-light btn">Submit</button>
			</div>
		</form>
	</div>

	<div id="help" class="modal modal-fixed-footer">
		<div class="modal-content">
			<h4 class="black-text">Need Help, but No Internet?</h4>
			<h5 class="black-text">SAVE this number to SECURE your Future!</h5><h6></h6>
			<h5 class="indigo-text"><i class="material-icons left">&#xE0B0;</i> +447400077979 </h5>
			<h5 class="blue-text">SMS on this number to find RELIEF Centers and help will reach your address ASAP...</h5>
			<h5 class="cyan-text">SMS, RELIEF <i>&lt;your pincode&gt;</i> <i>&lt;your address&gt;</i></h5>
			<h5 class="teal-text">Example: <b>RELIEF 248001 39/11 Canal Road, Jakhan</b></h5>
			<p class="red-text">
				<b>*NOTE:</b> This feature <b>CURRENTLY</b> works only for <b>Twilio
					Verified Numbers</b> because our Twilio Trial Account <b>cannot
					reply</b> to every number. - <a target="_blank" href="https://www.twilio.com/help/faq/twilio-basics/how-does-twilios-free-trial-work">more info here</a>
			</p>
		</div>
		<div class="modal-footer">
			<button
				class="waves-effect waves-light btn modal-action modal-close">Close</button>
		</div>
	</div>

	<div id="search" class="modal modal-fixed-footer">
		<div class="modal-content">
			<h4 class="black-text">Relief Centers</h4>
			<ul class="collection"></ul>
		</div>
		<div class="modal-footer">
			<a class="waves-effect waves-green btn modal-action modal-close">Close</a>
		</div>
	</div>
	
	<div id="loading" class="modal">
	<br/>
		<div class="modal-content center-align">
			<div class="preloader-wrapper big active">
			    <div class="spinner-layer spinner-green-only">
			      <div class="circle-clipper left">
			        <div class="circle"></div>
			      </div><div class="gap-patch">
			        <div class="circle"></div>
			      </div><div class="circle-clipper right">
			        <div class="circle"></div>
			      </div>
			    </div>
			</div>
		</div>
	<br/>
	</div>	

	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript">
		$("#donation").on('click', function() {
			$('#donate').openModal();
		});
		$("#enterform").on('click', function() {
			$('#enter').openModal();
		});
		$("#helpme").on('click', function() {
			$('#help').openModal();
		});
		$("#searchall").on('click', function() {
			$('.collection').html('');
			$("#loading").openModal();
			$.get("getControl", function(data, status) {
				$.each(data.places, function (i, d) {
					$('.collection').append(
							'<li class="collection-item avatar"><h3 style="text-align: center; margin-top: 5px;" class="circle">' + (i+1)
							+ '</h3><span class="title"><b>Center Name:</b> ' + d.place + ' - ' + d.type + ' - PIN: ' + d.pincode + '</span>'
									+ '<p><b>Address:</b> ' + d.address +'</p>'
									+ '<p><b>Facilities Available:</b> ' + d.items + '</p></li>');

                });
				$("#loading").closeModal();
				$('#search').openModal();
		    });
		});
	</script>
</body>

</html>