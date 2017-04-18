<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>LOGIN</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<!-- Bootstrap core CSS -->
<link href="css/jumbotron.css" 
	rel="stylesheet">
<meta charset="UTF-8">
<link href="css/bootstrap.min.css"
	rel="stylesheet">


<!-- Custom styles for this template -->
<link href="css/signin.css" 
	rel="stylesheet">


</head>

<body>

	<div class="container">

		<form action="<c:url value='/login' />" method="POST" id="authForm"
			class="form-signin">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<h3 class="bg-warning" id="error"></h3>
			<h2 class="form-signin-heading">Please sign in</h2>
			<c:if test="${not empty error}">
				<h3 class="bg-warning">${error}</h3>
			</c:if>
			<c:if test="${not empty message}">
				<div>${message}</div>
			</c:if>
			<label for="inputUser" class="sr-only"> User Name</label> <input
				name="username" type="userName" id="inputUser" class="form-control"
				placeholder="Username" required autofocus /> <label
				for="inputPassword" class="sr-only"> Password </label> <input
				id="inputPassword" class="form-control" type="password"
				name="password" placeholder="Password" required />

			<button class="btn btn-lg btn-primary btn-block" type="submit"
				id="submit">LOGIN</button>
			<a href="<c:url value="/register"/>"
				class="btn btn-lg btn-primary btn-block" > Register </a>

		</form>
	</div>
	<!-- /container -->
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div id="ajaxResponse"></div>
			</div>

		</div>
	</div>



	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>


</body>
</html>
