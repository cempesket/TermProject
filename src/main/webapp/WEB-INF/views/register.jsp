<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="css/jumbotron.css" rel="stylesheet">
<meta charset="UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>REGISTER</title>
</head>
<body>

	<div class="jumbotron">
		<div class="container">



			<form:form method="POST" action="Account/submit"
				modelAttribute="account">
				<c:if test="${not empty nameError}">
					<h3 class="bg-warning">${nameError}</h3>
				</c:if>
				<c:if test="${not empty emailError}">
					<h3 class="bg-warning">${emailError}</h3>
				</c:if>

				<div class="form-group">
					<form:label path="user.userName" for="exampleInputEmail1">User Name</form:label>

					<form:input path="user.userName" type='userName'
						class='form-control' id='exampleInputUser1'
						aria-describedby='userHelp' placeholder='Enter username'
						required="true"></form:input>

				</div>
				<div class="form-group">
					<form:label path="user.password" for="exampleInputPassword1">Password</form:label>
					<form:input path="user.password" type='password'
						class='form-control' id='exampleInputPassword1'
						placeholder='Password' required="true"></form:input>
				</div>
				<div class="form-group">
					<form:label path="email" for="exampleInputEmail1">Email</form:label>
					<form:input path="email" type='email' class='form-control'
						id='exampleInputEmail1' aria-describedby='emailHelp'
						placeholder='Enter email' required="true"></form:input>
					<small id="emailHelp" class="form-text text-muted">We'll
						never share your email with anyone else. </small>
				</div>

				<div class="form-group">
					<form:label path="address" for="exampleTextarea">Address</form:label>
					<form:textarea path="address" class='form-control'
						id='exampleTextarea' rows='3'></form:textarea>
				</div>

				<button type="submit" value="Submit" class="btn btn-primary">Submit</button>

			</form:form>
		</div>
	</div>
	<div class="container">
		<footer>
			<p>&copy; 2016 Company, Inc.</p>
		</footer>
	</div>


</body>
</html>