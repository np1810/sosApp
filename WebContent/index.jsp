<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/custom.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta charset="ISO-8859-1">
<title>Emergency Locator - SOS Help!</title>
</head>
<body>
	<div class="red accent-4 lighten-3 z-depth-2">
		<h1 class="pink-text text-lighten-5 " align="center"
			style="margin-top: 0px;">Emergency Locator - SOS Help!</h1>
		<h5 class="grey lighten-4 grey-text text-darken-1" align="center">We
			Need To Appreciate How Precious Life Is!</h5>
	</div>


	<div id="container center-align">
		<div class="row">
			<div class="col s5 m4 l3 offset-s1 offset-m2 offset-l3 mycard">
				<div class="card hoverable">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="images/medical-service.jpg"
							style="margin-top: 20px; margin-left: 20px; height: 175px; width: 270px;">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">MediCare<i
							class="material-icons right">add</i>
						</span>
						<p>
							<a href="medicare.jsp">Open</a>
						</p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4">About
							MediCare<i class="material-icons right">close</i>
						</span>

						<ul type="disc">
							<li>List hospitals nearby your location within a desired
								radius.</li>
							<li>List hospitals nearby any place.</li>
							<li>Display nearby hospitals on Google Maps</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col s5 m4 l3 offset-s1 offset-m2 mycard">
				<div class="card hoverable">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="images/Blood-Bank.jpg"
							style="margin-top: 20px; margin-left: 20px; height: 175px; width: 270px;">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Blood
							Bank<i class="material-icons right">add</i>
						</span>
						<p>
							<a href="bloodbanks.jsp">Open</a>
						</p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4">About
							Blood Bank<i class="material-icons right">close</i>
						</span>
						<ul type="circle">
							<li>List blood banks nearby your location</li>
							<li>Display result on Google maps for user's convenience.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col s5 m4 l3 offset-s1 offset-m2 offset-l3 mycard">
				<div class="card hoverable">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="images/financial-aid.jpg"
							style="margin-top: 20px; margin-left: 20px; height: 175px; width: 270px;">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Financial
							Aid<i class="material-icons right">add</i>
						</span>
						<p>
							<a href="financialaid.jsp">Open</a>
						</p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4">About
							Financial Aid<i class="material-icons right">close</i>
						</span>
						<ul type="circle">
							<li>If you are affected by disaster and need some financial
								support, you can request for a loan.</li>
							<li>Your request will be recorded and will be provided to
								those who can really help you.</li>
							<li>We are ready to help you anytime.</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col s5 m4 l3 offset-s1 offset-m2 mycard">
				<div class="card hoverable">
					<div class="card-image waves-effect waves-block waves-light">
						<img class="activator" src="images/help.jpg"
							style="margin-top: 20px; margin-left: 20px; height: 175px; width: 270px;">
					</div>
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">Disaster
							Hit SoS<i class="material-icons right">add</i>
						</span>
						<p>
							<a href="sos.jsp">Open</a>
						</p>
					</div>
					<div class="card-reveal">
						<span class="card-title grey-text text-darken-4">About SoS<i
							class="material-icons right">close</i>
						</span>
						<ul type="circle">
							<li>Enter relief centers.</li>
							<li>List relief centers.</li>
							<li>Donation feature.</li>
							<li>Help me button.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="fixed-action-btn right" style="bottom: 45px;">
			<a class="btn-floating modal-trigger btn-large white tooltipped"
				style="padding-top: 5px;" data-position="left" data-delay="100"
				data-tooltip="Related Tweets" data-target="tweets"> <i><img
					src="./images/twitter.png"></i>
			</a>
		</div>
		<div style="margin: 10px 26%;">
			<ul class="collapsible popout" data-collapsible="accordion">
				<li>
					<div class="collapsible-header active">
						<i class="material-icons">filter_drama</i>Made By:
					</div>
					<div class="collapsible-body">
						<p>Amit Phulera, Manthan Jamdagni, Nitin Pathak</p>
					</div>
				</li>
			</ul>
		</div>

	</div>

	<div id="tweets" class="modal modal-fixed-footer">
		<div class="modal-content" id="tscroll">
			<div class="center">
			<h4>Related Tweets</h4>
				<a class="twitter-timeline"
					href="https://twitter.com/hashtag/ChennaiRainsHelp"
					data-widget-id="698440919234715648">#ChennaiRainsHelp Tweets</a>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#"
				class=" modal-action modal-close waves-effect waves-green btn">Close</a>
		</div>

	</div>
	<script>
		!function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
					.test(d.location) ? 'http' : 'https';
			if (!d.getElementById(id)) {
				js = d.createElement(s);
				js.id = id;
				js.src = p + "://platform.twitter.com/widgets.js";
				fjs.parentNode.insertBefore(js, fjs);
			}
		}(document, "script", "twitter-wjs");
	</script>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.modal-trigger').leanModal({
				dismissible : false,
				opacity : .90,
				ready : function() {
					$("#twitter-widget-0").height(($("#tscroll").height() - 50));
					var css = '<style type="text/css">.inline-media{display:none};</style>';
					$('#twitter-widget-0').contents().find("head").append(css);
				},
			});
		});
	</script>
</body>
</html>