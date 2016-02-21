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
<title>Financial Aid</title>
</head>
<body>
	<div class="teal accent-4 lighten-3 z-depth-2">
		<h1 class="pink-text text-lighten-5 " align="center"
			style="margin-top: 0px;">Financial Aid</h1>
		<h5 class="green accent-2 white-text text-darken-1" align="center">Life
			is a Game, Money is how we keep score!</h5>
	</div>

	<div class="col s12 m12 l12"
		style="padding-left: 15%; padding-right: 15%; padding-bottom: 100px; margin-top: 30px;">
		<div class="z-depth-5">
			<form action="addFinancial" method="post" class="col s12">
				<div class="row">
					<div class="input-field col s6">
						<input name="first_name" type="text" class="validate" length=30 required>
						<label for="first_name">First Name</label>
					</div>
					<div class="input-field col s6">
						<input name="last_name" type="text" class="validate" length=30 required>
						<label for="last_name">Last Name</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<input name="email" type="email" class="validate" length=30 required>
						<label for="email">Email</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s9">
						<input name="date" type="date" class="datepicker" required>
						<label class="active" for="date">Birth Date</label>
					</div>
					<div class="input-field col s3" style="margin-top: 10px;">
						<input name="group1" value="m" type="radio" id="test1" checked/> <label
							for="test1">Male</label> <input name="group1" type="radio"
							id="test2" value="f" /> <label for="test2">Female</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<textarea name="purpose" class="materialize-textarea" length=100 required></textarea>
						<label for="textarea1">Purpose of Loan</label>
					</div>
				</div>
				<div class="row center-align">
					<div class="col s12">
						<button class="btn waves-effect waves-light" type="submit"
							name="action" style="margin: 10px;">
							Submit <i class="material-icons right">send</i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div id="submitted" class="modal">
		<div class="modal-content">
			<h4 class="black-text">Form Submitted</h4>
			<br />
			<h5 class="blue-text">Form Submitted Successfully...</h5>
		</div>
		<div class="modal-footer">
			<a href="index.jsp"
				class="waves-effect waves-light btn-flat modal-action modal-close">Close</a>
		</div>
	</div>

	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/materialize.min.js"></script>
	<script type="text/javascript">
		$('.datepicker').pickadate({
			selectMonths : true,
			selectYears : 15
		});
	</script>
</body>
</html>