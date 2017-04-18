<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<!--     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/> -->

<title>HOME</title>


<!-- Bootstrap core CSS -->
<link href="<c:url value="css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="css/jumbotron.css" />"
	rel="stylesheet">
<!-- js for validating token -->
<script type="application/javascript" src="js/validateToken.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
	
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<c:url value="/" />">HOME</a> <a
					class="navbar-brand" href="#">Favourites</a> <a
					class="navbar-brand" href="#">Addresses</a>

			</div>
			<div id="navbar" class="navbar-collapse collapse">
				
				<c:url value="/logout" var="logoutUrl" />
				<form id="logout" action="${logoutUrl}" method="post" type="hidden">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<a class="navbar-brand navbar-right" href="javascript:document.getElementById('logout').submit()">LOGOUT</a>
				</c:if>
				<a class="navbar-brand navbar-right" href="<c:url value="Account/info" />">INFO</a>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>${message}</h1>
			<p>This is a test web page for buying stuff</p>
			<p>
				<a class="btn btn-primary btn-lg" href="<c:url value="Shop/products" />" role="button">BUY
					SOMETHING &raquo;</a>
			</p>
		</div>
	</div>

	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-4">
				<h2>Your Basket</h2>
				<p>You can view your basket contents here</p>
				<p>
					<a class="btn btn-default" href="<c:url value="Shop/cart" />" role="button">SHOW &raquo;</a>
				</p>
			</div>
		</div>

		<hr>

		<footer>
			<p>&copy; 2016 Company, Inc.</p>
		</footer>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>

