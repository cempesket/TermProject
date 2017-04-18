<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="../css/jumbotron.css" rel="stylesheet">
<meta charset="UTF-8">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<title>PAYMENT</title>
</head>
<body>

	<div class="jumbotron">
		<div class="container">



			<form:form method="POST" action="Shop/payment"
				modelAttribute="payment">
				<c:if test="${not empty nameError}">
					<h3 class="bg-warning">${nameError}</h3>
				</c:if>
				<c:if test="${not empty emailError}">
					<h3 class="bg-warning">${emailError}</h3>
				</c:if>

				<div class="form-group">
					<form:label path="cardNumber" for="exampleInputEmail1">Credit Card Number</form:label>

					<form:input path="cardNumber" type='cardNumber'
						class='form-control' id='exampleInputUser1'
						aria-describedby='userHelp' placeholder='Enter Credit Card Number'
						required="true" maxlength="16"></form:input>

				</div>
				<div class="form-group">
					<form:label path="name">Name</form:label>
					<form:input path="name" 
						class='form-control' id='exampleInputUser1'
						placeholder='Enter name on Credit Card' required="true"></form:input>
				</div>
				<div class="form-group">
					<form:label path="expirationDate">Expiration Date</form:label>
					<form:input path="expirationDate" class='form-control'
						placeholder='Enter Expiration Date' required="true" maxlength="4"></form:input>
					
				</div>

				<div class="form-group">
					<form:label path="cvc">CVC</form:label>
					<form:input path="cvc" class='form-control'
						placeholder='Enter CVC' required="true" maxlength="3"></form:input>
					
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