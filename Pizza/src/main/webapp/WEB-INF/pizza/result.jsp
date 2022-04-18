<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../nav.jsp"/>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Results</title>

</head>
<body>

	<c:if test="${pageContext.request.method=='POST' }">
		<p>${pizza.name} ID: (${pizza.id}) created or updated.</p>
	</c:if>

	<c:choose>
		<c:when test="${!empty pizza}">
			<ul id=return>
				<li>Pizza ID: ${pizza.id}</li>
				<li>Name: ${pizza.name}</li>
				<li>Description: ${pizza.description}</li>
				<li>Size: ${pizza.size}</li>
				<li>Crust: ${pizza.crust}</li>
				<li>Cheese: ${pizza.cheese}</li>
				<li>Meat: ${pizza.meat}</li>
				<li>Vegetable: ${pizza.vegetable}</li>
			</ul>
				<form action="goToUpdate.do" method="POST">
					<input type="hidden" name="pizzaId" value="${pizza.id}" /> 
					<input type="submit" value="Edit Pizza" />
				</form>
				<form action="destroy.do" method="POST">
					<input type="hidden" name="id" value="${pizza.id}" /> 
					<input type="submit" value="Delete Pizza" />
			</form>
		</c:when>
		<c:when test="${!empty pizzas}">
			<c:forEach items="${pizzas}" var ="p">
			
			<ul>
				<li>Pizza ID: ${p.id}</li>
				<li>Name: ${p.name}</li>
				<li>Description: ${p.description}</li>
				<li>Size: ${p.size}</li>
				<li>Crust: ${p.crust}</li>
				<li>Cheese: ${p.cheese}</li>
				<li>Meat: ${p.meat}</li>
				<li>Vegetable: ${p.vegetable}</li>
			</ul>
			
					<form action="goToUpdate.do" method="POST">
						<input type="hidden" name="pizzaId" value="${p.id}" /> 
						<input type="submit" value="Edit Pizza" />
					</form>
					
					<form action="destroy.do" method="POST">
						<input type="hidden" name="id" value="${p.id}" /> 
						<input type="submit" value="Delete Pizza" />
					</form>
				
			</c:forEach>

		</c:when>
		<c:otherwise>
			<h3>Error.</h3>
		</c:otherwise>
	</c:choose>

</body>
</html>