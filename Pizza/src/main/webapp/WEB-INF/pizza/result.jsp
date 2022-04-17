<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Hello Pizza</h1>
<c:choose>
		<c:when test="${!empty pizza}">
			<ul id="resultList">
				<h3>Pizza Created</h3>
				
				<li>Pizza ID: ${pizza.id}</li>
				<li>Name: ${pizza.name}</li>
				<li>Description: ${pizza.description}</li>
				<li>Size: ${pizza.size}</li>
				<li>Crust: ${pizza.crust}</li>
				<li>Cheese: ${pizza.cheese}</li>
				<li>Meat: ${pizza.meat} </li>
				<li>Vegetable: ${pizza.vegetable} </li>
				
				<!-- HIDDEN FIELDS PASSING DATA -->
				
				<form action="update.jsp" method="GET">
					<input type="hidden" name="id" value="${pizza.id}" /> 
					<input type="hidden" name="name" value="${pizza.name}" /> 
					<input type="hidden" name="description" value="${pizza.description}" />
					<input type="hidden" name="size" value="${pizza.size}" />
					<input type="hidden" name="crust" value="${pizza.crust}" /> 
					<input type="hidden" name="cheese" value="${pizza.cheese}" /> 
					<input type="hidden" name="meat" value="${pizza.meat}" /> 
					<input type="hidden" name="vegetable" value="${pizza.vegetable}" /> 
					<input type="submit" value="Edit Pizza" />
				</form>
				
				<form action="delete.do" method="POST">
					<input type="hidden" name="id" value="${pizza.id}" /> 
						 <input type="submit" value="Delete Pizza" />
				</form>

				<!-- KEEP LIST FOREACH EXAMPLE  
				<li>Cast:</li>
				<c:forEach var="a" items="${film.actors}">
					<ul>
						<li>${a.firstName}  ${a.lastName}</li>
					</ul>
				</c:forEach>
				-->

			</ul>
		</c:when>

</c:choose>
</body>
</html>